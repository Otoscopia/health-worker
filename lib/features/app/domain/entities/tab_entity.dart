import 'package:fluent_ui/fluent_ui.dart';

class TabEntity {
  final int current;
  final int length;
  final List<Tab> tabs;

  TabEntity({
    required this.current,
    required this.length,
    required this.tabs,
  });
}