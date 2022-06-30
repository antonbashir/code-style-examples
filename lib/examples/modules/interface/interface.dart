import 'package:examples/examples/modules/interface/model.dart';

abstract class UserService {
  void create(String name, String email);
  User get(int id);
  User update(User newUser);
  User delete(int id);
}
