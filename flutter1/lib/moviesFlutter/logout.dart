import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter1/moviesFlutter/login.dart';

class Logout extends StatefulWidget {

  @override
  State<Logout> createState() => _LogoutState();
}

class _LogoutState extends State<Logout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(child: Image.asset("assets/images/logout1.jpg")),
          Text("You logged out!"),
          MaterialButton(onPressed:() {
            Navigator.of(context).push(
                MaterialPageRoute( //build for the route page
                    builder: (context) { //context of type build context
                      return Login();
                    }));

          },
            child: Text("Login"),
            color: Colors.blue,
          )
        ],
      ),

    );
  }
}
