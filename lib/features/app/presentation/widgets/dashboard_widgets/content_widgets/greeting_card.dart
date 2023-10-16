import "package:fluent_ui/fluent_ui.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:intl/intl.dart";
import "package:ionicons/ionicons.dart";
import "package:styled_widget/styled_widget.dart";

import "package:health_worker/config/exports.dart";
import "package:health_worker/features/authentication/exports.dart";

class GreetingCard extends ConsumerWidget {
  const GreetingCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String name = ref.watch(userProvider).uid;
    return Card(
      backgroundColor: transparent,
      borderColor: transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Good Morning! $name")
              .letterSpacing(2)
              .fontWeight(FontWeight.w600),
          Text.rich(
            TextSpan(
              children: [
                // TODO: [OT-13] Generate 1000 random qoute and display it here randomly
                const WidgetSpan(
                  child: Padding(
                    padding: EdgeInsets.only(right: 8),
                    child: Icon(Ionicons.car_sport),
                  ),
                ),
                const TextSpan(text: "RANDOM QUOTE HERE").fontSize(12)
              ],
            ),
          ),
          Expanded(
            child: StreamBuilder(
              stream: getCurrentTimeStream(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data.toString())
                      .bold()
                      .italic()
                      .fontSize(24);
                } else {
                  return const ProgressBar();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

Stream<String> getCurrentTimeStream() {
  // Create a stream that emits the current time every second
  return Stream.periodic(const Duration(seconds: 10), (i) {
    return DateFormat("hh:mm a").format(DateTime.now());
  });
}
