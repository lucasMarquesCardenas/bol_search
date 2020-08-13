enum StatusData { loading, sucess, error, none }

extension StatusDataState on StatusData {
  static var _value;
  get value => _value;
  set value(value) => value = value;
}
