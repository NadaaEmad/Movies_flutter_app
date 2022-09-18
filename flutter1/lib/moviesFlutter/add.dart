import 'package:flutter/material.dart';
import 'package:flutter1/moviesFlutter/watched.dart';

class Add extends StatefulWidget {


  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  var mov =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
              controller: mov,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(2.0),
                ),

                hintText: 'Add a movie',

              ),

            ),

          ),
          MaterialButton(
            onPressed: (){
              mov.text = "Added Successfully!";
            },
              color: Colors.blue,
            child: Text("Done"),
          ),
        ],

      ),

    );
  }
}
