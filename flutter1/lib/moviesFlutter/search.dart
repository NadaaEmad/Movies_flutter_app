import 'package:flutter/material.dart';
import 'package:flutter1/moviesFlutter/Movies.dart';

class Search extends StatefulWidget {

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  var movie = TextEditingController();
  var rate = TextEditingController();
  Movies show = Movies(img: "assets/images/movies.jpg",);

  List<Movies> userMovies = [
    Movies(title: "Fight club",rate: "8.8",genre: "Dark comedy",author: "David Fincher",img: "assets/images/fightclub.jpg"),
    Movies(title: "Seven",rate: "8.6",genre: "Psychological thriller",author: "David Fincher",img: "assets/images/seven.jpg"),
    Movies(title: "Dunkirk",rate: "7.8",genre: "War",author: "Christopher Nolan",img: "assets/images/dunkirk.jpg"),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          
      SingleChildScrollView(
        child: Column(

          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                controller: movie,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(2.0),
                  ),

                  hintText: 'Search...',
                  suffixIcon: MaterialButton(

                      onPressed: () {
                        setState(() {
                          for(int i=0; i<userMovies.length; i++)
                          {
                            if(userMovies[i].title == movie.text)
                            {
                              print(userMovies[i].title);
                              show.title = userMovies[i].title;
                              show.rate = userMovies[i].rate;
                              show.genre = userMovies[i].genre;
                              show.author = userMovies[i].author;
                              show.img = userMovies[i].img;


                            }
                            else {
                              print("Not found");



                            }
                          }
                        });


                      },
                      child: Icon(Icons.search)),





                ),



              ),

            ),
            Container(
                width: 400,
                height: 200,
                child: Image.asset(show.img)
            ),
            Column(
              children: [
                Text("Title: ${show.title}", style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Rate: ${show.rate}", style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),),
                    Icon(Icons.star_rate),
                  ],
                ),
                Text("Genre: ${show.genre}", style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),),
                Text("Director: ${show.author}", style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),),

              ],

            ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextFormField(
                    controller: rate,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(2.0),
                      ),

                      hintText: 'Enter your rate from 1 to 10..',

                      ),

                    ),

                  ),
            MaterialButton(
              color: Colors.blue,
                onPressed: (){
                setState(() {
                  rate.text = 'Rated!';

                });
                },
                child: Text("Rate")),



          ],

        ),
      ),




    );
  }
}
