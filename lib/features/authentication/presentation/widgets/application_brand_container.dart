import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'package:health_worker/core/core.dart';

class ApplicationBrandContainer extends ConsumerWidget {
  final bool isDesktop;
  const ApplicationBrandContainer({
    super.key, required this.isDesktop
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ResponsiveRowColumn(
      layout: ResponsiveRowColumnType.COLUMN,
      columnCrossAxisAlignment: isDesktop ? CrossAxisAlignment.start : CrossAxisAlignment.center,
      columnMainAxisAlignment: MainAxisAlignment.center,
      children: [
        ResponsiveRowColumnItem(child: SvgPicture.asset(logoSvg, height: isDesktop ? 100 : 50)),
      ],
    );
  }
}