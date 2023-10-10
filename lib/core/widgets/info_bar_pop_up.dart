import "package:fluent_ui/fluent_ui.dart";

Future<void> popUpInfoBar(
  BuildContext context,
  InfoBarSeverity barSeverity,
  String title,
  String message,
  int seconds,
) {
  return displayInfoBar(
    context,
    duration: Duration(seconds: seconds),
    builder: (context, close) {
      return InfoBar(
        title: Text(title),
        content: Text(message),
        action: IconButton(
          icon: const Icon(FluentIcons.clear),
          onPressed: close,
        ),
        severity: barSeverity,
      );
    },
  );
}
