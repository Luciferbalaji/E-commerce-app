import 'package:e_commerce_app/components/mode.dart';
import 'package:e_commerce_app/model/shop.dart';
import 'package:e_commerce_app/pages/cartpage.dart'; // Use the correct import here
import 'package:e_commerce_app/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/first_pge.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
       // ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ChangeNotifierProvider(create: (context) => shop()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
 
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => MyHomePage(), // Define 'MyHomePage' widget
        '/firstpage': (context) => firstPage(),
        '/Cartpage': (context) => Cartpage(),
       // '/mode':(context) => mode()
      },
    );
  }

  static of(BuildContext context) {}
}
