import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_worker/config/themes/colors.dart';
import 'package:styled_widget/styled_widget.dart';

class OfflineBar extends ConsumerWidget {
  final bool connected;
  const OfflineBar({super.key, required this.connected});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Positioned(
      height: 24.0,
      bottom: 0.0,
      left: 0.0,
      right: 0.0,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        color: connected ? null : primary,
        child: connected
            ? null
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('OFFLINE MODE').letterSpacing(1),
                ],
              ),
      ),
    );
  }
}
