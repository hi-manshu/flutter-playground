import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginAppState();
  }
}

class LoginAppState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Form(
        key: formKey,
        child: Column(
          children: <Widget>[
            emailField(),
            passwordField(),
            Container(
              margin: EdgeInsets.all(20),
            ),
            buttonField()
          ],
        ),
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "h@in.com",
      ),
      validator: (String value) {
        if (!value.contains('@')) {
          return "Please enter a valid email";
        }
      },
      onSaved: (value) {
        email = value;
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "password",
      ),
      validator: (String value) {
        if (value.length < 4) {
          return "Password cannot be less then 6 chars";
        }
      },
      onSaved: (value) {
        password = value;
      },
    );
  }

  Widget buttonField() {
    return RaisedButton(
      color: Colors.blue,
      child: Text("Login"),
      textColor: Colors.white,
      onPressed: () {
        if (formKey.currentState.validate()) {
          formKey.currentState.save();
        }
      },
    );
  }
}
