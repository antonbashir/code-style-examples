import 'package:examples/examples/modules/implementation/implementation.dart';
import 'package:examples/examples/modules/library/library.dart';
import 'package:flutter/material.dart';

import '../interface/model.dart';

class UserApplication extends StatefulWidget {
  @override
  State<UserApplication> createState() => _UserApplicationState();
}

class _UserApplicationState extends State<UserApplication> {
  final service = UserServiceImplementation();

  late User currentUser;

  var _name = "";

  var _email = "";

  void _updateName(String name) => _name = name;

  void _updateEmail(String email) => _email = email;

  void _register() => currentUser = service.create(_name, _email);

  void _delete() => service.delete(currentUser.id!);

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          body: Center(
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              SizedBox(
                width: 500,
                child: TextField(
                  decoration: InputDecoration(hintText: NAME_HINT),
                  onChanged: _updateName,
                ),
              ),
              SizedBox(
                width: 500,
                child: TextField(
                  decoration: InputDecoration(hintText: EMAIL_HINT),
                  onChanged: _updateEmail,
                ),
              ),
              SizedBox(width: 500, child: Divider()),
              SizedBox(
                width: 500,
                child: IntrinsicHeight(
                  child: Row(
                    children: [
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: OutlinedButton(
                          onPressed: _register,
                          child: Text(REGISTER_BUTTON_LABEL),
                        ),
                      )),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: OutlinedButton(
                            onPressed: _delete,
                            child: Text(DELETE_BUTTON_LABEL),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ]),
          ),
        ),
      );
}
