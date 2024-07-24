import 'package:cari_rumah/const/styles.dart';
import 'package:cari_rumah/widgets/city_card.dart';
import 'package:cari_rumah/widgets/space_card.dart';
import 'package:flutter/material.dart';
import 'package:cari_rumah/dummies/cities.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: ListView(
            children: [
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
              Column(
                children: [
                  SpaceCard(),
                  const SizedBox(height: 30,),
                  SpaceCard(),
                  const SizedBox(height: 30,),
                  SpaceCard(),
                  const SizedBox(height: 30,)
                ],
              )
            ],
          ),
        )
      ),
    );
  }
}