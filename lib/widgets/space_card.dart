import 'package:cari_rumah/screens/detail.dart';
import 'package:flutter/material.dart';
import 'package:cari_rumah/const/styles.dart';
import 'package:cari_rumah/models/space.dart';

class SpaceCard extends StatelessWidget {
  final Space space;

  const SpaceCard({Key? key, required this.space}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) => DetailScreen())
        );
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Container(
              width: 130,
              height: 110,
              child: Stack(
                children: [
                  Image.asset(space.imageUrl, width: 130, height: 110, fit: BoxFit.cover),
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
                              '${space.rating}/5',
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
                space.name,
                style: AppFonts.dark.copyWith(fontSize:  18),
              ),
              const SizedBox(height: 2),
              Text.rich(
                TextSpan(
                  text: space.price,
                  style: AppFonts.primary.copyWith(fontSize: 16),
                  children: [
                    TextSpan(text: ' / bulan', style: AppFonts.secondary.copyWith(fontSize: 16))
                  ]
                )
              ),
              const SizedBox(height: 16,),
              Text('${space.region}, ${space.city}', style: AppFonts.secondary.copyWith(fontSize: 14),)
            ],
          )
        ],
      ),
    );
  }
}