import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/common/presentation/widgets/app_item_counter/app_item_counter_args.dart';
import 'package:hlshop/app/common/presentation/widgets/app_item_counter/bloc/app_item_counter_bloc.dart';
import 'package:hlshop/app/common/presentation/widgets/app_item_counter/layout/app_item_counter_layout_1.dart';

class AppCartItemCounter extends StatefulWidget {
  const AppCartItemCounter({
    super.key,
    required this.submitCallBack,
    this.counterInitValue = 1,
  });

  final AppCartItemCounterSubmitCallBack submitCallBack;
  final int counterInitValue;

  @override
  State<AppCartItemCounter> createState() => _AppCartItemCounterState();
}

class _AppCartItemCounterState extends State<AppCartItemCounter> {
  late final TextEditingController _textEditingController;

  @override
  void initState() {
    _textEditingController =
        TextEditingController(text: widget.counterInitValue.toString());
    super.initState();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCartItemCounterBloc(
        initialValue: widget.counterInitValue,
        submitCallBack: widget.submitCallBack,
      ),
      child: Builder(
        builder: (context) {
          return MultiBlocListener(
            listeners: [
              BlocListener<AppCartItemCounterBloc, AppCartItemCounterState>(
                listenWhen: (previous, current) =>
                    previous.counterValue != current.counterValue ||
                    _textEditingController.text !=
                        current.counterValue.toString(),
                listener: (context, state) {
                  _textEditingController.text = state.counterValue.toString();
                },
              ),
              BlocListener<AppCartItemCounterBloc, AppCartItemCounterState>(
                listener: (context, state) {
                  if (state.status == AppCartItemCounterStatus.submit) {
                    widget.submitCallBack.onValueSubmit
                        ?.call(state.counterValue);
                  }
                },
              ),
            ],
            child: AppCartItemCounterLayout1(
              callback: AppCartItemCounterCallBack(
                onAdd: () {
                  context
                      .read<AppCartItemCounterBloc>()
                      .add(AppCartItemCounterAddEvent());
                },
                onRemove: () {
                  context
                      .read<AppCartItemCounterBloc>()
                      .add(AppCartItemCounterRemoveEvent());
                },
                onValueChange: (value) {
                  context
                      .read<AppCartItemCounterBloc>()
                      .add(AppCartItemCounterValueChangeEvent(value));
                },
              ),
              controller: _textEditingController,
            ),
          );
        },
      ),
    );
  }
}
