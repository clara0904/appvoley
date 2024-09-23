import 'package:flutter/material.dart';
import 'header.dart';
import 'timesList.dart';
import 'customButton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff00ADC3),
        body: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            Header(),
            SizedBox(height: 100),
            TimesList(),
            SizedBox(height: 35),
            CustomButton( nameButton: 'Jogo Casado', backgroundColor: Color(0xff00ADC3), textSize: 30),
            SizedBox(height: 20),
            CustomButton( nameButton: 'Iniciar', backgroundColor: Color(0xff2B4A8E), textSize: 40, comBorder: true),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Ação ao clicar
          },
          backgroundColor: const Color(0xff2B4A8E),
          shape: const CircleBorder(),
          child: const Text(
            '+',
            style: TextStyle(color: Colors.white, fontSize: 45, fontFamily: 'ConcertOne'),
          ),
        ),
      ),
    );
  }
}

