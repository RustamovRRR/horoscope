import 'package:flutter/material.dart';
import 'package:horoscope/burcListi.dart';
import 'package:horoscope/burc_detay.dart';
import 'package:horoscope/model/burc.dart';

class RouteGenerator {
  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => BurcListi());
      case '/burcDetay':
        final Burc secilenBurc = settings.arguments as Burc;
        return MaterialPageRoute(
            builder: (context) => BurcDetay(secilenBurc: secilenBurc));

      default:
    }
  }
}
