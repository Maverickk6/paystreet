import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          color: Colors.white, borderRadius: BorderRadius.circular(8.r)),
      child: ListTile(
        leading: Container(
            height: 50.h,
            width: 50.w,
            decoration: BoxDecoration(
                color: containerColor, borderRadius: BorderRadius.circular(8.r)),
            child: Icon(icon, color: iconColor)),
        title: Text(title, style: TextStyle(fontSize: 14.sp),),
        subtitle: Text(subtitle, style: TextStyle(fontSize: 12.sp),),
        trailing: Text(price, style: TextStyle(fontSize: 20.sp, height: 1.5.h, fontWeight: FontWeight.w400, color: Color(0xFF48484E))),
      ),
    );
  }
}
