import 'package:flutter/material.dart';
import 'package:test_project/mobile_view/mobile_register.dart';
import 'package:test_project/mobile_view/mobile_register_daycare.dart';
import 'package:test_project/pages/about_page.dart';
import 'package:test_project/pages/auth_page.dart';
import 'package:test_project/pages/contact_page.dart';
import 'package:test_project/pages/home_page.dart';

class MobileDrawer extends StatefulWidget {
  MobileDrawer({super.key,});

  @override
  MobileDrawerState createState() => MobileDrawerState();

}

class MobileDrawerState extends State<MobileDrawer> {
  void _showDialog(){
    showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          backgroundColor: Colors.brown[50],
          title: const Text('DayCare Provider or Parent'),
          content: const Text('Are you a DayCare Provider'),
          actions: [
            MaterialButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterDayCare()),
                );
              },
              child: Text('Yes'),
              ),
              MaterialButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MobileRegister()),
                );
              },
              child: Text('No'),
              ),
          ],
        );
      }
      );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.brown[50],
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DrawerHeader(
              child: Image.asset('assets/images/Hyclogo.JPG'),
            ),
            ListTile(
              leading: Icon(Icons.home),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              title: Text('HOME'),
            ),
            ListTile(
              leading: Icon(Icons.question_answer),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ResponsivePage()),
                );
              },
              title: Text('ABOUT'),
            ),
            ListTile(
              leading: Icon(Icons.contact_emergency),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactUsPage()),
                );
              },
              title: Text('CONTACT'),
            ),
            ListTile(
              leading: Icon(Icons.login),
              
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AuthPage()),
                );
              },
              title: const Text('LOGIN HERE'),
            ),
            ListTile(
              leading: Icon(Icons.app_registration_rounded),
              onTap: () {
                _showDialog();},
              title: Text('REGISTER HERE'),
            ),
          ],
        ),
      ),
    );
  }
}
