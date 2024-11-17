import 'package:flutter/material.dart';

abstract class BasePageBasicConfig {
  abstract final String navigationPath;

  Widget buildPage(BuildContext context);
}
