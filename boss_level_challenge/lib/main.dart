import 'package:boss_level_challenge/storyScreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Destiny',
      theme: ThemeData.dark(),
      home: StoryScreen(),
    );
  }
}
