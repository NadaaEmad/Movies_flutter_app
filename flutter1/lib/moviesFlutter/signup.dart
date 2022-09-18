import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter1/moviesFlutter/login.dart';

import 'User.dart';
import 'moviesHome.dart';


class Signup extends StatefulWidget {
  static List<User> signedUsers = [];

  @override
  _SignupState createState() => _SignupState();
}
class _SignupState extends State<Signup> {
  bool hidden = true;
  bool value = false;
  bool isVisible = false;
  var email = TextEditingController();
  var pass = TextEditingController();
  var first = TextEditingController();
  var second = TextEditingController();
  var confirm = TextEditingController();
  var phone = TextEditingController();




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
        title: Text('Signup'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          
          children: [
            Visibility(
              visible: isVisible,
              child: Container(
                child:
                Text("Wrong password", style:
                TextStyle(
                  fontSize: 15, color: Colors.red,
                ),)
                ,
              ),
            ),


                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextFormField(
                    controller: first,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      labelText: 'First Name',
                      hintText: 'Enter your first name..',
                      prefixIcon: Icon(Icons.edit),

                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextFormField(
                    controller: second,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      labelText: 'Second Name',
                      hintText: 'Enter your second name..',
                      prefixIcon: Icon(Icons.edit),

                    ),

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
                controller: phone,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  labelText: 'Phone number',
                  hintText: 'Enter your phone number..',
                  prefixIcon: Icon(Icons.phone),

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
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                controller: confirm,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  labelText: 'confirm password',
                  hintText: 'Confirm your password..',
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

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: this.value,
                  onChanged: (bool value){
                    setState(() {
                      this.value = value;
                    });
                  },

                ),
                Text("I accept the terms of use & privacy policy")
              ],
            ),
            MaterialButton(onPressed: (){
              if(pass.text == confirm.text)
                {
                  User user = User(first.text +" "+ second.text , email.text,"assets/images/male.jpg", phone.text,0, password: pass.text,);
                  Signup.signedUsers.add(user);

                  Navigator.of(context).push(
                      MaterialPageRoute( //build for the route page
                          builder: (context) { //context of type build context
                            return Login();
                          }));
                }
              else
                {
                  isVisible = true;
                  setState(() {

                  });
                }

            },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Colors.blue,
              minWidth: 150,
              child: Text('signup', style: TextStyle(
                fontSize: 19,
                color: Colors.white,
              ),),
            ),





          ],
        ),
      ),
    );
  }

}
