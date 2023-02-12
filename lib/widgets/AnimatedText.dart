import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedTextWidget extends StatelessWidget {
  const AnimatedTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Text'),
      ),
      body: Column(
        children: [
          AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText('Flutter',
                  textStyle:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  speed: Duration(milliseconds: 100))
            ],
            totalRepeatCount: 4,
            pause: Duration(microseconds: 100),
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
          )
        ],
      ),
    );
  }
}
