import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:test_project/components/text_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final emailaddController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() async{

    try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailaddController.text,
      password: passwordController.text
    );
    } on FirebaseAuthException catch (e){
      if(e.code == 'user-not-found'){
        WrongEmailEntered();
      } else if(e.code == 'wrong-password'){
        WrongPasswordEntered();
      }
    }

  }

  void WrongEmailEntered(){
    var context;
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          title: Text('Incorrect Email'),
        );
  },
    );
  }

  void WrongPasswordEntered(){
    var context;
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          title: Text('Incorrect Password'),
        );
  },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.brown[50],
      appBar: AppBar(
        backgroundColor: Colors.brown[50],
        title: Text("HER YES CLUB"),
      ),
      // drawer: const MobileDrawer(),

    body: SafeArea(
      child: Center(
        child: Column(
          children: [
            // SizedBox(height: 60),

            // Image.asset('assets/images/hyc2.JPG',
            // width: 370,
            // height: 300,),

            SizedBox(height: 50),
            Text('Sign In Now!!!',
            style: TextStyle(
              fontSize: 20,
              color: Colors.brown
            ),),

            
            SizedBox(height: 20),
            MyTextField(
              controller: emailaddController,
              hintText: 'EmailAddress',
              obscureText: false,
            ),

            SizedBox(height: 20),
            MyTextField(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true,
            ),

            SizedBox(height: 25),
            GestureDetector(
            onTap: (){
              signUserIn();
            },
            child: Container(
              padding: EdgeInsets.all(25),
            margin: EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: Colors.brown,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Center(
              child: Text("Sign In",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18
              ),)),
            ),
            )
          ],
        ),
    ),
    ),

      
    );
  }
}