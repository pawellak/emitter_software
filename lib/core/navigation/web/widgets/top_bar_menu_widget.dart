import 'package:core/core_exports.dart';
import 'package:emitter_software/core/navigation/web/widgets/appbar_linear_menu.dart';
import 'package:flutter/material.dart';

const _shadowOpacity = 0.2;
//
// class AppBarMenuWidget extends StatelessWidget implements PreferredSizeWidget {
//   const AppBarMenuWidget({super.key, required this.navigationShell});
//
//   final StatefulNavigationShell navigationShell;
//
//   @override
//   Size get preferredSize => const Size.fromHeight(Dimens.dimen89);
//
//   @override
//   Widget build(BuildContext context) => ClContainer(
//         backgroundColor: context.colorTokens.linearMenuBackgroundColor,
//         boxShadow: [
//           BoxShadow(
//               color: context.colorTokens.iconPrimary.withOpacity(_shadowOpacity),
//               spreadRadius: Dimens.dimen2,
//               blurRadius: Dimens.dimen21)
//         ],
//         borderRadius: BorderRadius.zero,
//         child: ClAdapter(
//           mobile: const AppbarShowMenuWidget(),
//           desktop: AppBarLinearMenu(navigationShell: navigationShell),
//         ),
//       );
// }


// import 'package:core/core_exports.dart';
// import 'package:emitter_software/core/navigation/web/widgets/appbar_linear_menu.dart';
// import 'package:emitter_software/core/navigation/web/widgets/appbar_show_menu_widget.dart';
// import 'package:flutter/material.dart';

class TopBarMenuWidget extends StatelessWidget {
  const TopBarMenuWidget({super.key,required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return ClContainer(
      backgroundColor: context.colorTokens.linearMenuBackgroundColor,
      boxShadow: [
        BoxShadow(
            color: context.colorTokens.iconPrimary.withOpacity(_shadowOpacity),
            spreadRadius: Dimens.dimen2,
            blurRadius: Dimens.dimen21)
      ],
      borderRadius: BorderRadius.zero,
      child: AppBarLinearMenu(navigationShell: navigationShell),
    );
  }
}
