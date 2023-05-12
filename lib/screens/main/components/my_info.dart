import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile/screens/home/components/home_banner.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: Color(0xFF242430),
        child: Column(
          children: [
            Spacer(flex: 2),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/profile.jpeg"),
            ),
            Spacer(),

            Text(
              "Wadih Hannouch",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(
              "Senior Developer",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
            AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                TyperAnimatedText(
                  "Android",
                  speed: Duration(milliseconds: 60),
                ),
                TyperAnimatedText(
                  "Flutter",
                  speed: Duration(milliseconds: 60),
                ),

              ],
            ),

            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
