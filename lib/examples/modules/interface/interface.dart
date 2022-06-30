import 'package:examples/examples/modules/interface/model.dart';

abstract class UserService {
  User create(String name, String email);
  User get(int id);
  User update(User newUser);
  User delete(int id);
}
