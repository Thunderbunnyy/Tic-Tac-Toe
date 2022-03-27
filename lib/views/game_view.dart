import 'package:flutter/material.dart';
import 'package:tictactoe_nourelhouda_eleuch/Singletons/data.dart';
import 'package:tictactoe_nourelhouda_eleuch/utils/gridBuilderUtil.dart';
import 'package:tictactoe_nourelhouda_eleuch/view_models/game_view_model.dart';

class GameView extends StatefulWidget {
  const GameView({Key? key}) : super(key: key);

  @override
  _GameViewState createState() => _GameViewState();
}

class _GameViewState extends State<GameView> {

  static final countMatrix = 3;
  static final double size = 100;

  List<List<String>> matrix = [];

  var data = GameViewModel();

  @override
  void initState() {
    super.initState();

    setEmptyFields();
  }

 void setEmptyFields() => setState(()=> matrix = List.generate(
   countMatrix,
       (_) => List.generate(countMatrix,(_)=> data.getPlayerNone()),
 ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: data.getBackgroundColor(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:
          GridBuilderUtil.modelBuilder(matrix, (x, value) => buildRow(x))
        ,
      ),
    );
  }

  Widget buildRow(int x){
    final values = matrix[x];

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:
        GridBuilderUtil.modelBuilder(
            values,
            (y, value) => buildField(x,y),
        ),
    );
  }


  Widget buildField(int x, int y){
    final value = matrix[x][y];
    final color = data.getFieldColor(value);

    return Container(
      margin: EdgeInsets.all(4),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(size,size),
            primary: color,
            elevation: 2.0
          ),
          onPressed: (){

            data.selectField(value, x, y);
            setState(() {
              appData.lastMove = appData.newValue;
              matrix[x][y] = appData.newValue!;
            });
          },
          child: Text(value,
            style: TextStyle(fontSize: 30,color: Colors.black),

          )
      ),
    );
    
  }
}
