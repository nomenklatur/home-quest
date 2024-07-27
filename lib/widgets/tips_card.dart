import 'package:flutter/material.dart';
import 'package:cari_rumah/const/styles.dart';
import 'package:cari_rumah/models/tips.dart';

class TipsCard extends StatelessWidget {
  final Tips tips;

  const TipsCard({Key? key, required this.tips}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(tips.imageUrl, width: 80, height: 80),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tips.title,
              style: AppFonts.dark.copyWith(fontSize: 18),
            ),
            const SizedBox(height: 4),
            Text(
              tips.description,
              style: AppFonts.secondary.copyWith(fontSize: 14),
            )
          ],
        ),
        const Spacer(),
        IconButton(onPressed: (){}, icon: const Icon(Icons.chevron_right, color: AppColors.secondary,))
      ],
    );
  }
}