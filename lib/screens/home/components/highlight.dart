import 'package:flutter/material.dart';

import '../../../constants.dart';

class HighLight extends StatelessWidget {
  const HighLight({
    Key? key,
    required this.counter,
    this.label,
  }) : super(key: key);

  final Widget counter;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          counter,
          SizedBox(width: defaultPadding / 2),
          Text(label!, style: Theme.of(context).textTheme.subtitle2),
        ],
      ),
    );
  }
}