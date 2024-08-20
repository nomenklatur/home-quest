import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Image.asset(
              'images/cities/jakarta.jpg',
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton.filled(
                    onPressed: (){ Navigator.pop(context); }, 
                    icon: Icon(Icons.chevron_left, color: Colors.black,),
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.white
                    ),
                  ),
                  IconButton.filled(
                    onPressed: (){}, 
                    icon: Icon(Icons.favorite_outline, color: Colors.black,),
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.white
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}