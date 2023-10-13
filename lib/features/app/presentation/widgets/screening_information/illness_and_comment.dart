import 'package:fluent_ui/fluent_ui.dart';

import 'package:health_worker/core/constants/constants.dart';

class IllnessAndComment extends StatelessWidget {
  final TextEditingController illness;
  final TextEditingController comment;

  const IllnessAndComment({super.key, required this.illness, required this.comment});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InfoLabel(
            label: historyOfIllness,
            child: TextFormBox(
              placeholder: historyOfIllness,
              validator: (value) {
                if (value == null || value.length < 10) {
                  return "Please Enter a valid $historyOfIllness";
                }
                return null;
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: illness,
              maxLines: 3,
              minLines: 1,
            ),
          ),
        ),
        largeWidth,
        Expanded(
          child: InfoLabel(
            label: healthWorkerComment,
            child: TextFormBox(
              placeholder: healthWorkerComment,
              validator: (value) {
                if (value == null || value.length < 10) {
                  return "Please Enter a valid $healthWorkerComment";
                }
                return null;
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: comment,
              maxLines: 3,
              minLines: 1,
            ),
          ),
        ),
      ],
    );
  }
}
