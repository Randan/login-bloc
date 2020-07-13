import 'dart:async';
import 'package:email_validator/email_validator.dart';

class Validators {
  final validateEmail = StreamTransformer<String, String>.fromHandlers(
    handleData: (email, sink) => EmailValidator.validate(email)
        ? sink.add(email)
        : sink.addError('Please enter a valid email'),
  );

  final validatePassword = StreamTransformer<String, String>.fromHandlers(
    handleData: (password, sink) => password.length >= 4
        ? sink.add(password)
        : sink.addError('Password must be at least 4 characters'),
  );
}
