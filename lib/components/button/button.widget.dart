import 'package:flutter/widgets.dart';

/// {@template button}
/// A button triggers an event or action.
/// They let users know what will happen next.
///
/// ### Usage
///
/// ```dart
/// Button(
///   onPressed: () {
///     print('Button pressed');
///   },
/// ),
///
/// {@endtemplate}
class Button extends StatelessWidget {
  /// {@macro button}
  const Button({super.key, this.label = ''});

  /// The text to display inside the button.
  final String label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Button pressed');
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
