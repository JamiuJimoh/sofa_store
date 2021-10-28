import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color(0xFFF0EFF0),
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: const Color(0xFFFA543B)),
        // textTheme: TextTheme(
        //   headline1:
        // ),
      ),
      home: const HomePage(),
    );
  }
}
