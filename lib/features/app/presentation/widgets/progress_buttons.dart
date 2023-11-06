import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:styled_widget/styled_widget.dart';

import 'package:health_worker/config/config.dart';

class ProgressButtons extends ConsumerWidget {
  final int status;
  const ProgressButtons({super.key, required this.status});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ProgressButton(status: status, index: 1),
        const Divider(direction: Axis.horizontal, size: 32, style: DividerThemeData(decoration: BoxDecoration(color: secondary))),
        ProgressButton(status: status, index: 2),
        const Divider(direction: Axis.horizontal, size: 32, style: DividerThemeData(decoration: BoxDecoration(color: secondary))),
        ProgressButton(status: status, index: 3),
        const Divider(direction: Axis.horizontal, size: 32, style: DividerThemeData(decoration: BoxDecoration(color: secondary))),
        ProgressButton(status: status, index: 4),
        const Divider(direction: Axis.horizontal, size: 32, style: DividerThemeData(decoration: BoxDecoration(color: secondary))),
        ProgressButton(status: status, index: 5),
      ],
    );
  }
}

class ProgressButton extends ConsumerWidget {
  final int status;
  final int index;
  const ProgressButton({super.key, required this.status, required this.index});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: (){
          int count = 0;
          if (status > index) return;
          Navigator.popUntil(context, (route) => count++ >= index);
        },
        child: Container(
          constraints: const BoxConstraints(minHeight: 32, minWidth: 32),
          decoration: BoxDecoration(
            color: status == index ? primary : transparent,
            border: Border.all(color: secondary),
            borderRadius: BorderRadius.circular(999),
          ),
          child: Center(child: Text(index.toString()).textColor(index == status ? Colors.white : FluentTheme.of(context).typography.body!.color)),
        ),
      ),
    );
  }
}
