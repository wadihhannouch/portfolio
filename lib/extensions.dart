import 'dart:js' as js;

void openNewTab(String url) {
  js.context.callMethod('open', ['$url']);
}