import 'package:flutter/material.dart';
import 'package:flutter_profile/components/animated_counter.dart';
import 'package:flutter_profile/responsive.dart';

import '../../../constants.dart';
import 'highlight.dart';

class HighlightsInfo extends StatelessWidget {
  const HighlightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
              children: [
                Wrap(
                crossAxisAlignment: WrapCrossAlignment.start,
                  alignment: WrapAlignment.spaceEvenly,
                  direction: Axis.horizontal,
                  children: [
                    HighLight(
                      counter: AnimatedCounter(
                        value: 10,
                        text: "+",
                      ),
                      label: "Flutter Projects",
                    ),
                    HighLight(
                      counter: AnimatedCounter(
                        value: 10,
                        text: "+",
                      ),
                      label: "Native projects",
                    ),
                    HighLight(
                      counter: AnimatedCounter(
                        value: 30,
                        text: "+",
                      ),
                      label: "GitHub Projects",
                    ),
                  ],
                ),
              ],
            )

    );
  }
}
