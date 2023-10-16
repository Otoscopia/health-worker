import 'package:fluent_ui/fluent_ui.dart';

import 'package:health_worker/core/exports.dart';
import 'package:health_worker/features/app/exports.dart';

class TopWidget extends StatelessWidget {
  const TopWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 50,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          LogoContainer(),
          largeWidth,
          Expanded(child: SearchBox(label: searchLabel, items: [])),
          mediumWidth,
          NotificationIcon(
            items: [],
          ),
          mediumWidth,
          SettingsIcon(),
          mediumWidth,
          UserButton(),
        ],
      ),
    );
  }
}
