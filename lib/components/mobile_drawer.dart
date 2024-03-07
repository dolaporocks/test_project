import 'package:flutter/material.dart';

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({super.key});

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
            DrawerHeader(child: Image.asset('assets/images/Hyclogo.JPG'),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('HOME'),
            ),
          ListTile(
            leading: Icon(Icons.question_answer),
            title: Text('ABOUT'),
            ),ListTile(
            leading: Icon(Icons.contact_emergency),
            title: Text('CONTACT'),
            ),ListTile(
            leading: Icon(Icons.login),
            title: Text('LOGIN HERE'),
            ),
            ListTile(
            leading: Icon(Icons.app_registration_rounded),
            title: Text('REGISTER HERE'),
            ),
          ],
        ),
      ),
    );
  }
}