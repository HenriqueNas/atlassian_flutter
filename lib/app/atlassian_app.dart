import 'package:flutter/material.dart';

/// {@template atlassian_app}
/// The AtlassianApp widget is the root of your application.
/// It should be placed at the top of your widget tree.
/// {@endtemplate}
class AtlassianApp extends StatelessWidget {
  /// {@macro atlassian_app}
  const AtlassianApp({
    super.key,
    this.themeMode = ThemeMode.system,
  });

  /// The theme mode to use for the app.
  final ThemeMode themeMode;

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}

/// Describes which theme will be used by [AtlassianApp].
enum ThemeMode {
  /// Use the light theme based on Atlassian's Design System.
  light,

  /// Use the dark theme based on Atlassian's Design System.
  dark,

  /// Use the system theme based on Atlassian's Design System.
  system,
}
