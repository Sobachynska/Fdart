import 'package:flutter/material.dart';

import 'dart:math';

class QuestionsSummary extends StatelessWidget {
  QuestionsSummary(this.summaryData, {Key? key}) : super(key: key);
  final List<Map<String, Object>> summaryData;
  
  final List<String> imagePaths = [
    'assets/images/random/image1.jpg',
    'assets/images/random/image2.jpg',
    'assets/images/random/image3.jpg',
    // Додайте сюди шляхи до інших фотографій
  ];

  @override
  Widget build(BuildContext context) {
    // Вибираємо рандомну фотографію
    final random = Random();
    final imagePath = imagePaths[random.nextInt(imagePaths.length)];

    return Column(
      children: summaryData.asMap().entries.map((entry) {

        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imagePath,
              width: 100,
              height: 100,
            ),
          ],
        );
      }).toList(),
    );
  }
}
