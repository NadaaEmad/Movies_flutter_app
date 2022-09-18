import 'package:flutter/material.dart';

class Friends extends StatefulWidget {
  String name;
  int movies;
  double avgRating;
  String img;
  Friends(this.name,this.movies,this.avgRating,this.img);
  @override
  State<Friends> createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
