import 'package:fluent_ui/fluent_ui.dart';
import 'package:health_worker/core/widgets/show_content_dialog.dart';
import 'package:styled_widget/styled_widget.dart';

class TitleWidget extends StatelessWidget {
  final Icon icon;
  final String title;
  final bool popUpContent;
  final String? popUpContentTitle, popUpContentMessage;
  final dynamic onPress;

  const TitleWidget(
      {super.key,
      required this.icon,
      required this.title,
      required this.popUpContent,
      this.popUpContentTitle,
      this.popUpContentMessage,
      this.onPress});

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
                showContentDialog(context, popUpContentTitle!, popUpContentMessage!);
              } else {
                onPress;
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
