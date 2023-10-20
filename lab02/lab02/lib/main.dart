import 'package:flutter/material.dart'; 
 
void main() { 
  runApp(MyApp()); 
} 
 
class MyApp extends StatelessWidget { 
  @override 
  Widget build(BuildContext context) { 
    return MaterialApp( 
      home: HomeScreen(), 
    ); 
  } 
} 
 
class HomeScreen extends StatelessWidget { 
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      appBar: AppBar( 
        title: Text('Переглядач картинок'), 
      ), 
      body: Column( 
        children: [ 
          Text('Переглядач картинок: Види цукерок', style: TextStyle(fontSize: 26), textAlign: TextAlign.center,), 
          Image.asset('assets/choco/asorti.jpg', width: 500, height: 350), 
          Row( 
            mainAxisAlignment: MainAxisAlignment.spaceAround, 
            children: [ 
              ElevatedButton( 
                onPressed: () { 
                  Navigator.push( 
                    context, 
                    MaterialPageRoute( 
                      builder: (context) => CategoryScreen( 
                          'Шоколадні цукерки', 'assets/choco'), 
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
                      builder: (context) => CategoryScreen( 
                          'Горіхові цукерки', 'assets/sportyvni_mashyny'), 
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
                          CategoryScreen('Фруктові цукерки', 'assets/vantazhivky'), 
                    ), 
                  ); 
                }, 
                child: Text('Фруктові цукерки'), 
              ), 
            ], 
          ), 
        ], 
      ), 
    ); 
  } 
} 
 
class CategoryScreen extends StatelessWidget { 
  final String categoryName; 
  final String imagePath; 
 
  CategoryScreen(this.categoryName, this.imagePath); 
 
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      appBar: AppBar( 
        title: Text(categoryName), 
      ), 
      body: Center( 
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [ 
            Image.asset( 
              '$imagePath/choco-1.jpg', // Використовуємо imagePath для шляху 
              width: 200, 
              height: 200, 
            ), 
            Row( 
              mainAxisAlignment: MainAxisAlignment.center, 
              children: [ 
                IconButton( 
                  onPressed: () { 
                    // Переглянути попередню картинку 
                  }, 
                  icon: Icon(Icons.arrow_back), 
                ), 
                IconButton( 
                  onPressed: () { 
                    // Переглянути наступну картинку 
                  }, 
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
  } 
}