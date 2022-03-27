class AppData {

  static final AppData _appData = new AppData._internal();

  factory AppData() {
    return _appData;
  }

  String? newValue;

  AppData._internal();

}

final appData = AppData();