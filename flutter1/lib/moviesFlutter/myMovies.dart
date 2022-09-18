import 'package:flutter/material.dart';
import 'package:flutter1/moviesFlutter/Movies.dart';
import 'package:flutter1/moviesFlutter/User.dart';
import 'package:flutter1/moviesFlutter/currently.dart';
import 'package:flutter1/moviesFlutter/want.dart';
import 'package:flutter1/moviesFlutter/watched.dart';
import 'package:flutter1/moviesFlutter/add.dart';
import 'package:flutter1/moviesFlutter/friends.dart';
import 'package:flutter1/moviesFlutter/home.dart';


class MyMovies extends StatefulWidget {


  @override
  State<MyMovies> createState() => _MyMoviesState();
}

class _MyMoviesState extends State<MyMovies> {

  List<Movies> userMovies = [
    Movies(name: "Sara Ahmad",userImg: "assets/images/lady.jpg",title: "Fight club", rate: "8.8", genre: "Dark comedy",author: "David Fincher",img: "assets/images/fightclub.jpg"),
    Movies(name:"Omar Mohamed",userImg:"assets/images/male.jpg",title:"Seven", rate:"8.6", genre:"Psychological thriller",author:"David Fincher",img:"assets/images/seven.jpg"),
    Movies(name: "Mona Ali",userImg: "assets/images/lady.jpg",title: "Dunkirk",rate: "7.8", genre: "War",author: "Christopher Nolan",img: "assets/images/dunkirk.jpg"),
    Movies(name: "Ahmad Mohamed",userImg: "assets/images/male.jpg",title: "Fight club", rate: "8.8", genre: "Dark comedy",author: "David Fincher",img: "assets/images/fightclub.jpg"),
    Movies(name: "Sara Ahmad",userImg: "assets/images/lady.jpg",title: "Fight club", rate: "8.8", genre: "Dark comedy",author: "David Fincher",img: "assets/images/fightclub.jpg"),
    Movies(name:"Omar Mohamed",userImg:"assets/images/male.jpg",title:"Seven", rate:"8.6", genre:"Psychological thriller",author:"David Fincher",img:"assets/images/seven.jpg"),
    Movies(name: "Mona Ali",userImg: "assets/images/lady.jpg",title: "Dunkirk",rate: "7.8", genre: "War",author: "Christopher Nolan",img: "assets/images/dunkirk.jpg"),
    Movies(name: "Ahmad Mohamed",userImg: "assets/images/male.jpg",title: "Fight club", rate: "8.8", genre: "Dark comedy",author: "David Fincher",img: "assets/images/fightclub.jpg"),
  ];

  User user = User("Nada Emad", "ne@gmail.com","assets/images/lady.jpg","01005457869",40);
  var target = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
     child: ListView(
        children: [
          Column(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Row(

                  children: [
                    CircleAvatar(
                      maxRadius: 40,
                      backgroundImage: AssetImage("assets/images/lady.jpg"),
                    ),
                    Text("You have watched ${userMovies.length} of ${user.target} movies",
                      style: TextStyle(fontSize: 15),
                    ),



                  ],

                ),

              ),

              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  controller: target,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(2.0),
                    ),

                    hintText: 'Change target',




                  ),



                ),

              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    user.target = int.parse(target.text);
                  });


                },



                child: Text("Done"),
                color: Colors.blue,
              ),


            ],

          ),
          Divider(
            height: 40,
          ),
          Center(child: Text("Shelves", style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20,
          ),)),
          Divider(
            indent: 10,
            endIndent: 10,
          ),
          ListTile(
            onTap: ()
            {
              Navigator.of(context).push(
                  MaterialPageRoute( //build for the route page
                      builder: (context) { //context of type build context
                        return Watched();
                      }));
            },

            title: Text("Watched"),
            leading: Image.asset("assets/images/movies.jpg"),
            subtitle: Text("${userMovies.length} movies"),
            trailing: InkWell(
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute( //build for the route page
                        builder: (context) { //context of type build context
                          return Add();
                        }));
              },
              child: CircleAvatar(
                backgroundColor: Colors.blue,
                  child: Icon(Icons.add)),
            ),
          ),
          Divider(height: 60,),

          ListTile(
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute( //build for the route page
                      builder: (context) { //context of type build context
                        return Currently();
                      }));
            },
            title: Text("Currently Watching"),
            leading:  Image.asset("assets/images/movies.jpg"),
            subtitle: Text("3 movies"),
    trailing: InkWell(
      onTap: (){
        Navigator.of(context).push(
            MaterialPageRoute( //build for the route page
                builder: (context) { //context of type build context
                  return Add();
                }));
      },
      child: CircleAvatar(
      backgroundColor: Colors.blue,
      child: Icon(Icons.add)),
    ),

          ),
          Divider(
            height: 60,
          ),
          ListTile(
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute( //build for the route page
                      builder: (context) { //context of type build context
                        return Want();
                      }));
            },
            title: Text("Want to watch"),
            leading: Image.asset("assets/images/movies.jpg"),
            subtitle: Text("50 movies"),
    trailing: InkWell(
      onTap: (){
        Navigator.of(context).push(
            MaterialPageRoute( //build for the route page
                builder: (context) { //context of type build context
                  return Add();
                }));
      },
      child: CircleAvatar(
      backgroundColor: Colors.blue,
      child: Icon(Icons.add)),
    ),

          ),
         SizedBox(height: 20,)



        ],


      ),



    );
  }



}
