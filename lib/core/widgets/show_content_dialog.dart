import 'package:fluent_ui/fluent_ui.dart';
import 'package:styled_widget/styled_widget.dart';

import 'package:health_worker/core/core.dart';

Future<void> showContentDialog(
  BuildContext context,
  String title,
  String content,
) {
  WidgetsBinding.instance.addPostFrameCallback((_) {
    showDialog<String>(
      context: context,
      builder: (context) => ContentDialog(
        title: Text(title).fontSize(20),
        content: Text(content),
        actions: [
          ButtonTheme(
            data: ButtonThemeData(
              defaultButtonStyle: ButtonStyle(
                backgroundColor: ButtonState.resolveWith(
                  (states) {
                    if (!states.isNone) {
                      bool isLightMode = FluentTheme.of(context).brightness.isLight;
                      return isLightMode ? Colors.red.light : Colors.red.darker;
                    }

                    return null;
                  },
                ),
              ),
            ),
            child: Button(
              child: const Text(proceedLabel),
              onPressed: () {
                // Navigator.popUntil(context, (route) => route.isFirst);
                Navigator.pop(context);
                Navigator.pop(context);
              },
            ),
          ),
          FilledButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(cancelLabel),
          )
        ],
      ),
    );
  });

  return Future.value();
}
