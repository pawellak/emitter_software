import 'package:components_library/utilis/theme_extensions.dart';
import 'package:flutter/material.dart';

class LoadingOverlay extends StatefulWidget {
  const LoadingOverlay({super.key, required this.child, required this.initialLoading});

  final Widget child;
  final bool initialLoading;

  static _LoadingOverlayState? of(BuildContext context) {
    return context.findAncestorStateOfType<_LoadingOverlayState>();
  }

  @override
  State<LoadingOverlay> createState() => _LoadingOverlayState();
}

class _LoadingOverlayState extends State<LoadingOverlay> {
  bool _isLoading = false;

  @override
  void initState() {
    _isLoading = widget.initialLoading;
    super.initState();
  }

  void show() {
    if (_isLoading == false) {
      setState(() {
        _isLoading = true;
      });
    }
  }

  void hide() {
    if (_isLoading == true) {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          widget.child,
          if (_isLoading) ModalBarrier(dismissible: false, color: context.colorTokens.overlayDarkBackgroundColor),
          if (_isLoading) const CircularProgressIndicator(),
        ],
      );
}
