import 'package:flutter/material.dart';

class GameView extends StatefulWidget {
  @override
  _GameViewState createState() => _GameViewState();
}

class _GameViewState extends State<GameView> {

  static final countMatrix = 3;
  static final double size = 90;

  List<List<String>> matrix;

  @override
  void initState() {
    super.initState();

    setEmptyFields();
  }

 void setEmptyFields() => setState(()=> matrix = List.generate(
   countMatrix,
       (_) => List.generate(CountMatrix,(_)=> Player.none),
 ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body : Column((
    MainAxisAlignement : MainAxisAlignement.center,


      )

    );
  }
}
