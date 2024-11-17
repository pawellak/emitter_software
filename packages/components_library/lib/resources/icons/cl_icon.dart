import 'package:components_library/components_library_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vector_graphics/vector_graphics.dart';

class ClIcon extends StatelessWidget {
  factory ClIcon.svg({required String path, Key? key, GestureTapCallback? onTap, Color? color, Size? size}) =>
      ClIcon._(key: key, iconType: _IconType.svg, path: path, onTap: onTap, color: color, size: size);

  factory ClIcon.icon({required IconData iconData, Key? key, GestureTapCallback? onTap, Color? color, Size? size}) =>
      ClIcon._(key: key, iconType: _IconType.icon, iconData: iconData, onTap: onTap, color: color, size: size);

  const ClIcon._({super.key, this.path, this.color, this.size, this.onTap, this.iconData, required this.iconType});

  final String? path;
  final IconData? iconData;
  final Color? color;
  final Size? size;
  final GestureTapCallback? onTap;
  final _IconType iconType;

  @override
  Widget build(BuildContext context) => onTap != null
      ? GestureDetector(
          onTap: onTap,
          child: _buildIcon(context),
        )
      : _buildIcon(context);

  Widget _buildIcon(BuildContext context) {
    switch (iconType) {
      case _IconType.icon:
        return _buildDataIcon(context);
      case _IconType.svg:
        return _buildSvgIcon(context, path ?? AppConstants.emptyString);
    }
  }

  Icon _buildDataIcon(BuildContext context) => Icon(
        iconData,
        color: context.colorTokens.iconPrimary,
        size: size?.height ?? Dimens.dimen21,
      );

  Widget _buildSvgIcon(BuildContext context, String path) => SvgPicture(
        AssetBytesLoader(path),
        height: size?.height ?? Dimens.dimen21,
        width: size?.width ?? Dimens.dimen21,
        colorFilter: ColorFilter.mode(
          color ?? context.colorTokens.iconPrimary,
          BlendMode.srcIn,
        ),
      );
}

enum _IconType { icon, svg }
