import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final IconData icon;
  final Color color;
  final Color iconColor;

  const MenuItem(
      {required this.title,
      required this.icon,
      required this.color,
      required this.iconColor});
}
