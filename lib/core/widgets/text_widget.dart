import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:styled_widget/styled_widget.dart';

import 'package:health_worker/config/config.dart';

class PrimaryCaption extends ConsumerWidget {
  final String text;
  const PrimaryCaption(this.text, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Text(text, style: FluentTheme.of(context).typography.body).textColor(primary);
  }
}

class TextSubtitle extends ConsumerWidget {
  final String text;
  const TextSubtitle(this.text, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Text(text, style: FluentTheme.of(context).typography.subtitle);
  }
}

class CustomRichText extends ConsumerWidget {
  const CustomRichText({super.key, required this.title, required this.value});

  final String title;
  final String value;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Text.rich(
      TextSpan(
        text: "$title: ",
        children: [
          TextSpan(text: value).bold(),
        ],
      ),
    );
  }
}
