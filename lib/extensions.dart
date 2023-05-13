import 'dart:js' as js;

import 'package:flutter/services.dart';
import 'package:flutter_profile/generated/assets.dart';
import 'package:universal_html/html.dart' as html;

void openNewTab(String url) {
  js.context.callMethod('open', ['$url']);
}

Future<void> showCV() async {
  var bytes = await rootBundle.load("WadihHannouchCv.pdf"); // location of your asset file
  final blob = html.Blob([bytes], 'application/pdf');
  final url = html.Url.createObjectUrlFromBlob(blob);
  html.window.open(url, "_blank");
  html.Url.revokeObjectUrl(url);
}