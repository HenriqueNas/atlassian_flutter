import 'package:atlassian_flutter/atlassian_flutter.dart';
import 'package:flutter/widgets.dart';

/// {@template theme}
/// The Theme widget is the root of your application.
/// It should be placed at the top of your widget tree.
/// {@endtemplate}
class Theme extends StatelessWidget {
  /// {@macro theme}
  const Theme({
    super.key,
    required this.data,
    required this.child,
  });

  /// The theme data to use for the app.
  final ThemeData data;

  /// The widget below this widget in the tree.
  final Widget child;

  static final ThemeData _kFallbackTheme = ThemeData.fallback();

  /// The data from the closest [Theme] instance that encloses the given context
  static ThemeData of(BuildContext context) {
    final inheritedTheme =
        context.dependOnInheritedWidgetOfExactType<_InheritedTheme>();
    return inheritedTheme?.theme.data ?? _kFallbackTheme;
  }

  @override
  Widget build(BuildContext context) {
    return _InheritedTheme(
      theme: this,
      child: child,
    );
  }
}

class _InheritedTheme extends InheritedTheme {
  const _InheritedTheme({
    required this.theme,
    required super.child,
  });

  final Theme theme;

  @override
  Widget wrap(BuildContext context, Widget child) {
    return Theme(data: theme.data, child: child);
  }

  @override
  bool updateShouldNotify(_InheritedTheme old) => theme.data != old.theme.data;
}
