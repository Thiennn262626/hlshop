import 'package:hlshop/all_file/all_file.dart';

class ApiItemConsumer<C extends StateStreamableSource<S>, S>
    extends StatelessWidget {
  const ApiItemConsumer({
    super.key,
    required this.child,
    this.onDone,
    this.onLoading,
    this.onError,
    this.showLoadingIndicator = true,
    required this.getStatus,
  });

  final Widget child;
  final ApiStatus Function(S state) getStatus;

  final bool showLoadingIndicator;

  final ValueChanged<S>? onDone;
  final VoidCallback? onLoading;

  // Return false if not handled
  final bool Function(Object? value)? onError;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<C, S>(
      listenWhen: (previous, current) {
        final status = getStatus(current);
        final previousStatus = getStatus(previous);
        if (status.isError) {
          return true;
        }
        return status != previousStatus;
      },
      listener: _onStatusChange,
      builder: (context, state) {
        final status = getStatus(state);
        return AppLoading(
          isLoading: status.isLoading,
          child: child,
        );
      },
    );
  }

  void _onStatusChange(BuildContext context, S state) {
    getStatus(state).whenOrNull(
      loading: () => onLoading?.call(),
      done: () => onDone?.call(state),
      refreshing: () => onLoading?.call(),
      initial: () => onLoading?.call(),
      error: (error) {
        final onErrorHandled = onError?.call(error) ?? false;
        if (!onErrorHandled) {
          if (error is Error) {
            log(context.getAppErrorMsg(error) ?? '',
                stackTrace: error.stackTrace);
          }
          //TODO: change to snackbar
          DialogUtils.showErrorDialog(
            context: context,
            content: context.getAppErrorMsg(error),
            error: error,
          );
        }
      },
    );
  }
}
