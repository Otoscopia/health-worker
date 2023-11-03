import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:styled_widget/styled_widget.dart';

import 'package:health_worker/config/config.dart';
import 'package:health_worker/core/core.dart';

class OfflineBar extends ConsumerWidget {
  final bool connected;
  const OfflineBar({super.key, required this.connected});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Positioned(
      height: 24,
      bottom: 0,
      left: 0,
      right: 0,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        color: connected ? transparent : primary,
        child: connected
            ? null
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(offlineText).letterSpacing(1),
                ],
              ),
      ),
    );
  }
}
