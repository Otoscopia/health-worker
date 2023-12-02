import 'package:fluent_ui/fluent_ui.dart';

/// A customizable floating action button with additional positioning and styling
/// options.
///
/// The [FloatingActionButton] class allows the creation of a floating button
/// that performs a specific action when pressed. It includes properties such
/// as [icon] for specifying the button's icon, [tooltip] for providing a tooltip
/// on hover, [color] for setting the button's color, and [onPressed] to define
/// the action to be executed when the button is pressed.
///
/// Example usage:
/// ```dart
/// //* Create a floating action button with the default 'add' icon and a tooltip.
/// FloatingActionButton(
///   tooltip: 'Add Patient',
///   onPressed: () => print('Button pressed!'),
/// );
/// ```
class FloatingActionButton extends StatelessWidget {
  /// The color of the button, which can be a dynamic [ButtonState<Color?>] value.
  final ButtonState<Color?>? color;

  /// The tooltip message that appears when hovering over the button.
  final String tooltip;

  /// The icon displayed on the button, defaulting to the 'add' icon.
  final IconData? icon;

  /// The distance from the top edge of the screen. Defaults to null.
  final double? top;

  /// The distance from the right edge of the screen. Defaults to null.
  final double? right;

  /// The distance from the bottom edge of the screen. Defaults to null.
  final double? bottom;

  /// The distance from the left edge of the screen. Defaults to null.
  final double? left;

  /// The callback function to be executed when the button is pressed.
  final void Function()? onPressed;

  /// Default constructor for the [FloatingActionButton] class.
  ///
  /// Accepts optional parameters for configuring the appearance and behavior
  /// of the floating action button.
  const FloatingActionButton({
    super.key,
    this.icon = FluentIcons.add,
    required this.tooltip,
    this.color,
    this.onPressed,
    this.top,
    this.right,
    this.bottom,
    this.left,
  });

  /// Builds the widget tree for the floating action button.
  ///
  /// The [build] method returns a [Positioned] widget containing a [MouseRegion]
  /// for hover effects, a [Tooltip] for displaying the tooltip, and a [FilledButton]
  /// as the actual floating action button with an icon.
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      right: right ?? 16,
      bottom: bottom ?? 64,
      left: left,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Tooltip(
          message: tooltip,
          child: FilledButton(
            style: ButtonStyle(
              iconSize: ButtonState.all(32),
              padding: ButtonState.all(const EdgeInsets.all(8)),
            ),
            onPressed: onPressed,
            child: Icon(icon, color: FluentTheme.of(context).cardColor),
          ),
        ),
      ),
    );
  }
}
