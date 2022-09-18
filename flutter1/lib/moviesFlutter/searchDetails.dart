import 'package:flutter/material.dart';

class SearchDetails extends StatefulWidget {
  bool vis;
  String img;
  String title;
  String rate;
  String genre;
  String author;
  SearchDetails({this.vis,this.img,this.title,this.rate,this.genre,this.author});

  @override
  State<SearchDetails> createState() => _SearchDetailsState();
}

class _SearchDetailsState extends State<SearchDetails> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SearchDetails"),
      ),
      body:
          Visibility(
            visible: SearchDetails().vis,
            child: Column(
              children: [
                Container(
                    width: 400,
                    height: 200,
                    child: Image.asset(SearchDetails().img)
                ),
                Column(
                  children: [
                    Text("Title: ${SearchDetails().title}", style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Rate: ${SearchDetails().rate}", style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),),
                        Icon(Icons.star_rate),
                      ],
                    ),
                    Text("Genre: ${SearchDetails().genre}", style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),),
                    Text("Director: ${SearchDetails().author}", style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),),

                  ],

                ),

              ],
            ),
          )

    );
  }
}
