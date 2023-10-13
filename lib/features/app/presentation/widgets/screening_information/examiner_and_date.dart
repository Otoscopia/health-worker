import 'package:fluent_ui/fluent_ui.dart';
import 'package:health_worker/core/constants/constants.dart';

class ExaminerAndDate extends StatelessWidget {
  const ExaminerAndDate({
    super.key,
    required this.today,
    required this.user
  });

  final String today;
  final String user;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InfoLabel(
            label: dateOfExamination,
            child: TextFormBox(
              placeholder: today,
              readOnly: true,
            ),
          ),
        ),
        largeWidth,
        Expanded(
          child: InfoLabel(
            label: examiner,
            child: TextFormBox(
              placeholder: user,
              readOnly: true,
            ),
          ),
        ),
      ],
    );
  }
}
