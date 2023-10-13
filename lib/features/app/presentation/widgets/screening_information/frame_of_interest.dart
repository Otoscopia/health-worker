import 'package:fluent_ui/fluent_ui.dart';

import 'package:health_worker/core/constants/constants.dart';

class FrameOfInterest extends StatelessWidget {
  const FrameOfInterest({super.key, required this.frameOfInterestController});

  final TextEditingController frameOfInterestController;

  @override
  Widget build(BuildContext context) {
    return InfoLabel(
      label: frameOfInterest,
      child: TextFormBox(
        controller: frameOfInterestController,
        placeholder: frameOfInterest,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) {
          if (value == null || value.length < 10) {
            return "Please Enter a valid Frame of Interest";
          }
          return null;
        },
        maxLines: 3,
        minLines: 1,
      ),
    );
  }
}
