import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html;
import 'package:url_strategy/url_strategy.dart';

class Init {
  static void before() {
    void common() {
      WidgetsFlutterBinding.ensureInitialized();
    }

    void vm() {}

    void web() {
      html.Element? base = html.document.querySelector('base');

      if (base != null) {
        base.setAttribute("href", "/");
      } else {
        html.document.createElement('base').setAttribute("href", "/");
      }

      setPathUrlStrategy();
    }

    common();
    if (kIsWeb) {
      web();
    } else {
      vm();
    }
  }

  static void after() {
    void vm() {}

    void web() {
      final loaderContainer = html.document.getElementsByClassName('container');
      if (loaderContainer.isNotEmpty) {
        loaderContainer.first.remove();
      }
    }

    if (kIsWeb) {
      web();
    } else {
      vm();
    }
  }
}
