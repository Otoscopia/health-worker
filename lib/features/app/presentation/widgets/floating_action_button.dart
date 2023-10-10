import 'package:fluent_ui/fluent_ui.dart';
import 'package:health_worker/config/themes/colors.dart';

class FloatingActionButton extends StatelessWidget {
  final bool color;
  final Icon icon;
  final Widget route;
  final double? top, right, bottom, left;
  final Object? argument;

  const FloatingActionButton({
    super.key,
    required this.icon,
    required this.route,
    required this.color,
    this.argument,
    this.top,
    this.right,
    this.bottom,
    this.left,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      right: right,
      bottom: bottom,
      left: left,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: IconButton(
          style: ButtonStyle(
              iconSize: ButtonState.all(32),
              backgroundColor: color
                  ? ButtonState.resolveWith(
                      (states) {
                        if (states.isHovering) {
                          return secondary;
                        }
                        return primary;
                      },
                    )
                  : null),
          icon: icon,
          onPressed: () {
            Navigator.push(context, FluentPageRoute(builder: (context) => route));
          },
        ),
      ),
    );
  }
}
