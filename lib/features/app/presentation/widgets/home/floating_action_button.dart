import 'package:fluent_ui/fluent_ui.dart';

class FloatingActionButton extends StatelessWidget {
  final ButtonState<Color?>? color;
  final String tooltip;
  final IconData? icon;
  final double? top, right, bottom, left;
  final void Function()? onPressed;

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
                  padding: ButtonState.all(const EdgeInsets.all(8))),
              onPressed: onPressed,
              child: Icon(icon, color: FluentTheme.of(context).cardColor)),
        ),
      ),
    );
  }
}
