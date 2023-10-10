import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_worker/features/app/presentation/widgets/dashboard_widgets/content_widgets/greeting_card.dart';

class ContentWidget extends ConsumerWidget {
  const ContentWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const SizedBox(
      height: 100,
      child: Row(
        children: [
          Expanded(child: GreetingCard()),
          Expanded(child: SizedBox())
        ],
      ),
    );
  }
}
