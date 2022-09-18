import 'package:flutter/material.dart';
import 'package:flutter1/moviesFlutter/Movies.dart';

class Want extends StatefulWidget {


  @override
  State<Want> createState() => _WantState();
}

class _WantState extends State<Want> {
  List<Movies> userMovies = [
    Movies(title:"Seven", rate:"8.6", genre:"Psychological thriller",author:"David Fincher",img:"assets/images/seven.jpg"),
    Movies(title: "Fight club", rate: "8.8", genre: "Dark comedy",author: "David Fincher",img: "assets/images/fightclub.jpg"),
    Movies(title:"Seven", rate:"8.6", genre:"Psychological thriller",author:"David Fincher",img:"assets/images/seven.jpg"),
    Movies(title: "Dunkirk",rate: "7.8", genre: "War",author: "Christopher Nolan",img: "assets/images/dunkirk.jpg"),
    Movies(title: "Fight club", rate: "8.8", genre: "Dark comedy",author: "David Fincher",img: "assets/images/fightclub.jpg"),
    Movies(title:"Seven", rate:"8.6", genre:"Psychological thriller",author:"David Fincher",img:"assets/images/seven.jpg"),
    Movies(title: "Dunkirk",rate: "7.8", genre: "War",author: "Christopher Nolan",img: "assets/images/dunkirk.jpg"),
    Movies(title: "Fight club", rate: "8.8", genre: "Dark comedy",author: "David Fincher",img: "assets/images/fightclub.jpg"),
    Movies(title:"Seven", rate:"8.6", genre:"Psychological thriller",author:"David Fincher",img:"assets/images/seven.jpg"),
    Movies(title: "Dunkirk",rate: "7.8", genre: "War",author: "Christopher Nolan",img: "assets/images/dunkirk.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Want to watch"),
      ),
      body:

      Container(
        child: ListView(
          children: [
            for(int i=0; i<userMovies.length; i++)
              SizedBox(
                height: 90,
                child: ListTile(
                  subtitle: Text("8/19/2022"),
                  title: Text(userMovies[i].title),
                  leading: Image.asset(userMovies[i].img),
                  trailing: Text("${userMovies[i].rate} /10") ,

                ),
              ),


          ],
        ),
      ),
    );
  }
}
