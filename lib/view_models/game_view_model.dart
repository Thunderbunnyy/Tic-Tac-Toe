import 'package:tictactoe_nourelhouda_eleuch/Singletons/data.dart';
import 'package:tictactoe_nourelhouda_eleuch/models/players_model.dart';

class GameViewModel {

  var playerModel = PlayerModel();

  String? newValue;

  getPlayerNone(){
    return playerModel.none;
  }

  getPlayerX(){
    return playerModel.X;
  }

  getPlayerO(){
    return playerModel.O;
  }

  selectField(String value, int x, int y){

    if(value == playerModel.none) {

      appData.newValue = appData.lastMove == playerModel.X ? PlayerModel().O : PlayerModel().X;

    }

  }


  }