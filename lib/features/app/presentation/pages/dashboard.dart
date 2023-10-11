import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/constants/constants.dart';
import 'package:health_worker/core/widgets/container_box.dart';
import 'package:health_worker/features/app/presentation/widgets/dashboard_widgets/content_widget.dart';
import 'package:health_worker/features/app/presentation/widgets/dashboard_widgets/filter_container_widget.dart';
import 'package:health_worker/features/app/presentation/widgets/dashboard_widgets/table_widget.dart';
import 'package:health_worker/features/app/presentation/widgets/floating_action_button.dart';
import 'package:health_worker/features/app/presentation/widgets/dashboard_widgets/top_widget.dart';
import 'package:health_worker/features/authentication/presentation/pages/sign_in.dart';

class Dashboard extends ConsumerWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ScaffoldPage(
      padding: EdgeInsets.zero,
      content: ContainerBox(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Stack(
            children: [
              ListView(
                children: const [
                  TopWidget(),
                  smallHeight,
                  Divider(),
                  ContentWidget(),
                  FilterWidget(),
                  TableWidget()
                ],
              ),
              const FloatingActionButton(
                icon: floatingPlus,
                route: SignIn(),
                color: true,
                bottom: 16,
                right: 16,
              )
            ],
          ),
        ),
      ),
    );
  }
}
