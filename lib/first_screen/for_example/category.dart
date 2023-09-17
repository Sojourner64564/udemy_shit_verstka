import 'package:flutter/widgets.dart';

class Category {
  Category({required this.icon, required this.title, required this.onTap});
  final IconData icon;
  final String title;
  final void Function() onTap;
}
