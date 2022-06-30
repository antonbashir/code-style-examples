import 'package:examples/examples/creatures/constants.dart';

extension StringExtension on String {
  int toInt() => int.parse(this);

  double toDouble() => double.parse(this);

  String removeDashes() => this.replaceAll(Dash, EmptyString);

  String removeCharacters(bool Function(String character) filter) {
    final newString = StringBuffer();
    codeUnits
        .where((character) => filter(String.fromCharCode(character)) == false)
        .forEach(newString.writeCharCode);
    return newString.toString();
  }
}

main() {
  final string = "Test";
  print(string.removeCharacters((character) => character == 'T' || character == 't'));
}
