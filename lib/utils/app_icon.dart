import 'package:flutter/material.dart';
class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;
  final double size;
  final double iconsSize;
  AppIcon({Key key, this.icon, this.backgroundColor = const Color(0xFFfcf4e4), this.iconColor = const Color(0xFF756d54),
    this.size = 40,
    this.iconsSize = 16}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size/2),
        color: backgroundColor,
      ),
      child: Icon(
        icon,
        color: iconColor,
        size: iconsSize,
      ),
    );
  }
}