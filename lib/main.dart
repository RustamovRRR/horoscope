import 'package:flutter/material.dart';
import 'package:horoscope/burcListi.dart';
import 'package:horoscope/route_generator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Horoscope',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      
      ),
      onGenerateRoute: RouteGenerator.routeGenerator,
    );
  }
}


