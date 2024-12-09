import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class animate_text extends StatelessWidget {
  const animate_text({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animate_text'),
      ),
      body: Column(
        children: [
          AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText('raj is good person',
                  textStyle:
                      TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  speed: Duration(microseconds: 100000))
            ],
            totalRepeatCount: 5,
            pause: Duration(microseconds: 100),
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
          )
        ],
      ),
    );
  }
}
