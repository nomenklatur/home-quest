import 'package:flutter/material.dart';
import 'package:cari_rumah/const/styles.dart';

class SpaceCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Container(
            width: 130,
            height: 110,
            decoration: BoxDecoration(color: Colors.green),
            child: Stack(
              children: [
                Image.asset('images/spaces/space1.png', width: 130, height: 110, fit: BoxFit.cover),
                Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 70,
                      height: 30,
                      decoration: const BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(36)
                        )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('images/icon_star_solid.png', width: 22, height: 22),
                          Text(
                            '4/5',
                            style: AppFonts.light.copyWith(
                              fontSize: 13,
                            )
                          )
                        ],
                                          ),
                    ),
                  )
              ],
            ),
          ),
        ),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Kuretakeso Hott',
              style: AppFonts.dark.copyWith(fontSize:  18),
            ),
            SizedBox(height: 2),
            Text.rich(
              TextSpan(
                text: 'Rp9.250.000',
                style: AppFonts.primary.copyWith(fontSize: 16),
                children: [
                  TextSpan(text: ' / month', style: AppFonts.secondary.copyWith(fontSize: 16))
                ]
              )
            ),
            const SizedBox(height: 16,),
            Text('Sunggal, Medan', style: AppFonts.secondary.copyWith(fontSize: 14),)
          ],
        )
      ],
    );
  }
}