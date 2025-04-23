import 'package:boss_level_challenge/storyController.dart';
import 'package:flutter/material.dart';

class StoryScreen extends StatefulWidget {
  @override
  State<StoryScreen> createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  final StoryController _controller = StoryController();

  @override
  Widget build(BuildContext context) {
    final story = _controller.currentStory;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    story.storyText,
                    style: const TextStyle(fontSize: 25.0),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      _controller.next(1);
                    });
                  },
                  style: TextButton.styleFrom(backgroundColor: Colors.red),
                  child: Text(
                    story.choice1,
                    style: const TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              Expanded(
                flex: 2,
                child: Visibility(
                  visible: _controller.hasSecondChoice(),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        _controller.next(2);
                      });
                    },
                    style: TextButton.styleFrom(backgroundColor: Colors.blue),
                    child: Text(
                      story.choice2,
                      style: const TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
