import 'package:flutter/material.dart';
import '../blocs/bloc.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          email(),
          password(),
          Container(
            margin: EdgeInsets.only(top: 20),
          ),
          submitButton()
        ],
      ),
    );
  }
}

Widget submitButton() {
  return RaisedButton(
    child: Text("Login"),
    textColor: Colors.white,
    onPressed: () {},
    color: Colors.green,
  );
}

Widget email() {
  return StreamBuilder<String>(
      stream: bloc.email,
      builder: (context, snapshot) {
        return TextField(
          onChanged: bloc.changeEmail,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              hintText: "dummy@email.com",
              labelText: "Email",
              errorText: snapshot.error),
        );
      });
}

Widget password() {
  return TextField(
    obscureText: true,
    decoration: InputDecoration(hintText: "password", labelText: "Password"),
  );
}
