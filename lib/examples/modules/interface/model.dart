class User {
  final int? id;
  final String name;
  final String email;

  User({this.id, required this.name, required this.email});

  String serialize() => "$id-$name-$email";

  static User deserialize(String from) {
    final parsed = from.split("-");
    return User(id: int.parse(parsed[0]), name: parsed[1], email: parsed[2]);
  }
}
