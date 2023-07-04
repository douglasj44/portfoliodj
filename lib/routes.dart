import 'package:flutter/material.dart';
import 'package:portfolio/pages/home.dart';
import 'package:portfolio/pages/pagemobile.dart';
import 'package:portfolio/pages/pageweb.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/home":
        return MaterialPageRoute(builder: (_) => Home());
      case "/mobile":
        return MaterialPageRoute(builder: (_) => PageMobile());
      case "/web":
        return MaterialPageRoute(builder: (_) => PageWeb());
    }
    return _erroRoute();
  }

  static Route<dynamic> _erroRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Tela não encontrada"),
        ),
        body: Center(
          child: Text("tela não encontrada"),
        ),
      );
    });
  }
}
