import 'package:expanded_widget/input_page.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        sliderTheme: SliderTheme.of(context).copyWith(
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 18),
          overlayShape: RoundSliderOverlayShape(overlayRadius: 10),
          activeTrackColor: Colors.white,
          inactiveTrackColor: Colors.grey,
          thumbColor: Color(0xFFEB1535),
          overlayColor: Color(0x15EB1555),
          trackHeight: 2
        ),
        primaryColor: Color(0xFF0A0D22),
        scaffoldBackgroundColor: Color(0xFF0A0D22)
      ),
      home: const InputPage(),
    );
  }
}




