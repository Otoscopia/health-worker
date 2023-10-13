import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:styled_widget/styled_widget.dart';

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
