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

  Future showWinner(String title) {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),

          ),
          title: Text(title),
          content: Text('GG Anyway'),
          actions: [
            TextButton(onPressed: (){

              setEmptyFields();
              Navigator.of(context).pop();
            },
                child: Text('Play Again !'))
          ],
        ));
  }

  bool isWinner(int x, int y) {
    var col = 0, row = 0, diag = 0, rdiag = 0;
    final player = matrix[x][y];
    final n = countMatrix;

    for (int i = 0; i < n; i++) {
      if (matrix[x][i] == player) col++;
      if (matrix[i][y] == player) row++;
      if (matrix[i][i] == player) diag++;
      if (matrix[i][n - i - 1] == player) rdiag++;
    }

    return row == n || col == n || diag == n || rdiag == n;
  }

  bool welpNoOneWon() => matrix.every((values) => values.every((value) => value != data.getPlayerNone()));

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
            
            if(isWinner(x, y)){
              showWinner('${appData.newValue} Is the Winner !!');
            } else if (welpNoOneWon()){
              showWinner('welp, maybe get better lol ');
            }

          },
          child: Text(value,
            style: TextStyle(fontSize: 30,color: Colors.black),

          )
      ),
    );
    
  }
}
