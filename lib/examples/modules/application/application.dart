import 'package:examples/examples/modules/implementation/implementation.dart';
import 'package:flutter/material.dart';

class UserApplication extends StatefulWidget {
  @override
  State<UserApplication> createState() => _UserApplicationState();
}

class _UserApplicationState extends State<UserApplication> {
  final service = UserServiceImplementation();

  var _name = "";

  var _email = "";

  void _updateName(String name) => _name = name;

  void _updateEmail(String email) => _email = email;

  void _register() => service.create(_name, _email);

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          body: Center(
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              SizedBox(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(hintText: "Имя"),
                  onChanged: _updateName,
                ),
              ),
              SizedBox(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(hintText: "Почта"),
                  onChanged: _updateEmail,
                ),
              ),
              SizedBox(width: 300, child: Divider()),
              SizedBox(
                width: 300,
                child: OutlinedButton(
                  onPressed: _register,
                  child: Text("Зарегистрировать"),
                ),
              )
            ]),
          ),
        ),
      );
}
