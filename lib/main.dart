import 'package:flutter/material.dart';
import 'package:loginwithvalidation/HomePage.dart';

import 'adminPage.dart';

void main() {
  runApp(
    FirstFlutterApp(),
  );
}

class FirstFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final usernameController = TextEditingController();
    final passwordController = TextEditingController();

    final users = [
      {
        "UserName": "user1",
        "Password": "psw1",
        "role": "admin",
        "age": "10",
        "city": "jaffna"
      },
      {
        "UserName": "user2",
        "Password": "psw2",
        "role": "admin",
        "age": "20",
        "city": "colombo"
      },
      {
        "UserName": "user3",
        "Password": "psw3",
        "role": "user",
        "age": "30",
        "city": "mannar"
      },
      {
        "UserName": "user4",
        "Password": "psw4",
        "role": "user",
        "age": "40",
        "city": "vavuniya"
      },
      {
        "UserName": "user5",
        "Password": "psw5",
        "role": "user",
        "age": "50",
        "city": "galle"
      }
    ];
    final UserName = TextFormField(
      controller: usernameController,
      decoration: InputDecoration(
        hintText: 'Username',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );

    final Password = TextFormField(
      controller: passwordController,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );

    final btnLogin = ElevatedButton(
      child: Text('Login'),
      onPressed: () {
        for (var i = 0; i < users.length; i++) {
          if (users[i]['UserName'] == usernameController.text &&
              users[i]['Password'] ==
                  passwordController.text) if (users[i]['role'] == "admin")
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => adminPage(age: 10,name: "aathavan",),
              ),
            );
          else if (users[i]['role'] == "user")
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => homePage(),
              ),
            );
          else
            return;
        }
      },
    );

    return MaterialApp(
      home: Scaffold(
        appBar: new AppBar(
          title: Center(
            child: new Text("Login Page"),
          ),
        ),
        body: new Center(
          child: new ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 55, right: 55),
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              UserName,
              SizedBox(
                height: 8.0,
              ),
              Password,
              SizedBox(
                height: 20.0,
              ),
              btnLogin,
            ],
          ),
        ),
      ),
    );
  }
}
