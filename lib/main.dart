import 'package:flutter/material.dart';
import 'screens/categories_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vamos Cozinhar?',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
                titleSmall: TextStyle(
                  fontSize: 12,
                  fontFamily: 'RobotoCondensed',
                ),
              ),
          canvasColor: Color.fromRGBO(255, 254, 229, 1)),
      home: CategoriesScreen(),
    );
  }
}
