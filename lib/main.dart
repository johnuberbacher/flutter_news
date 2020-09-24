import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_news/data.dart';
import 'package:flutter_news/routes/home.dart';
import 'package:flutter_news/models/category_model.dart';
import 'package:flutter_news/routes/article.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark, // status bar icons' color
      statusBarBrightness:
          Brightness.dark, // Dark == white status bar -- for IOS.
    ),
  );
  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter News',
      theme: ThemeData(
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(
          brightness: Brightness.light, // status bar brightness
          color: Color(0xFFFFFFFF),
          elevation: 0,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
