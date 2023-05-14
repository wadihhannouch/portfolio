import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile/generated/assets.dart';
import 'package:flutter_profile/responsive.dart';

import '../../../constants.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            Assets.imagesImg2,
            fit: BoxFit.cover,
          ),
          Container(color: darkColor.withOpacity(0.66)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (Responsive.isMobileLarge(context))
                  const SizedBox(height: defaultPadding / 2),
                MyBuildAnimatedText(),
                SizedBox(height: defaultPadding),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DefaultTextStyle(
        // it applies same style to all the widgets under it
        style: Theme.of(context).textTheme.titleMedium!,
        child: Row(
          children: [
            // if (!Responsive.isMobileLarge(context)) FlutterCodedText(),
            if (!Responsive.isMobileLarge(context))
              SizedBox(width: defaultPadding / 2),
            AnimatedText(),
            if (!Responsive.isMobileLarge(context))
              SizedBox(width: defaultPadding / 2),
          ],
        ),
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var style = TextStyle(fontSize: (Responsive.isMobile(context) || Responsive.isMobileLarge(context)) == true ? 11 : 18);
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: AnimatedTextKit(

          animatedTexts: [
            TyperAnimatedText(
              "Fullstack Android apps",
              speed: Duration(milliseconds: 30),
              textStyle: style
            ),
            TyperAnimatedText(
              "Fullstack Flutter apps",
              speed: Duration(milliseconds: 30),
              textStyle: style
            ),
            TyperAnimatedText("Skilled in Mobile Application "
                "Development, API, Kotlin, Java , Unit testing and Flutter/Dart . "
                "Strong program and project management professional with a Bachelor of Science (BS) focused in Computer Science.",
                speed: Duration(milliseconds: 30),
                curve: Curves.easeIn,
                textStyle: style),
          ],
          totalRepeatCount: 1,
          isRepeatingAnimation: true,

        ),
      ),
    );
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "<",
        children: [
          TextSpan(
            text: "flutter",
            style: TextStyle(color: primaryColor),
          ),
          TextSpan(text: ">"),
        ],
      ),
    );
  }
}
