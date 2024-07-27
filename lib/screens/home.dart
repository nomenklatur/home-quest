import 'package:cari_rumah/const/styles.dart';
import 'package:cari_rumah/widgets/city_card.dart';
import 'package:cari_rumah/widgets/space_card.dart';
import 'package:cari_rumah/widgets/tips_card.dart';
import 'package:cari_rumah/widgets/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:cari_rumah/dummies/cities.dart';
import 'package:cari_rumah/dummies/spaces.dart';
import 'package:cari_rumah/dummies/tips.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text('Jelajahi Hunian', style: AppFonts.dark.copyWith(fontSize: 24)),
            ),
            const SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text('Cari hunian murah dengan mudah', style: AppFonts.secondary.copyWith(fontSize: 16)),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text('Kota Populer', style: AppFonts.regular.copyWith(fontSize: 16)),
            ),
            const SizedBox(height: 16),
            Container(
              height: 150,
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: dummiesCity.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: CityCard(city: dummiesCity[index]),
                  );
                },
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text('Rekomendasi Cozy', style: AppFonts.regular.copyWith(fontSize: 16)),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  SpaceCard(space: dummiesSpace[0],),
                  const SizedBox(height: 30,),
                  SpaceCard(space: dummiesSpace[1],),
                  const SizedBox(height: 30,),
                  SpaceCard(space: dummiesSpace[2],),
                  const SizedBox(height: 30,)
                ],
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text('Tips & Petunjuk', style: AppFonts.regular.copyWith(fontSize: 16)),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  TipsCard(tips: dummiesTips[0]),
                  const SizedBox(height: 20),
                  TipsCard(tips: dummiesTips[1]),
                ],
              ),
            ),
            const SizedBox(height: 94)
          ],
        )
      ),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (48),
        margin: const EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
          color: const Color(0xffF6F7F8),
          borderRadius: BorderRadius.circular(23)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNav(icon: Icons.home, isActive: true,),
            BottomNav(icon: Icons.mail),
            BottomNav(icon: Icons.list),
            BottomNav(icon: Icons.favorite)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}