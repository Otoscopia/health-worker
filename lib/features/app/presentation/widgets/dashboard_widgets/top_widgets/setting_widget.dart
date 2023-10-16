import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/config/exports.dart';
import 'package:health_worker/core/exports.dart';

class SettingsIcon extends ConsumerWidget {
  const SettingsIcon({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: ButtonTheme(
        data: ButtonThemeData(
          defaultButtonStyle: ButtonStyle(
            backgroundColor: ButtonState.resolveWith(
              (states) {
                if (states.isNone) {
                  return transparent;
                }
                return null;
              },
            ),
          ),
        ),
        child: IconButton(
          icon: settingsIconButton,
          onPressed: () {
            showContentDialog(context);
          },
          style: ButtonStyle(iconSize: ButtonState.all(24)),
        ),
      ),
    );
  }

  void showContentDialog(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (context) {
        // TODO: [OT-12] Add Settings content
        return const ContentDialog(
          title: Text(settingsLabel),
        );
      },
    );
  }
}
