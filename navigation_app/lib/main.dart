import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:navigation_app/homepage.dart';
import 'package:splashscreen/splashscreen.dart';

main() {
  runApp(DynamicTheme(
      defaultBrightness: Brightness.light,
      data: (brightness) => new ThemeData(
            primarySwatch: Colors.indigo,
            brightness: brightness,
          ),
      themedWidgetBuilder: (context, theme) {
        return new MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: theme,
          home: new Myapp(),
        );
      }));
}

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 2,
        navigateAfterSeconds: new homepage(),
        image: Image(
          image: AssetImage("assets/Navigatio.png"),
        ),
        title: new Text(
          ' ',
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 150.0,
        loaderColor: Colors.red);
  }
}
