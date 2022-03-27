import 'package:flutter/foundation.dart';
import 'package:universal_html/html.dart' as html;
import 'package:url_strategy/url_strategy.dart';

class Init {
  static void common() {
    if (kIsWeb) {
      web();
    } else {
      io();
    }
  }

  static void io() {}
  static void web() {
    html.Element? base = html.document.querySelector('base');

    if (base != null) {
      base.setAttribute("href", "/");
    } else {
      html.document.createElement('base').setAttribute("href", "/");
    }

    setPathUrlStrategy();
    final loaderContainer = html.document.getElementsByClassName('container');
    if (loaderContainer.isNotEmpty) {
      loaderContainer.first.remove();
    }
  }
}
