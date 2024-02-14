import 'package:cari_rumah/const/styles.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
            ],
          ),
        )
      ),
    );
  }
}