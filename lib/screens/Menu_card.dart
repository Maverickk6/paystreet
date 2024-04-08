import 'package:flutter/material.dart';
import 'package:paystreet/screens/menu_widget.dart';

class MenuCard extends StatelessWidget {
  final MenuItem menuItem;
  const MenuCard({
    super.key,
    required this.menuItem,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: menuItem.color,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(menuItem.icon, color: menuItem.iconColor),
        ),
        Expanded(child: Text(menuItem.title, textAlign: TextAlign.center,))
      ],
    );
  }
}
