import "package:flutter/material.dart";
import "package:cari_rumah/const/styles.dart";

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset('images/splash_image.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/logo.png')
                      )
                    ),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    'Cari Hunian Idamanmu \ndengan Mudah dan Murah',
                    style: AppFonts.dark.copyWith(
                      fontSize: 24
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Stop buang waktu dan mulai mencari \nhunian murah dalam genggaman tanganmu',
                    style: AppFonts.secondary.copyWith(
                      fontSize: 16
                    ),
                  ),
                  const SizedBox(height: 40),
                  Container(
                    height: 50,
                    width: 210,
                    child: ElevatedButton(
                      onPressed: (){},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(AppColors.primary),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17),
                          ),
                        ),
                      ),
                      child: Text(
                        'Jelajahi',
                        style: AppFonts.light.copyWith(fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}