import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart' show immutable;

const _alwaysEqualHashCode = 0;

@immutable
abstract class BaseState extends Equatable {
  const BaseState();

  bool get ignoreEquals => true;

  @override
  bool operator ==(Object other) => ignoreEquals ? !ignoreEquals : super == other;

  @override
  List<Object> get props => [];

  @override
  int get hashCode => ignoreEquals ? _alwaysEqualHashCode : super.hashCode;
}
