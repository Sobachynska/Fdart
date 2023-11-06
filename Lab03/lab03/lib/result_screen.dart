import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key, required this.chosenAnswers, required this.finalQuiz});
  final List<String> chosenAnswers;
  final void Function() finalQuiz;
  
  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (int i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'answer': chosenAnswers[i],
      });
    }
    return summary;
  }

@override
Widget build(BuildContext context) {
  final random = Random();
  final int randomImageIndex = random.nextInt(3);
  final List<String> imagePaths = [
    'assets/images/random/image1.jpg',
    'assets/images/random/image2.jpg',
    'assets/images/random/image3.jpg',
  ];
  final String selectedPhoto = imagePaths[randomImageIndex];

  return SizedBox(
    width: double.infinity,
    child: Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Ваш результат:',
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 237, 223, 252),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          
          // Отриману випадкову фотографію можна відобразити відповідним способом. Наприклад, Image.widget:
          Image.asset(
            selectedPhoto,
            width: 500, // Задайте розмір зображення, який вам підходить.
            height: 500,
          ),

          const SizedBox(height: 30),
          TextButton(
            style: OutlinedButton.styleFrom(
              foregroundColor: Color.fromARGB(255, 239, 243, 211)),
            onPressed: finalQuiz,
            child: const Text('Restart quiz!'),
          ),

        ],
      ),
    ),
  );
}
}