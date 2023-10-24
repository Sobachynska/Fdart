import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.amber,
      ),
      child: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/images/image.jpg',
            ),
            const SizedBox(
              height: 50,
            ),
            const Text('Яка ти водичка "Караван"',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.amber,
              ),
              child: const Text('Start quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
