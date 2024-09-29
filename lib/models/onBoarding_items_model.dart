class onboarding_items{
  String? _imgPath;
  String? _title;
  String? _sub_title;

  onboarding_items(imgPath,title,sub_title){
    this._imgPath = imgPath;
    this._title = title;
    this._sub_title=sub_title;
  }

  String get imgPath => _imgPath!;

  String get title => _title!;

  String get sub_title => _sub_title!;

  set imgPath(String value) {
    _imgPath = value;
  }

  set title(String value) {
    _title = value;
  }

  set sub_title(String value) {
    _sub_title = value;
  }
}