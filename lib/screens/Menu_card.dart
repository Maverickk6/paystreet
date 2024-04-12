import 'package:flutter/material.dart';
import 'package:paystreet/screens/menu_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


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
          clipBehavior: Clip.hardEdge,
          height: 80.h,
          width: 80.w,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
              width: 14.r,
            ),
            color: menuItem.color,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Icon(menuItem.icon, color: menuItem.iconColor),
        ),
        Positioned(
          width: 75,
          top: 95.h,
          bottom: 0,
          child: Flex(direction: Axis.vertical, children: [
            Flexible(
              child: Text(
                menuItem.title,
                style: TextStyle(fontSize: 13.sp),
                textAlign: TextAlign.center,
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
            ),
          ]),
        )
      ],
    );
  }
}
