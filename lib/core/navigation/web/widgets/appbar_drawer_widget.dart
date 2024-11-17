import 'package:core/core_exports.dart';
import 'package:flutter/material.dart';

class AppbarDrawerWidget extends StatelessWidget {
  const AppbarDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) => const Align(
        alignment: Alignment.topLeft,
        child: ClContainer(
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(Dimens.dimen13)),
          backgroundColor: Colors.red,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('123'),
              Text('1234'),
              Text('1235'),
              Text('1236'),
            ],
          ),
        ),
      );
}
