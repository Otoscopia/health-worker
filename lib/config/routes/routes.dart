import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/widgets/container_box.dart';
import 'package:health_worker/dependency_injection.dart';
import 'package:health_worker/features/app/presentation/pages/app.dart';
import 'package:health_worker/features/authentication/domain/entity/user_entity.dart';
import 'package:health_worker/features/authentication/presentation/pages/sign_in.dart';
import 'package:health_worker/features/authentication/presentation/providers/authentication_provider.dart';

class Routes extends ConsumerWidget {
  const Routes({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String? uid = ref.watch(authenticationProvider).uid;

    return FutureBuilder(
      future: loadUser(ref, uid),
      builder: ((context, snapshot) {
        debugPrint("${snapshot.data}");
        if (snapshot.data == null) {
          return const SignIn();
        } else if (snapshot.data != null) {
          return const Application();
        } else {
          return const ContainerBox(
            child: Center(
              child: ProgressRing(),
            ),
          );
        }
      }),
    );
  }
}

User? cachedUser;

loadUser(WidgetRef ref, String? uid) async {
  try {
    Session session = await account.getSession(sessionId: 'current');

    if (session.current) {
      User user = await account.get();
      if (cachedUser == null || cachedUser!.$id != user.$id) {
        ref.watch(authenticationProvider.notifier).setUser(user);
        cachedUser = user;
      }

      return user.$id;
    }
  } on AppwriteException {
    return UserEntity().uid;
  }
}
