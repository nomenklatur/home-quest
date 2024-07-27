import 'package:cari_rumah/const/styles.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  final IconData icon;
  final bool isActive;

  BottomNav({Key? key, required this.icon, this.isActive = false}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Icon(icon, color: isActive ? AppColors.primary : AppColors.secondary, size: 26),
        Spacer(),
        isActive ? Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
            color: isActive? AppColors.primary : AppColors.secondary,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(1000)
            )
          ),
        ) : Container()

      ],
    );
  }
}