import 'package:examples/examples/modules/interface/interface.dart';
import 'package:examples/examples/modules/interface/model.dart';

class UserStorage {
  final users = {};

  User create(User user) {
    final id = users.length;
    users[id] = User(id: id, name: user.name, email: user.email);
    return users[id];
  }
}

class UserServiceImplementation extends UserService {
  final storage = UserStorage();

  @override
  void create(String name, String email) {
    if (name.isEmpty || email.isEmpty) throw new Exception("Invalid data");
    storage.create(User(name: name, email: email));
  }

  @override
  User delete(int id) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  User get(int id) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  User update(User newUser) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
