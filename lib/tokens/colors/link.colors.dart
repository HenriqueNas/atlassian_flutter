import 'dart:ui';

import 'package:atlassian_flutter/tokens/colors/color.interface.dart';
import 'package:atlassian_flutter/tokens/colors/variants.dart';

/// Links to the color class.
class LinkColors implements ColorInterface {
  @override
  Color get color => const Color(0xFF000000);

  /// {@macro pressed}
  ColorInterface get pressed => const Pressed();
}
