import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/message/presentation/main/cubit/message_cubit.dart';
import 'package:hlshop/app/features/message/presentation/main/message_body.dart';

@RoutePage()
class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MessageCubit(),
      child: DefaultStatusConsumer<MessageCubit, MessageState>(
        child: Scaffold(
          appBar: AppAppBar(
            title: 'Tin Nhắn',
          ),
          body: MessageBody(),
        ),
      ),
    );
  }

  void _onStateChanged(BuildContext context, MessageState state) {
    if (state.status == ItemStatus.error) {
      DialogUtils.showMaterialDialog(
          context: context, content: context.getAppErrorMsg(state.error));
    }
  }
}

class _PageBodyLoading extends StatelessWidget {
  const _PageBodyLoading({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MessageCubit, MessageState>(
      builder: (context, state) {
        // if (state.status == ItemDefaultStatus.error) {
        //   return SimpleErrorText(error: state.error ?? '');
        // }
        final isLoading = state.status == ItemStatus.loading ||
            state.status == ItemStatus.initial;

        return child;
      },
    );
  }
}
