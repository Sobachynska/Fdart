import 'package:flutter/material.dart';
import 'dart:io';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: VisitCard(),
    );
  }
}

class VisitCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    bool isLandscape = screenWidth > screenHeight;

    
    return Scaffold(
      appBar: AppBar(
        title: Text('Anna`s Visit Card'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(isLandscape ? 40.0 : 20.0),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color.fromARGB(255, 225, 145, 102), Colors.blue],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
             child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              if (isLandscape)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 120.0,
                     backgroundImage: AssetImage('assets/1.jpg'),
                    ),
                    SizedBox(width: 20.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [   
                        Text(
                'Sobachynska Anna',
                style: TextStyle(
                  fontSize: 27.0,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 249, 249, 249),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Grafic design | Web design',
                style: TextStyle(
                  fontSize: 17.0,
                  color: Colors.white,
                ),
                        ),
                      ],
                    ),
                  ],
                ),
              
 if (!isLandscape)
                Column(
                  children: [
                    CircleAvatar(
                      radius: 60.0,
                     backgroundImage: AssetImage('assets/1.jpg'),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'Sobachynska Anna',
                      style: TextStyle(
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Grafic design | Web design',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),

              SizedBox(height: isLandscape ? 40.0 : 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'E-mail:  kn1b21.sobachynska@kpnu.edu.ua',
                    style: TextStyle(
                      fontSize: isLandscape ? 12.0 : 12.0,
                       color: Colors.white,
                    ),
                  ),
                ],
              ),

              SizedBox(height: isLandscape ? 20.0 : 12.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Phone:  +38 097 364 3546',
                   style: TextStyle(
                      fontSize: isLandscape ? 12.0 : 12.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}