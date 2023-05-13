import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_svg/svg.dart';

import '../../../extensions.dart';
import '../../../generated/assets.dart';
import 'area_info_text.dart';
import 'coding.dart';
import 'knowledges.dart';
import 'my_info.dart';
import 'skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    AreaInfoText(
                      title: "Residence",
                      text: "Kuwait",
                    ),
                    AreaInfoText(
                      title: "City",
                      text: "Hawally",
                    ),
                    AreaInfoText(
                      title: "Email",
                      text: "wadihhannouch@gmail.com",
                    ),
                    AreaInfoText(
                      title: "Phone",
                      text: "+96597746257",
                    ),

                    Skills(),
                    SizedBox(height: defaultPadding),
                    Coding(),
                    // Knowledges(),
                    Divider(),
                    SizedBox(height: defaultPadding / 2),
                    TextButton(
                      onPressed: () {
                        showCV();
                        // openNewTab("https://www.orimi.com/pdf-test.pdf");
                      },
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "DOWNLOAD CV",
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .color,
                              ),
                            ),
                            SizedBox(width: defaultPadding / 2),
                            SvgPicture.asset("assets/icons/download.svg")
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: defaultPadding),
                      color: Color(0xFF24242E),
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                            onPressed: () {
                              openNewTab("https://www.linkedin.com/in/wadihhannouch/");
                            },
                            icon: SvgPicture.asset(Assets.iconsLinkedin),
                          ),
                          IconButton(
                            onPressed: () {
                              openNewTab("https://github.com/wadihhannouch");
                            },
                            icon: SvgPicture.asset(Assets.iconsGithub),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
