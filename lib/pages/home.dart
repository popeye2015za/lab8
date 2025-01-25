

import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';
import 'package:lab8/services/auth_service.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  AuthService authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("login"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          child: GoogleAuthButton(
            onPressed: (){
              authService.signInWithGoogle().then((value) {
                print(value);
              },);
            },
          ),
        ),
      ),
    );
  }
}