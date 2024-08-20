import 'package:flutter/material.dart';
import 'package:flutter_application_loginform/src/screen/login_screen.dart';

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Log me in",
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}
