import 'package:flutter/material.dart';

typedef PageBuilder<T> = Widget Function(BuildContext context, T value);

class BaseView<T> extends StatefulWidget {
  
  final PageBuilder<T>? onPageBuilder;
  final T viewModel;
  final Function(T)? onModelReady;
  final VoidCallback? onDispose;

  const BaseView({super.key, this.onPageBuilder, required this.viewModel, this.onModelReady, this.onDispose});

  @override
  State<BaseView<T>> createState() => _BaseViewState<T>();
}

class _BaseViewState<T> extends State<BaseView<T>> {

  @override
  void initState() {
    super.initState();
    widget.onModelReady?.call(widget.viewModel);
  }

  @override
  void dispose() {
    super.dispose();
    widget.onDispose?.call();
  }

  @override
  Widget build(BuildContext context) {
    return widget.onPageBuilder!(context, widget.viewModel);
  }
}
