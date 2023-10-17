import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'config/exports.dart';
import 'core/exports.dart';
import 'dependency_injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DependencyInjection().initialize();

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FluentApp(
      title: applicationTitle,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: OfflineBuilder(
        connectivityBuilder: (BuildContext context,
            ConnectivityResult connectivity, Widget child) {
          final bool connected = connectivity != ConnectivityResult.none;
          WidgetsBinding.instance.addPostFrameCallback((_) {
            ref.read(applicationStateProvider.notifier).setConnected(connected);
          });
          return Stack(
            fit: StackFit.expand,
            children: [child, OfflineBar(connected: connected)],
          );
        },
        child: const Routes(),
      ),
    );
  }
}
