import 'package:flutter/material.dart';
import 'package:flutter1/moviesFlutter/top.dart';
import 'package:flutter1/moviesFlutter/want.dart';
import 'package:flutter1/moviesFlutter/watched.dart';
import 'package:flutter1/moviesFlutter/friendList.dart';
import 'package:flutter1/moviesFlutter/friends.dart';
import 'package:flutter1/moviesFlutter/home.dart';
import 'package:flutter1/moviesFlutter/myMovies.dart';
import 'package:flutter1/moviesFlutter/search.dart';
import 'package:flutter1/moviesFlutter/settings.dart';
import 'package:flutter1/moviesFlutter/userInfo.dart';

class MoviesHome extends StatelessWidget {
   String username; String email; String img; String phoneNumber; int target; String password;
  MoviesHome({this.username, this.email, this.img, this.phoneNumber,  this.target, this.password});


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: "Home",
                ),
                Tab(
                  icon: Icon(Icons.movie),
                  text: "My Movies",
                ),
                Tab(
                  icon: Icon(Icons.search),
                  text: "Search",
                )


              ],
            )
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(accountName: Text(username.toString()),
                accountEmail: Text(email.toString()),
                currentAccountPicture: InkWell(
                  onTap: ()
                  {
                    Navigator.of(context).push(
                        MaterialPageRoute( //build for the route page
                            builder: (context) { //context of type build context
                              return UserInfo(username: username, email: email, password: password, img: img, phoneNumber: phoneNumber,);
                            }));
                  },
                  child: CircleAvatar(
                    backgroundImage: AssetImage(img.toString()),


                  ),
                ),

              ),
              ListTile(
                title: Text("Friends", style: (TextStyle(
                    fontWeight: FontWeight.bold
                ))
                ),
                trailing: Icon(Icons.group),
                onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute( //build for the route page
                          builder: (context) { //context of type build context
                            return FriendList();
                          }));
                },
              ),
              Divider(),
              ListTile(
                title: Text("Top picks 2022",style: (TextStyle(
                    fontWeight: FontWeight.bold
                ))),
                trailing: Icon(Icons.movie),
                onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute( //build for the route page
                          builder: (context) { //context of type build context
                            return Top();
                          }));

                },
              ),
              Divider(),
              ListTile(
                title: Text("Settings",style: (TextStyle(
                    fontWeight: FontWeight.bold
                ))),
                trailing: Icon(Icons.settings),
                onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute( //build for the route page
                          builder: (context) { //context of type build context
                            return Settings();
                          }));
                },
              ),
              Divider(),

            ],
          ),
        ),
        body: TabBarView(
          children: [
            Home(),
          MyMovies(),
            Search(),
          ],
        ),


      ),
    );
  }
}
