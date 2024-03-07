import 'package:flutter/material.dart';
import 'package:test_project/components/mobile_drawer.dart';

class MediumLook extends StatefulWidget {
  const MediumLook({super.key});

  @override
  State<MediumLook> createState() => MediumLookState();
}

class MediumLookState extends State<MediumLook> {
Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[50],
        title: Text("HER YES CLUB"),
      ),
      drawer: MobileDrawer(),
      body:
          Column(
          children: [
            Padding(padding:
            EdgeInsets.all(8),
            child: Image.asset('assets/images/hyc4.JPG',
            width: 900)
            ),

            Expanded(
              child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index){
              return Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                    color: Colors.grey[700],
                    height: 300,
                ),
              );
            }
            ),
            )
          ],
        ),
        
    );
  }
}