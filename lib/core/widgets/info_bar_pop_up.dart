import 'package:fluent_ui/fluent_ui.dart';

Future<void> popUpInfoBar(
  BuildContext context,
  InfoBarSeverity? barSeverity,
  String title,
  String message,
  int? seconds,
) {
  WidgetsBinding.instance.addPostFrameCallback(
    (_) {
      displayInfoBar(
        context,
        duration: Duration(seconds: seconds ?? 5),
        builder: (context, close) {
          return InfoBar(
            title: Text(title),
            content: Text(message),
            severity: barSeverity ?? InfoBarSeverity.warning,
            action: IconButton(
              icon: const Icon(FluentIcons.clear),
              onPressed: close,
            ),
          );
        },
      );
    },
  );

  return Future.value();
}
