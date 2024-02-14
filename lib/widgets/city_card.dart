import 'package:cari_rumah/const/styles.dart';
import 'package:cari_rumah/models/city.dart';
import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  final City city;

  const CityCard({Key? key, required this.city}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        height: 150,
        width: 120,
        color: Color(0xffF6F7F8),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  city.imageUrl,
                  width: 120,
                  height: 102,
                  fit: BoxFit.cover,
                ),
                city.isFavorite ? Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 50,
                    height: 30,
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(36)
                      )
                    ),
                    child: Center(child: Image.asset('images/icon_star_solid.png', width: 22, height: 22)),
                  ),
                ) : Container(),
              ],
            ),
            const SizedBox(height: 11),
            Text(
              city.name,
              style: AppFonts.dark.copyWith(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}