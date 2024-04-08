import 'package:flutter/material.dart';

class TileWidget extends StatelessWidget {
  final IconData icon;
  final Color containerColor;
  final Color iconColor;
  final String title;
  final String subtitle;
  final String price;
  const TileWidget(
      {required this.icon,
      required this.title,
      required this.iconColor,
      required this.containerColor,
      required this.subtitle,
      required this.price,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: ListTile(
        leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: containerColor, borderRadius: BorderRadius.circular(8)),
            child: Icon(icon, color: iconColor)),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Text(price, style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
