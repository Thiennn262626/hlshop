import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/self.dart';
part 'credit_card_cubit.freezed.dart';
part 'credit_card_state.dart';

class CrudCreditCardCubit extends Cubit<CrudCreditCardState> {
  CrudCreditCardCubit({this.creditCardItem}) : super(const CrudCreditCardState()) {
    form = FormGroup({
      CreditCardEntity.ownerNameKey: FormControl<String>(
        value: creditCardItem?.ownerName,
        validators: [Validators.required],
      ),
      CreditCardEntity.numberCardKey: FormControl<String>(
        value: creditCardItem?.numberCard,
        validators: [Validators.required],
      ),
      CreditCardEntity.cardTypeKey: FormControl<String>(
        value: creditCardItem?.cardType,
        validators: [Validators.required],
      ),
      CreditCardEntity.expirationDateKey: FormControl<String>(
        value: creditCardItem?.expirationDate,
        validators: [Validators.required],
      ),
      CreditCardEntity.cvvCodeKey: FormControl<String>(
        value: creditCardItem?.cvvCode,
        validators: [Validators.required],
      ),
      CreditCardEntity.addressKey: FormControl<String>(
        value: creditCardItem?.address,
        validators: [Validators.required],
      ),
      CreditCardEntity.postalCodeKey: FormControl<String>(
        value: creditCardItem?.postalCode,
        validators: [Validators.required],
      ),
    });
  }

  final CreditCardEntity? creditCardItem;
  late final FormGroup form;
}
