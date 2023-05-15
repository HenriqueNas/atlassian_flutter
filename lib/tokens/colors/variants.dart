import 'dart:ui';

import 'package:atlassian_flutter/tokens/colors/color.interface.dart';

/// {@template pressed}
/// Defines the pressed color.
/// {@endtemplate}
class Pressed implements ColorInterface {
  /// {@macro pressed}
  const Pressed();

  @override
  Color get color => const Color(0xFF000000);
}
