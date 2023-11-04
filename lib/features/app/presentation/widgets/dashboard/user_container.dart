import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ionicons/ionicons.dart';
import 'package:responsive_framework/responsive_framework.dart';

class UserContainer extends ConsumerWidget {
  const UserContainer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ResponsiveRowColumn(
      layout: ResponsiveRowColumnType.ROW,
      rowSpacing: 16,
      children: [
        const ResponsiveRowColumnItem(child: Icon(Ionicons.notifications)),
        ResponsiveRowColumnItem(
            child: ClipOval(
                child: Image.network("https://robohash.org/testing?set=set4",
                    width: 32, height: 32, fit: BoxFit.cover))),
        const ResponsiveRowColumnItem(child: Text("Laurence Valdez")),
      ],
    );
  }
}
