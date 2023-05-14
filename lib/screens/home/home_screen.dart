import 'package:flutter/material.dart';
import 'package:flutter_profile/screens/main/main_screen.dart';

import '../../constants.dart';
import 'components/highlights.dart';
import 'components/home_banner.dart';
import 'components/my_projects.dart';
import 'components/recommendations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        HighlightsInfo(),
        SizedBox(width: defaultPadding),
        MyProjects(),
        SizedBox(width: defaultPadding),
        // Recommendations(),
      ],
    );
  }
}
