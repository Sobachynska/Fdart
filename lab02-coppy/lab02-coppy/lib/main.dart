import 'package:flutter/material.dart'; 
 import 'dart:io';

void main() { 
  runApp(MyApp()); 
} 
 
class MyApp extends StatelessWidget { 
  @override 
  Widget build(BuildContext context) { 
    return MaterialApp( 
      theme: ThemeData(
    primarySwatch: Colors.amber, ),
      home: HomeScreen(), 
    ); 
  } 
} 
 
class HomeScreen extends StatelessWidget { 
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      appBar: AppBar( 
        title: Text('Переглядач картинок :)'), 
      ), 
      body: LayoutBuilder(
          builder: (context, constraints) {
          return SingleChildScrollView(
            child: Center(
              child: Column(
        children: [ 
         SizedBox(height: 20),
          Text(
            'Переглядач картинок: Види цукерок', 
            style: TextStyle(fontSize: 26), 
            textAlign: TextAlign.center,
            ), 
             SizedBox(height: 20),
          Image.asset('assets/choco/asorti.jpg', width: constraints.maxWidth, height: constraints.maxHeight * 0.4), 
           SizedBox(height: 20),
          Row( 
            mainAxisAlignment: MainAxisAlignment.spaceAround, 
            children: [ 
              ElevatedButton( 
                onPressed: () { 
                  Navigator.push( 
                    context, 
                    MaterialPageRoute( 
                      builder: (context) => 
                           CategoryScreen('Шоколадні цукерки', 'assets/choco'), 
                    ), 
                  ); 
                }, 
                child: Text('Шоколадні цукерки'), 
              ), 
              ElevatedButton( 
                onPressed: () { 
                  Navigator.push( 
                    context, 
                    MaterialPageRoute( 
                      builder: (context) => 
                           CategoryScreen('Горіхові цукерки', 'assets/nut'), 
                    ), 
                  ); 
                }, 
                child: Text('Горіхові цукерки'), 
              ), 
              ElevatedButton( 
                onPressed: () { 
                  Navigator.push( 
                    context, 
                    MaterialPageRoute( 
                      builder: (context) => 
                          CategoryScreen('Фруктові цукерки', 'assets/fruit'), 
                    ), 
                  ); 
                }, 
                child: Text('Фруктові цукерки'), 
               ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class CategoryScreen extends StatefulWidget {
  final String categoryName;
  final String imagePath;

  CategoryScreen(this.categoryName, this.imagePath);

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  int currentImageIndex = 1;
  int totalImages = 3; // Загальна кількість фотографій в папці (змініть на відповідне значення)

  void showNextImage() {
    if (currentImageIndex < totalImages) {
      setState(() {
        currentImageIndex++;
      });
    }
  }

  void showPreviousImage() {
    if (currentImageIndex > 1) {
      setState(() {
        currentImageIndex--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.categoryName),
      ),
      body: LayoutBuilder(
         builder: (context, constraints) {
          return SingleChildScrollView(
            child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('${widget.imagePath}/${widget.categoryName.toLowerCase()}-$currentImageIndex.jpg',
              width: constraints.maxWidth,
                    height: constraints.maxHeight * 0.4,
            ),
             SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: showPreviousImage, // Переглянути попередню картинку
                  icon: Icon(Icons.arrow_back),
                ),
                IconButton(
                  onPressed: showNextImage, // Переглянути наступну картинку
                  icon: Icon(Icons.arrow_forward),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('На головну'),
             ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}