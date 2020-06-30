import 'package:flutter/material.dart';
import '../blocs/bloc.dart';

class LoginScreen extends StatelessWidget {
  Widget build(context) =>
    Container(
      margin: EdgeInsets.symmetric(vertical: 25.0, horizontal: 10.0),
      child: Column(
        children: [
          emailField(),
          passwordField(),
          submitButton()
        ]
      )
    );

  Widget emailField() =>
    TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'you@example.com'
      )
    );

  Widget passwordField() =>
    TextField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password'
      )
    );

  Widget submitButton() =>
    RaisedButton(
      child: Text('Login'),
      color: Colors.orange,
      onPressed: () {
        return null;
      }
    );
}