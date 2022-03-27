import 'package:flutter/material.dart';
import 'package:tictactoe_nourelhouda_eleuch/views/home_view.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeView(),
    );
  }
}

