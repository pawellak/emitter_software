// import 'package:core/core_exports.dart';
// import 'package:flutter/material.dart';
//
// class LakyAdaptiveScafoold extends StatelessWidget {
//   const LakyAdaptiveScafoold({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const AdaptiveLayout(body: SlotLayout(
//       config: <Breakpoint, SlotLayoutConfig>{
//         widget.mediumBreakpoint: SlotLayout.from(
//           key: const Key('primaryNavigation'),
//           builder: (_) => AdaptiveScaffold.standardNavigationRail(
//             width: widget.navigationRailWidth,
//             leading: widget.leadingUnextendedNavRail,
//             trailing: widget.trailingNavRail,
//             selectedIndex: widget.selectedIndex,
//             destinations: widget.destinations
//                 .map((NavigationDestination destination) =>
//                 AdaptiveScaffold.toRailDestination(destination))
//                 .toList(),
//             onDestinationSelected: widget.onSelectedIndexChange,
//             backgroundColor: navRailTheme.backgroundColor,
//             selectedIconTheme: navRailTheme.selectedIconTheme,
//             unselectedIconTheme: navRailTheme.unselectedIconTheme,
//             selectedLabelTextStyle: navRailTheme.selectedLabelTextStyle,
//             unSelectedLabelTextStyle: navRailTheme.unselectedLabelTextStyle,
//           ),
//         ),
//         widget.largeBreakpoint: SlotLayout.from(
//           key: const Key('primaryNavigation1'),
//           builder: (_) => AdaptiveScaffold.standardNavigationRail(
//             width: widget.extendedNavigationRailWidth,
//             extended: true,
//             leading: widget.leadingExtendedNavRail,
//             trailing: widget.trailingNavRail,
//             selectedIndex: widget.selectedIndex,
//             destinations: widget.destinations
//                 .map((NavigationDestination destination) =>
//                 AdaptiveScaffold.toRailDestination(destination))
//                 .toList(),
//             onDestinationSelected: widget.onSelectedIndexChange,
//             backgroundColor: navRailTheme.backgroundColor,
//             selectedIconTheme: navRailTheme.selectedIconTheme,
//             unselectedIconTheme: navRailTheme.unselectedIconTheme,
//             selectedLabelTextStyle: navRailTheme.selectedLabelTextStyle,
//             unSelectedLabelTextStyle: navRailTheme.unselectedLabelTextStyle,
//           ),
//         ),
//       },
//     ),);
//   }
// }
