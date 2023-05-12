import 'package:flutter/material.dart';
import 'package:flutter_profile/components/animated_counter.dart';
import 'package:flutter_profile/responsive.dart';

import '../../../constants.dart';
import 'heigh_light.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HighLighs(
                      counter: AnimatedCounter(
                        value: 10,
                        text: "+",
                      ),
                      label: "Flutter Projects",
                    ),
                    HighLighs(
                      counter: AnimatedCounter(
                        value: 10,
                        text: "+",
                      ),
                      label: "Native projects",
                    ),
                    HighLighs(
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
