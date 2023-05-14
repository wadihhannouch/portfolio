import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants.dart';

class AreaInfoText extends StatelessWidget {
  const AreaInfoText({
    Key? key,
    this.title,
    this.text,
    this.onClick

  }) : super(key: key);

  final String? title, text;
  final Function()? onClick;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title!,
          ),
          Flexible(
            child: InkWell(
              splashColor: null,
                onTap: onClick,
                child: Text(text!,style: TextStyle(color: onClick != null ? secondPColor: Colors.white,),textAlign: TextAlign.end,)),
          ),
        ],
      ),
    );
  }
}


