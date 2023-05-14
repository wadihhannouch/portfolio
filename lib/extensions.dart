import 'dart:js' as js;

import 'package:flutter/services.dart';
import 'package:flutter_profile/generated/assets.dart';
import 'package:universal_html/html.dart' as html;
import 'package:url_launcher/url_launcher.dart';

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

Future<void> mlaunchUrl(Uri url) async {
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}