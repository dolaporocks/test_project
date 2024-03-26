import 'package:flutter/material.dart';
import 'package:test_project/components/mobile_drawer.dart';

class MobileBlog extends StatefulWidget {
  const MobileBlog({super.key});

  @override
  State<MobileBlog> createState() => _MobileBlogState();
}

class _MobileBlogState extends State<MobileBlog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[50],
        title: const Text("HYC BLOGSS!",
        style: TextStyle(
          color: Colors.brown,
          fontWeight: FontWeight.bold
        ),
        ),
      ),
      drawer: MobileDrawer(),
      
    );
  }
}