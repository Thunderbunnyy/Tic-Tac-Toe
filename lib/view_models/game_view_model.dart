import 'dart:ui';

import 'package:tictactoe_nourelhouda_eleuch/Singletons/data.dart';
import 'package:tictactoe_nourelhouda_eleuch/config/constants.dart';
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

  getFieldColor(String? value) {

    if(value == playerModel.O) return kPrimaryColor;

    else if (value == playerModel.X) return kTertiaryColor;
    else return white;

  }

  getBackgroundColor() {

    appData.currentMove =  appData.lastMove == playerModel.X ? PlayerModel().O : PlayerModel().X;
    
    return getFieldColor(appData.currentMove);

  }



  }