import 'package:fluent_ui/fluent_ui.dart';

import 'package:health_worker/core/constants/constants.dart';

import 'top_widgets/logo_widget.dart';
import 'top_widgets/notification_widget.dart';
import 'top_widgets/setting_widget.dart';
import 'top_widgets/user_button_widget.dart';
import '../search_input_box.dart';

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
