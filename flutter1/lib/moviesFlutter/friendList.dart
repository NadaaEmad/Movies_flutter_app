import 'package:flutter/material.dart';
import 'package:flutter1/moviesFlutter/friends.dart';

class FriendList extends StatefulWidget {


  @override
  State<FriendList> createState() => _FriendListState();
}

class _FriendListState extends State<FriendList> {
  List<Friends> friends = [
    Friends("Sara Ahmad", 45, 3.5,"assets/images/lady.jpg"),
    Friends("Omar Mohamed", 160, 4.0,"assets/images/male.jpg"),
    Friends("Mona Ali", 200, 2.6,"assets/images/lady.jpg"),
    Friends("Ahmad Mohamed", 30, 1.6,"assets/images/male.jpg"),
    Friends("Sara Ahmad", 45, 3.5,"assets/images/lady.jpg"),
    Friends("Omar Mohamed", 160, 4.0,"assets/images/male.jpg"),
    Friends("Mona Ali", 200, 2.6,"assets/images/lady.jpg"),
    Friends("Ahmad Mohamed", 30, 1.6,"assets/images/male.jpg"),
    Friends("Sara Ahmad", 45, 3.5,"assets/images/lady.jpg"),
    Friends("Omar Mohamed", 160, 4.0,"assets/images/male.jpg"),
    Friends("Mona Ali", 200, 2.6,"assets/images/lady.jpg"),
    Friends("Ahmad Mohamed", 30, 1.6,"assets/images/male.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Friends"),
      ),
      body: Container(
        child: ListView(
          children: [
            for(int i=0; i<friends.length; i++)
              ListTile(
                title: Text(friends[i].name),
                subtitle: Text("Movies: ${friends[i].movies}  ,avg rating: ${friends[i].avgRating}"),
                leading: CircleAvatar(
                  backgroundImage: AssetImage(friends[i].img),
                  maxRadius: 30,
                ),
                trailing:  MaterialButton(onPressed: (){
                  setState(() {
                    friends.removeAt(i);
                  });

                },
                  color: Colors.blue,
                  child: Text("Remove"),
                ),
              ),

          ],

        ),
      ),
    );
  }
}
