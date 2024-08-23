import 'package:flutter/material.dart';
import '../mixins/validation_mixin.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> with ValidationMixin {
  @override
  final formkey = GlobalKey<FormState>();
  String? email;
  String? password;

  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      margin: const EdgeInsets.all(20.0),
      child: Form(
          key: formkey,
          child: Column(
            children: [
              emailField(),
              passwordField(),
              Container(margin: const EdgeInsets.only(top: 30.0)),
              submitButton()
            ],
          )),
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          labelText: 'Email Address', hintText: 'you@example.com'),
      validator: validateEmail,
      onSaved: (newValue) {
        email = newValue;
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      obscureText: false,
      decoration:
          InputDecoration(labelText: 'Enter password', hintText: 'password'),
      validator: validatePassword,
      onSaved: (newValue) {
        password = newValue;
      },
    );
  }

  Widget submitButton() {
    return ElevatedButton(
      onPressed: () {
        if (formkey.currentState!.validate()) {
          formkey.currentState!.save();
          print("The emails is $email and password is $password");
        }
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      child: Text('Submit'),
    );
  }
}
