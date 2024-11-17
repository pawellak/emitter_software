import 'package:components_library/components_library_exports.dart';
import 'package:flutter/material.dart';

class ClContainer extends StatelessWidget {
  const ClContainer({
    super.key,
    this.child,
    this.padding,
    this.onTap,
    this.backgroundColor,
    this.margin,
    this.borderRadius,
    this.width,
    this.border,
    this.height,
    this.boxShadow
  });

  final Widget? child;
  final double? width;
  final double? height;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final GestureTapCallback? onTap;
  final Color? backgroundColor;
  final BorderRadius? borderRadius;
  final BoxBorder? border;
  final List<BoxShadow>? boxShadow;

  @override
  Widget build(BuildContext context) {
    if (onTap != null) {
      return GestureDetector(onTap: onTap, child: _buildChildWidget(context));
    } else {
      return _buildChildWidget(context);
    }
  }

  Widget _buildChildWidget(BuildContext context) => Container(

        width: width,
        height: height,
        padding: padding ?? const EdgeInsets.all(Dimens.dimen13),
        margin: margin,
        decoration: BoxDecoration(
          boxShadow: boxShadow,
          border: border,
          color: backgroundColor ?? context.colorTokens.surfaceContainerPrimary,
          borderRadius: borderRadius ?? BorderRadius.circular(Dimens.dimen13),
        ),
        child: child,
      );
}
