import 'package:flutter/material.dart';
import 'package:flutter1/moviesFlutter/Movies.dart';
import 'package:flutter1/moviesFlutter/signup.dart';

class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Movies> listOfMovies = [
    Movies(name: "Sara Ahmad",userImg: "assets/images/lady.jpg",title: "Fight club", rate: "8.8", genre: "Dark comedy",author: "David Fincher",img: "assets/images/fightclub.jpg"),
    Movies(name:"Omar Mohamed",userImg:"assets/images/male.jpg",title:"Seven", rate:"8.6", genre:"Psychological thriller",author:"David Fincher",img:"assets/images/seven.jpg"),
    Movies(name: "Mona Ali",userImg: "assets/images/lady.jpg",title: "Dunkirk",rate: "7.8", genre: "War",author: "Christopher Nolan",img: "assets/images/dunkirk.jpg"),
    Movies(name: "Ahmad Mohamed",userImg: "assets/images/male.jpg",title: "Fight club", rate: "8.8", genre: "Dark comedy",author: "David Fincher",img: "assets/images/fightclub.jpg"),
    Movies(name: "Sara Ahmad",userImg: "assets/images/lady.jpg",title: "Seven",rate: "8.6", genre: "Psychological thriller",author: "David Fincher",img: "assets/images/seven.jpg"),
    Movies(name: "Omar Mohamed",userImg: "assets/images/male.jpg",title: "Dunkirk", rate: "7.8", genre: "War",author: "Christopher Nolan",img: "assets/images/dunkirk.jpg"),
  ];




  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          for(int i=0; i<listOfMovies.length; i++)

            Column(
              children: [

                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(

                    children: [
                      CircleAvatar(
                        maxRadius:20,
                        backgroundImage: AssetImage(listOfMovies[i].userImg),
                      ),
                      Text("${listOfMovies[i].name} is currently watching ${listOfMovies[i].title}",),




                    ],

                  ),

                ),

                Container(
                    width: 400,
                    height: 200,
                    child: Image.asset(listOfMovies[i].img)
                ),
                Divider(color: Colors.white,),
                Column(
                  children: [
                    Text("Title: ${listOfMovies[i].title}", style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Rate: ${listOfMovies[i].rate}", style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),),
                        Icon(Icons.star_rate),
                      ],
                    ),
                    Text("Genre: ${listOfMovies[i].genre}", style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),),
                    Text("Director: ${listOfMovies[i].author}", style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),),

                  ],

                ),
                Divider(
                  thickness: 3,
                ),


              ],


            ),



        ],
      ),
    );
  }
}
