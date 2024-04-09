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
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 18, ),
            color: menuItem.color,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Icon(menuItem.icon, color: menuItem.iconColor),
        ),
        Positioned(
          width: 75,
          top: 73,
          bottom: 0,
          child: Flexible(
            
            child: Text(
                        menuItem.title,
                        textAlign: TextAlign.center,
                        softWrap: true,
                        overflow: TextOverflow.visible,
                      ),
          ),
        )
      ],
    );
  }
}
