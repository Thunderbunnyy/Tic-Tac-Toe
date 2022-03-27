import 'package:tictactoe_nourelhouda_eleuch/Singletons/data.dart';
import 'package:tictactoe_nourelhouda_eleuch/models/game_model.dart';
import 'package:tictactoe_nourelhouda_eleuch/models/players_model.dart';

class GameViewModel {

  var playerModel = PlayerModel();
  var gameModel = GameModel();
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

      appData.newValue = playerModel.X;

    }

  }


  }