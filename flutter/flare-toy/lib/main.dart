import 'package:flare_toy/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(FlareToyApp());

class FlareToyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FLARE TOY',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(title: 'Flare toy'),
    );
  }
}
