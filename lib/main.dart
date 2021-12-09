import 'package:anime_app/pages/home_page.dart';
import 'package:anime_app/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider(),)
      ],
      child: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(        
        primarySwatch: Colors.deepPurple,
        primaryColor: Colors.deepPurple,
        fontFamily: 'SFPro-Regular'
      ),
      home: const HomePage(),
    );
  }
}

