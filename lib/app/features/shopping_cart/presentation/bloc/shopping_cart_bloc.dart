import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/distributor/domain/entity/distributor_entity.dart';
import 'package:hlshop/app/features/product/domain/entity/product_entity.dart';
import 'package:hlshop/app/features/shopping_cart/seft.dart';

part 'shopping_cart_bloc.freezed.dart';
part 'shopping_cart_event.dart';
part 'shopping_cart_state.dart';

class ShoppingCartBloc extends Bloc<ShoppingCartEvent, ShoppingCartState> {
  ShoppingCartBloc() : super(const ShoppingCartState()) {
    on<_ShoppingCartInitialEvent>(_onInitial);
    on<_ShoppingCartFetchEvent>(_onFetch);
    on<_ShoppingCartRefeshEvent>(_onRefresh);
    on<_ShoppingCartAddItemEvent>(_onAddItem);
    on<_ShoppingCartUpdateItemEvent>(_onUpdateItem);
    on<_ShoppingCartRemoveItemEvent>(_onRemoveItem);
    on<_ShoppingCartToggleItemEvent>(_onToggleCartItem);
    on<_ShoppingCartToggleSellerEvent>(_onToggleSeller);
  }

  final ShoppingCartRepo _repo = getIt();

  FutureOr<void> _onRefresh(
    _ShoppingCartRefeshEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
    await _refreshData(emit);
  }

  Future<void> _refreshData(Emitter<ShoppingCartState> emit) async {
    final shoppingCartList = await _repo.getShoppingCartList();
    emit(
      state.copyWith(
        status: const ApiStatus.done(),
        itemGroups: shoppingCartList,
        selectedCartItemIds: {},
      ),
    );
  }

  Future<void> _fetchData(Emitter<ShoppingCartState> emit) async {
    final shoppingCartList = await _repo.getShoppingCartList();

    emit(
      state.copyWith(
        status: const ApiStatus.done(),
        itemGroups: shoppingCartList,
      ),
    );
  }

  FutureOr<void> _onInitial(
    _ShoppingCartInitialEvent event,
    Emitter<ShoppingCartState> emit,
  ) {
    emit(state.copyWith(status: state.status.toPending()));
    _fetchData(emit);
  }

  Future<FutureOr<void>> _onFetch(
    _ShoppingCartFetchEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
    emit(state.copyWith(status: state.status.toPending()));
    await _fetchData(emit);
  }

  FutureOr<void> _onAddItem(
    _ShoppingCartAddItemEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
    emit(state.copyWith(itemStatus: state.itemStatus.toPending()));
    final item = event.item;
    await _repo.addShoppingCartItem(
      item: item,
      selectedVariant: event.selectedVariant,
      quantity: event.quantity,
    );
    await _fetchData(emit);
    emit(state.copyWith(itemStatus: const ApiStatus.done()));
  }

  FutureOr<void> _onRemoveItem(
    _ShoppingCartRemoveItemEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
    emit(state.copyWith(status: state.status.toPending()));
    final item = event.cartItem;
    await _repo.removeShoppingCartItem(
      cartItem: item,
    );
    await _fetchData(emit);
  }

  FutureOr<void> _onUpdateItem(
    _ShoppingCartUpdateItemEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
    final item = event.cartItem;
    emit(state.copyWith(status: state.status.toPending()));
    await _repo.updateShoppingCartItem(
      cartItem: item,
      quantity: event.quantity,
    );
    await _fetchData(emit);
  }

  int get totalQuantity {
    return state.itemGroups.fold<int>(
      0,
      (previousValue, element) =>
          previousValue + element.productCartList.length,
    );
  }

  FutureOr<void> _onToggleCartItem(
    _ShoppingCartToggleItemEvent event,
    Emitter<ShoppingCartState> emit,
  ) {
    final itemId = event.cartItem.id;
    if (itemId == null) {
      return null;
    }
    final selectedCartItemIdsRs = {...state.selectedCartItemIds};

    final isSelected = event.selected ?? isCartItemIdSelected(itemId);
    if (isSelected) {
      selectedCartItemIdsRs.remove(itemId);
    } else {
      selectedCartItemIdsRs.add(itemId);
    }

    emit(
      state.copyWith(
        selectedCartItemIds: selectedCartItemIdsRs,
      ),
    );
  }

  FutureOr<void> _onToggleSeller(
    _ShoppingCartToggleSellerEvent event,
    Emitter<ShoppingCartState> emit,
  ) {
    final distributorId = event.distributorEntity.id;
    if (distributorId == null) {
      return null;
    }

    final sellerItemIds = getSellerGroupCartItemsId(distributorId);
    if (sellerItemIds.isEmpty) {
      return null;
    }

    final selectedCartItemIdsRs = {...state.selectedCartItemIds};
    final isSelected =
        event.selected ?? isSellerSelected(sellerId: distributorId);
    if (isSelected) {
      selectedCartItemIdsRs.removeAll(sellerItemIds);
    } else {
      selectedCartItemIdsRs.addAll(sellerItemIds);
    }
    emit(
      state.copyWith(
        selectedCartItemIds: selectedCartItemIdsRs,
      ),
    );
  }

  PriceUnit? getTotalPrice() {
    final selectedItemsList = getSelectedItemsList();
    final totalPrice = selectedItemsList.fold<PriceUnit>(
      PriceUnit.zero,
      (previousValue, element) {
        return previousValue +
            element.productCartList.fold<PriceUnit>(
              PriceUnit.zero,
              (previousValue, element) {
                return previousValue +
                    (element.variant
                            ?.getPrice()
                            .timesQuantity(element.quantity) ??
                        PriceUnit.zero);
              },
            );
      },
    );

    return totalPrice;
  }

  List<ShoppingCartItemGroupEntity> getSelectedItemsList() {
    return state.itemGroups
        .map(
          (item) => item.copyWith(
            productCartList: item.productCartList
                .where((element) => isCartItemIdSelected(element.id))
                .toList(),
          ),
        )
        .toList();
  }

  bool isCartItemSelected(ShoppingCartItemEntity item) {
    return isCartItemIdSelected(item.id);
  }

  bool isCartItemIdSelected(String? id) {
    if (id == null) {
      return false;
    }
    return state.selectedCartItemIds.contains(id);
  }

  bool isSellerSelected({String? sellerId}) {
    if (sellerId == null) {
      return false;
    }
    final sellerGroupCartItems = getSellerGroupCartItems(sellerId);
    return sellerGroupCartItems?.productCartList.every((element) {
          return isCartItemIdSelected(element.id);
        }) ??
        false;
  }

  ShoppingCartItemGroupEntity? getSellerGroupCartItems(String sellerId) {
    return state.itemGroups.find(
      (item) => item.distributor.id == sellerId,
    );
  }

  List<String> getSellerGroupCartItemsId(String sellerId) {
    return getSellerGroupCartItems(sellerId)
            ?.productCartList
            .map((item) => item.id)
            .filterNotNull()
            .toList() ??
        [];
  }

  int? getTotalItems() {
    return state.itemGroups.fold(
      0,
      (previousValue, element) => element.productCartList.length,
    );
  }

  int get selectedItemTotal => state.selectedCartItemIds.length;
}
