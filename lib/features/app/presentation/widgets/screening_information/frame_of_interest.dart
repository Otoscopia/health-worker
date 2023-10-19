import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/exports.dart';
import 'package:health_worker/features/app/domain/provider/screening_information/frame_of_interest_provider.dart';

class FrameOfInterest extends ConsumerWidget {
  const FrameOfInterest({super.key});


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InfoLabel(
      label: frameOfInterest,
      child: TextFormBox(
        onChanged: (value) => ref.watch(frameOfInterestCommentProvider.notifier).setState(value),
        placeholder: frameOfInterest,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        inputFormatters: [filterText],
        validator: (value) {
          if (value == null || value.length < 5) {
            return frameOfInterestError;
          }
          return null;
        },
        maxLines: 3,
        minLines: 1,
      ),
    );
  }
}
