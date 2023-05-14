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
                      text: email,
                      onClick: (){
                        mlaunchUrl(Uri.parse("mailto:$email"));
                      },
                    ),
                    AreaInfoText(
                      title: "Phone",
                      text: phoneNumber,
                      onClick: (){
                        mlaunchUrl(Uri.parse("tel:$phoneNumber"));
                      },
                    ),
                    Skills(),
                    SizedBox(height: defaultPadding),
                    Coding(),
                    // Knowledges(),
                    Divider(),
                    SizedBox(height: defaultPadding / 2),
                    TextButton(
                      onPressed: () {
                        openNewTab("https://drive.google.com/file/d/1uAxfzjPgnxHUbRAFojUY3FYPe4AUEtAV/view?usp=share_link");
                      },
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "DOWNLOAD CV",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium?.copyWith(color: bodyTextColor)
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
