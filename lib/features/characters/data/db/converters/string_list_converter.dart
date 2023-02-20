import 'package:floor/floor.dart';

class StringListConverter extends TypeConverter<List<String>?, String?> {
  @override
  List<String>? decode(String? databaseValue) {
    if (databaseValue == null) {
      return null;
    } else {
      return List.of(databaseValue.split(";"));
    }
  }

  @override
  String? encode(List<String>? value) {
    if (value == null) return null;
    StringBuffer sb = StringBuffer();
    for(final item in value) {
      sb.write(item);
      sb.write('');
    }
    return sb.toString();
  }
}