import 'package:components_library/widgets/loading/loading_overlay.dart';
import 'package:flutter/material.dart';

extension ContextExtensions on BuildContext {
  void showLoader() => LoadingOverlay.of(this)?.show();

  void hideLoader() => LoadingOverlay.of(this)?.hide();
}
