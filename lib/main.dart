import 'package:flutter/material.dart';
import 'package:provider_state_management/Screens/eligiblityScreen.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.lime,
      ),
      home: EligiblityScreen(),
    );
    
  }
}