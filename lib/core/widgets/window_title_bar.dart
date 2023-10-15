import "package:bitsdojo_window/bitsdojo_window.dart";
import "package:fluent_ui/fluent_ui.dart";
import "package:styled_widget/styled_widget.dart";
import 'package:flutter_svg/flutter_svg.dart';

import "package:health_worker/config/themes/colors.dart";
import "package:health_worker/core/constants.dart";

class TitleBar extends StatelessWidget {
  const TitleBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return WindowTitleBarBox(
      child: Row(
        children: [
          mediumWidth,
          SizedBox(
            width: 20,
            child: SvgPicture.asset(applicationTitleBarLogo),
          ),
          mediumWidth,
          const Text(applicationTitle).textColor(primary).bold(),
          Expanded(
            child: MoveWindow(),
          ),
          Row(
            children: [
              MinimizeWindowButton(
                colors: WindowButtonColors(iconNormal: primary),
              ),
              MaximizeWindowButton(
                colors: WindowButtonColors(iconNormal: primary),
              ),
              CloseWindowButton(
                colors: WindowButtonColors(
                    iconNormal: primary, mouseOver: Colors.red),
              ),
            ],
          )
        ],
      ),
    );
  }
}
