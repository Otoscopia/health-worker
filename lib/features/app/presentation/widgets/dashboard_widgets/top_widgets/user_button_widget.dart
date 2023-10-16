import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:getwidget/getwidget.dart';

import 'package:health_worker/config/exports.dart';
import 'package:health_worker/core/exports.dart';
import 'package:health_worker/features/authentication/exports.dart';

class UserButton extends ConsumerWidget {
  const UserButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String user = ref.watch(userProvider).name;

    return MouseRegion(
      cursor: SystemMouseCursors.cell,
      child: DropDownButton(
        items: [
          MenuFlyoutItem(
            text: const Text(signOutText),
            onPressed: () {
              showContentDialog(context, ref);
            },
          )
        ],
        buttonBuilder: (context, onOpen) {
          return ButtonTheme(
            data: ButtonThemeData(
              defaultButtonStyle: ButtonStyle(
                backgroundColor: ButtonState.resolveWith((states) {
                  if (states.isNone) {
                    return transparent;
                  }

                  return null;
                }),
                border: ButtonState.all(BorderSide.none),
              ),
            ),
            child: Button(
              onPressed: onOpen,
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 8,
                children: [
                  // TODO: [OT-14] Find API for User profile
                  const GFAvatar(size: GFSize.SMALL),
                  Text(user),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void showContentDialog(BuildContext context, WidgetRef ref) async {
    await showDialog(
      context: context,
      builder: (context) {
        return ContentDialog(
          title: const Text(signOutPopUpTitle),
          content: const Text(signOutPopUpMessage),
          actions: [
            ButtonTheme(
              data: ButtonThemeData(
                filledButtonStyle: ButtonStyle(
                  backgroundColor: ButtonState.resolveWith(
                    (states) {
                      if (states.isHovering || states.isPressing) {
                        return Colors.red.darker;
                      }

                      return null;
                    },
                  ),
                ),
              ),
              child: Button(
                child: const Text(signOutButton),
                onPressed: () async {
                  ref.watch(authenticationProvider.notifier).signOut();
                  Navigator.pop(context);
                },
              ),
            ),
            FilledButton(
                child: const Text(cancelButton),
                onPressed: () => Navigator.pop(context))
          ],
        );
      },
    );
  }
}
