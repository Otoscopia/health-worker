import 'package:fluent_ui/fluent_ui.dart';

class TabEntity {
  // current tab index
  final int current;

  // tab length
  final int length;

  // tab list
  final List<Tab> tabs;

  TabEntity({
    required this.current,
    required this.length,
    required this.tabs,
  });
}