class AppData {

  static final AppData _appData = new AppData._internal();

  factory AppData() {
    return _appData;
  }

  String? newValue;
  String? lastMove;
  String? currentMove;

  AppData._internal();

}

final appData = AppData();