import 'package:burcler/burc_detal.dart';
import 'package:burcler/burc_listi.dart';
import 'package:burcler/models/burc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic>? _routePage(Widget gotoPage, RouteSettings settings) {
    if (defaultTargetPlatform == TargetPlatform.android) {
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => gotoPage,
      );
    } else if (defaultTargetPlatform == TargetPlatform.iOS) {
      return CupertinoPageRoute(
        builder: (context) => gotoPage,
        settings: settings,
      );
    } else {
      return CupertinoPageRoute(
        builder: (context) => gotoPage,
        settings: settings,
      );
    }
  }

  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return _routePage(BurcListi(), settings);
      case "/burcDetal":
        final Burc secilen = settings.arguments as Burc;
        return _routePage(BurcDetal(secilenBurc: secilen), settings);
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(
                title: Text(
              "Bürc Tapılmadı",
            )),
            body: Center(
                child: Text(
              "Hər Hansı bir bürc tapılmadı",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
                color: Colors.white,
              ),
            )),
            backgroundColor: Colors.red.shade900,
          ),
        );
    }
  }
}
