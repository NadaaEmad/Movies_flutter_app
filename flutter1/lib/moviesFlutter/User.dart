import 'package:flutter/material.dart';

class User extends StatefulWidget {
  String username;
  String email;
  String img;
  String phoneNumber;

  int target;
  String password;
   void setCurrentUser(String username, String email)
   {
     this.username = username;
     this.email = email;
   }
   String getCurrentUsername()
   {
     return this.username;
   }
   String getCurrentEmail()
   {
     return this.email;
   }
  User(this.username, this.email, this.img, this.phoneNumber,  this.target, {this.password});
  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
