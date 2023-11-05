import 'package:fluent_ui/fluent_ui.dart';
import 'package:styled_widget/styled_widget.dart';

import 'package:health_worker/core/core.dart';

class TitleWidget extends StatelessWidget {
  final Icon icon;
  final String title;
  final bool popUpContent;
  final String? popUpContentTitle, popUpContentMessage;
  final void Function()? onPressed;

  const TitleWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.popUpContent,
    this.popUpContentTitle,
    this.popUpContentMessage,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: IconButton(
            style: ButtonStyle(iconSize: ButtonState.all(32)),
            icon: icon,
            onPressed: () {
              if (popUpContent) {
                showContentDialog(
                    context, popUpContentTitle!, popUpContentMessage!);
              } else {
                onPressed;
              }
            },
          ),
        ),
        const SizedBox(width: 16),
        Text(title).bold().fontSize(16)
      ],
    );
  }
}
