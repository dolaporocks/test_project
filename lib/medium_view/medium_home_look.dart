import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:test_project/components/footer.dart';
import 'package:test_project/components/mobile_drawer.dart';

class MediumLook extends StatefulWidget {
  const MediumLook({super.key});

  @override
  State<MediumLook> createState() => MediumLookState();
}

class MediumLookState extends State<MediumLook> {
  Widget build(BuildContext context) {
    List<String> imagePaths = [
      'assets/images/hyc1.jpg',
      'assets/images/hyc7.jpg',
      'assets/images/hyc10.jpg',
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[50],
        title: Text("HER YES CLUB"),
      ),
      drawer: MobileDrawer(),
      body: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 16 / 9,
              viewportFraction: 1,
            ),
            items: imagePaths.map((imagePath) {
              return Image.asset(
                imagePath,
                fit: BoxFit.cover,
                width: double.infinity,
              );
            }).toList(),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    color: Colors.grey[700],
                    height: 300,
                  ),
                );
              },
            ),
          ),
          Footer(),
        ],
      ),
    );
  }
}
