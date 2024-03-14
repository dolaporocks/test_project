import 'package:flutter/material.dart';
import 'package:test_project/components/mobile_drawer.dart';

class MobileLook extends StatefulWidget {
  const MobileLook({super.key});

  @override
  State<MobileLook> createState() => _MobileLookState();
}

class _MobileLookState extends State<MobileLook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[50],
        title: Text("HER YES CLUB"),
      ),
      drawer: const MobileDrawer(),

      body:
          Column(
          children: [
            Padding(padding:
            EdgeInsets.all(8),
            child: Image.asset('assets/images/hyc4.JPG',
            width: 480)
            ),
            
            Expanded(
              child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index){
              return Padding(
                padding: const EdgeInsets.all(8),
                child:
                Container(
                  height: 300,
                  color: Colors.grey[700],
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/Hyclogo.JPG'),
                    radius: 30,
                  ),
                  // child: SizedBox(
                  //   child: Image.asset('assets/images/Hyclogo.JPG',
                  //   alignment: Alignment.topLeft,),
                  
                  // ),
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
