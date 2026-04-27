import 'package:flutter/material.dart';
import 'input.dart';
void main() {
  runApp(BMIcalc());
}

class BMIcalc extends StatelessWidget {
  const BMIcalc({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Color(0xFF0F101D),
        appBarTheme: AppBarThemeData(
          backgroundColor: Color(0xFF0F101D),
          foregroundColor: Colors.white
        ),
        colorScheme: ColorScheme.fromSeed(
            seedColor:Colors.black,
          primary: Colors.black,
          onPrimary: Colors.white,
        ),
        textTheme: TextTheme(bodyMedium: TextStyle(color:Colors.white)),
      ),
      home: InputPage(),
    );
  }
}




