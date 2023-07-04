import 'package:flutter/material.dart';
import 'package:portfolio/routes.dart';
import '';

final ThemeData defaultTheme = ThemeData(
  primaryColor: Colors.blue,
  colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.white),
);

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: defaultTheme,
    title: "Portifolio Douglas José",
    initialRoute: "/home",
    onGenerateRoute: Routes.generateRoute,
  ));
}
