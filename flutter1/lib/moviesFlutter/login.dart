import 'package:flutter/material.dart';
import 'package:flutter1/moviesFlutter/signup.dart';

import 'User.dart';
import 'moviesHome.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}
class _LoginState extends State<Login> {
 bool hidden = true;

 var email = TextEditingController();
 var pass = TextEditingController();
 bool isVisible = false;

 Widget hiddenPass(bool h,Function f)
 {
   return MaterialButton(
     onPressed: f,
     child: Icon(Icons.remove_red_eye),


   );

 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Column(
        children: [

          Visibility(
            visible: isVisible,
            child: Container(
              child:
              Text("Wrong email or password", style:
                TextStyle(
                  fontSize: 15, color: Colors.red,
                ),)
              ,
            ),
          ),


          Padding(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
              controller: email,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                labelText: 'email',
                hintText: 'Enter valid email..',
                prefixIcon: Icon(Icons.email),

              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
              controller: pass,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                labelText: 'password',
                hintText: 'Enter password..',
                prefixIcon: Icon(Icons.password),
                suffixIcon: hiddenPass(hidden, (){
                  setState(() {
                    if(hidden == true)
                      hidden = false;
                    else
                      hidden = true;
                  });
                }),


              ),
              obscureText: hidden,


            ),

          ),
          MaterialButton(onPressed: (){
            isVisible = true;
            setState(() {

            });

            for(int i=0; i<Signup.signedUsers.length; i++)
              {
                if(email.text == Signup.signedUsers[i].email && pass.text == Signup.signedUsers[i].password)
                  {
                    Navigator.of(context).push(
                        MaterialPageRoute( //build for the route page
                            builder: (context) { //context of type build context
                              return MoviesHome(username: Signup.signedUsers[i].username,
                                  email: Signup.signedUsers[i].email,
                                  img: Signup.signedUsers[i].img,
                                  phoneNumber: Signup.signedUsers[i].phoneNumber,
                                  target: Signup.signedUsers[i].target);
                            }));
                   /* User user = User(Signup.signedUsers[i].username,
                        Signup.signedUsers[i].email,
                        Signup.signedUsers[i].img,
                        Signup.signedUsers[i].phoneNumber,
                        Signup.signedUsers[i].target);
                    user.setCurrentUser(user.username, user.email);*/

                   /* print(user.getCurrentUsername());
                    print(user.getCurrentEmail());*/

                  }
                else
                  {
                    isVisible = true;
                    setState(() {

                    });
                  }


              }



          },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)),
          color: Colors.blue,
            minWidth: 150,
            child: Text('login', style: TextStyle(
              fontSize: 19,
              color: Colors.white,
            ),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("don't have an account?"),
              TextButton(onPressed: (){
                Navigator.of(context).push(
                    MaterialPageRoute( //build for the route page
                        builder: (context) { //context of type build context
                          return Signup();
                        }));

              }, child: Text("click here",
                style: TextStyle(
                color: Colors.blue,

                )
              ),
              )
            ],
          ),



        ],
      ),
    );
  }
}
