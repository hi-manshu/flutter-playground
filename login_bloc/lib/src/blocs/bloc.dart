import 'dart:async';
import 'validators.dart';

class Bloc extends Validators {
// class Bloc extends Object with Validators {
  //for private use _ at start
  final _emailControler = StreamController<String>();
  final _passwordControler = StreamController<String>();
  // void changeEmail(String email) {
  //   emailControler.sink.add(email);
  // }

  get changeEmail => _emailControler.sink.add;
  get changePassword => _passwordControler.sink.add;

  Stream<String> get email => _emailControler.stream.transform(validateEmail);
  Stream<String> get password =>
      _passwordControler.stream.transform(validatePassword);

  dispose() {
    _emailControler.close();
    _passwordControler.close();
  }
}

final bloc = Bloc();
