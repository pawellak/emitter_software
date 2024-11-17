import 'package:flutter/material.dart';

class ClAdapter extends StatelessWidget {
  const ClAdapter({super.key, required this.desktop, required this.mobile});

  final Widget mobile;
  final Widget desktop;

  @override
  Widget build(BuildContext context) => MediaQuery.sizeOf(context).width < 600 ? mobile : desktop;
}
