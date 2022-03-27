import 'package:tictactoe_nourelhouda_eleuch/models/players_model.dart';

class GameViewModel {

  var playerModel = PlayerModel();

  getPlayerNone(){
    return playerModel.none;
  }

  getPlayerX(){
    return playerModel.X;
  }

  getPlayerO(){
    return playerModel.O;
  }



  }