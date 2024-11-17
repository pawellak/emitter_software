import 'package:components_library/components_library_exports.dart' show AppConstants, ThemeExtensions;
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class Label extends StatelessWidget {
  const Label(
    this.labelKey, {
    super.key,
    this.style,
    this.fontWeight = FontWeight.w500,
    this.color,
    this.maxLines,
    this.textAlign,
    this.decoration,
    this.overflow,
    this.translate = true,
  });

  final String? labelKey;
  final TextStyle? style;
  final FontWeight fontWeight;
  final Color? color;
  final int? maxLines;
  final TextAlign? textAlign;
  final TextDecoration? decoration;
  final TextOverflow? overflow;
  final bool translate;

  @override
  Widget build(BuildContext context) => Text(
        translate ? labelKey?.tr() ?? AppConstants.emptyString : labelKey ?? AppConstants.emptyString,
        softWrap: true,
        textAlign: textAlign,
        style: (style ?? context.textTheme.bodyMedium)?.copyWith(
          fontWeight: fontWeight,
          color: color ?? context.colorTokens.textPrimary,
          decoration: decoration,
        ),
        overflow: overflow,
        maxLines: maxLines,
      );
}
