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
    StreamBuilder(
      stream: bloc.email,
      builder: (context, snapshot) =>
        TextField(
          onChanged: bloc.changeEmail,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: 'Email',
            hintText: 'you@example.com',
            errorText: snapshot.error
          )
        )
    );

  Widget passwordField() =>
    StreamBuilder(
      stream: bloc.password,
      builder: (context, snapshot) =>
        TextField(
          onChanged: bloc.changePassword,
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Password',
            errorText: snapshot.error
          )
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