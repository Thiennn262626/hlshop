import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/components/stream/stream_listener.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ReactiveControlListener<T> extends StatelessWidget {
  const ReactiveControlListener({
    super.key,
    required this.child,
    this.controlName,
    this.formControl,
    required this.onData,
  }) : assert(
          controlName != null || formControl != null,
          'One of the parameters (controlName || formControl) must be provided',
        );

  final Widget child;
  final String? controlName;
  final FormControl<T>? formControl;
  final StreamOnDataListener<T> onData;

  @override
  Widget build(BuildContext context) {
    final control = formControl ?? ReactiveForm.of(context)?.findControl(controlName ?? '') as FormControl<T>?;

    final stream = control?.valueChanges;
    if (stream == null || stream is! Stream<T>) {
      return child;
    }
    return StreamListener<T>(
      onData: onData,
      stream: stream,
      child: child,
    );
  }
}

class MultiReactiveControlListener extends StatefulWidget {
  const MultiReactiveControlListener({
    super.key,
    required this.child,
    this.listControlName,
    required this.onData,
  });

  final Widget child;
  final List<String>? listControlName;
  final StreamOnDataListener<dynamic> onData;

  @override
  State<MultiReactiveControlListener> createState() => _MultiReactiveControlListenerState();
}

class _MultiReactiveControlListenerState extends State<MultiReactiveControlListener> {
  final _subscriptions = <StreamSubscription>[];

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.listControlName?.forEach((controlName) {
        final listen = context.getControl<dynamic>(controlName)?.valueChanges.listen((event) {
          widget.onData(event);
        });
        if (listen != null) {
          _subscriptions.add(listen);
        }
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    for (final element in _subscriptions) {
      element.cancel();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}

class ReactiveFormListener extends StatelessWidget {
  const ReactiveFormListener({
    super.key,
    required this.child,
    required this.form,
    required this.onData,
  });

  final Widget child;
  final FormGroup form;
  final StreamOnDataListener onData;

  @override
  Widget build(BuildContext context) {
    final control = ReactiveForm.of(context);

    final stream = control?.valueChanges;
    if (stream == null) {
      return child;
    }
    return StreamListener(
      onData: onData,
      stream: stream,
      child: child,
    );
  }
}
