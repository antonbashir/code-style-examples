import 'package:flutter/material.dart';

class BadUserApplication extends StatefulWidget {
  @override
  State<BadUserApplication> createState() => _BadUserApplicationState();
}

class _BadUserApplicationState extends State<BadUserApplication> {
  final users = {};

  late Map<String, dynamic> currentUser;

  var _name = "";

  var _email = "";

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          body: Center(
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              SizedBox(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(hintText: "Имя"),
                  onChanged: (value) => _name = value,
                ),
              ),
              SizedBox(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(hintText: "Почта"),
                  onChanged: (value) => _name = value,
                ),
              ),
              SizedBox(width: 300, child: Divider()),
              SizedBox(
                width: 300,
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: OutlinedButton(
                          onPressed: () => {
                            currentUser = users[users.length] = {
                              "name": _name,
                              "email": _email,
                              "id": users.length,
                            }
                          },
                          child: Text("Зарегистрироваться"),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: OutlinedButton(
                          onPressed: () => {users.remove(currentUser["id"])},
                          child: Text("Зарегистрироваться"),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ]),
          ),
        ),
      );
}
