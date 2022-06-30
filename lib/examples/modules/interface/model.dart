class User {
  final int? id;
  final String name;
  final String email;

  User(this.id, this.name, this.email);

  String serialize() => "$id-$name-$email";

  static User deserialize(String from) {
    final parsed = from.split("-");
    return User(int.parse(parsed[0]), parsed[1], parsed[2]);
  }
}
