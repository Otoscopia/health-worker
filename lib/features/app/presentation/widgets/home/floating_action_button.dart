import 'package:fluent_ui/fluent_ui.dart';

import 'package:health_worker/config/themes/colors.dart';

class FloatingActionButton extends StatelessWidget {
  final ButtonState<Color?>? color;
  final String tooltip;
  final Icon? icon;
  final double? top, right, bottom, left;
  final void Function()? onPressed;

  const FloatingActionButton({
    super.key,
    this.icon,
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
          child: IconButton(
            style: ButtonStyle(
                iconSize: ButtonState.all(32),
                backgroundColor: color ??
                    ButtonState.resolveWith(
                      (states) {
                        if (states.isHovering) {
                          return secondary;
                        }
                        return primary;
                      },
                    )),
            icon: icon ?? const Icon(FluentIcons.add),
            onPressed: onPressed
          ),
        ),
      ),
    );
  }
}
