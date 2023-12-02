import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

class ApplicationHeader extends ConsumerWidget {
  const ApplicationHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isNotDesktop = ResponsiveBreakpoints.of(context).smallerThan(DESKTOP);
    bool isNotTablet = ResponsiveBreakpoints.of(context).smallerThan(TABLET);
    return Center(
      child: ResponsiveRowColumn(
        layout: ResponsiveRowColumnType.ROW,
        rowPadding: const EdgeInsets.only(left: 16, right: 16),
        rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ResponsiveRowColumnItem(child: SvgPicture.asset(otoscopia, height: 25)),
          if (!isNotDesktop) const ResponsiveRowColumnItem(child: SearchBox()),
          if (!isNotTablet)const ResponsiveRowColumnItem(child: UserContainer())
        ],
      ),
    );
  }
}
