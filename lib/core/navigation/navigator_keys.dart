import 'package:flutter/material.dart';

abstract class NavigatorKeys {
  const NavigatorKeys();

  static final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();
  static final GlobalKey<ScaffoldState> drawerScaffoldKey = GlobalKey<ScaffoldState>();
}
