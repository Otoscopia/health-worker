import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as material;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:getwidget/components/badge/gf_badge.dart';
import 'package:getwidget/components/badge/gf_icon_badge.dart';

import 'package:health_worker/config/themes/colors.dart';
import 'package:health_worker/core/constants/constants.dart';

class NotificationIcon extends ConsumerWidget {
  final List<MenuFlyoutItemBase> items;
  const NotificationIcon({super.key, required this.items});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: items.isNotEmpty
          ? DropDownButton(
              items: items,
              buttonBuilder: (context, onOpen) {
                return ButtonTheme(
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
                  child: material.Material(
                    color: transparent,
                    child: GFIconBadge(
                      counterChild: GFBadge(
                        child: Text(items.length.toString()),
                      ),
                      child: IconButton(
                        icon: notificationIconButton,
                        onPressed: onOpen,
                        style: ButtonStyle(iconSize: ButtonState.all(24)),
                      ),
                    ),
                  ),
                );
              },
            )
          : IconButton(
              icon: notificationIconButton,
              onPressed: () {},
              style: ButtonStyle(iconSize: ButtonState.all(24)),
            ),
    );
  }
}
