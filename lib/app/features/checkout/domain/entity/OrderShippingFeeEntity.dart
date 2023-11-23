import 'package:hlshop/all_file/all_file.dart';

part 'OrderShippingFeeEntity.g.dart';

@CopyWith(copyWithNull: true)
class OrderShippingFeeEntity {
  const OrderShippingFeeEntity({
    this.shippingFee,
  });

  static OrderShippingFeeEntity demo() {
    return OrderShippingFeeEntity(
      shippingFee: '10000'.toPriceUnit,
    );
  }

  final PriceUnit? shippingFee;
}
