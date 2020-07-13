import 'package:flutter/material.dart';
import '../blocs/bloc.dart';
import '../blocs/provider.dart';

class LoginScreen extends StatelessWidget {
  Widget build(context) {
    final bloc = Provider.of(context);

    return Container(
      margin: EdgeInsets.symmetric(vertical: 25.0, horizontal: 10.0),
      child: Column(children: [
        emailField(bloc),
        passwordField(bloc),
        submitButton(bloc),
      ]),
    );
  }

  Widget emailField(Bloc bloc) => StreamBuilder(
        stream: bloc.email,
        builder: (context, snapshot) => TextField(
          onChanged: bloc.changeEmail,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: 'Email',
            hintText: 'you@example.com',
            errorText: snapshot.error,
          ),
        ),
      );

  Widget passwordField(Bloc bloc) => StreamBuilder(
        stream: bloc.password,
        builder: (context, snapshot) => TextField(
          onChanged: bloc.changePassword,
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Password',
            errorText: snapshot.error,
          ),
        ),
      );

  Widget submitButton(Bloc bloc) => StreamBuilder(
        stream: bloc.submitValid,
        builder: (context, snapshot) => RaisedButton(
          child: Text('Login'),
          color: Colors.orange,
          onPressed: (!snapshot.hasData || snapshot.hasError)
              ? null
              : () {
                  print('Login !!!');
                },
        ),
      );
}
