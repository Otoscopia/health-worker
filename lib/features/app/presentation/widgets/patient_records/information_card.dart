import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class InformationCard extends ConsumerWidget {
  final Icon icon;
  final String title, subtitle;
  const InformationCard(
      {super.key,
      required this.icon,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: ListTile(
        leading: icon,
        title: Text(title),
        subtitle: Text(subtitle),
      ),
    );
  }
}
