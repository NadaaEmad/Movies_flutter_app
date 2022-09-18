import 'package:flutter/material.dart';
import 'package:flutter1/moviesFlutter/User.dart';
import 'package:flutter1/moviesFlutter/logout.dart';


class UserInfo extends StatelessWidget {
  String username; String email; String img; String phoneNumber; int target; String password;
  UserInfo({this.username, this.email, this.img, this.phoneNumber,  this.target, this.password});
  //User user = User("Nada Emad", "nada@gmail.com","assets/images/lady.jpg","01005457869",40);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: ListView(
        children: [

          Card(
                child: Center(
                  child: CircleAvatar(
                    maxRadius: 50,
                    backgroundImage: AssetImage(img.toString()),
                  ),
                ),
              ),

           Card(child:
           ListTile(
             title: Center(
               child: Text(username.toString(),
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
             ),
           )
            ),

          Card(
            child: ListTile(
              title: Text("Email: ${email.toString()}"),
            ),
          ),
          ListTile(
            title: Text("Phone number: ${phoneNumber.toString()}"),
          ),
          Divider(),
          ListTile(
            title: Text("Movies: 61"),
          ),
          Divider(),
          ListTile(
            title: Text("avg rating: 3.4"),
            trailing: Icon(Icons.star_rate),
          ),
          Divider(),
          ListTile(
            title: MaterialButton(
              onPressed: (){
                Navigator.of(context).push(
                    MaterialPageRoute( //build for the route page
                        builder: (context) { //context of type build context
                          return Logout();
                        }));
              },
                child: Text("Logout"),
              color: Colors.blue,
            ),
          )




        ],
      )




    );
  }
}
