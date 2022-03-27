import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tictactoe_nourelhouda_eleuch/views/home_view.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
        theme: ThemeData(
            visualDensity: VisualDensity.adaptivePlatformDensity,
            textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                    textStyle: TextStyle(
                        fontFamily: 'Montserrat'
                    )
                )
            )

        )
    );
  }
}

