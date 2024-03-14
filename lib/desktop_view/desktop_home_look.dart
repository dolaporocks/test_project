import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:test_project/components/footer.dart';
import 'package:test_project/components/top_bar_content.dart';

class DesktopLook extends StatefulWidget {
  const DesktopLook({Key? key}) : super(key: key);

  @override
  State<DesktopLook> createState() => _DesktopLookState();
}

class _DesktopLookState extends State<DesktopLook> {
  final ScrollController _scrollController = ScrollController();
  double _scrollposition = 0;
  double _opacity = 0;

  _scrollListener() {
    setState(() {
      _scrollposition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollposition < screenSize.height * 0.40
        ? _scrollposition / (screenSize.height * 0.40)
        : 1;

    final height = MediaQuery.of(context).size.height;
    // ignore: unused_local_variable
    final width = MediaQuery.of(context).size.width;

    List<String> imagePaths = [
      'assets/images/hyc1.jpg',
      'assets/images/hyc7.jpg',
      'assets/images/hyc10.jpg',
    ];

    return Scaffold(
      backgroundColor: Colors.brown[50],
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 1000),
        child: TopBarContents(_opacity),
      ),
      resizeToAvoidBottomInset: true,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      viewportFraction: 1,
                      height: height * 0.9,
                    ),
                    items: imagePaths.map((imagePath) {
                      return Container(
                        child: Image.asset(
                          imagePath,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      );
                    }).toList(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Why Choose Us?',
                          style: TextStyle(
                            fontFamily: 'PublicSans',
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.2,
                            color: Color(0xFFa16d55), // Text color
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sodales lacus ut mi semper, vel vehicula lacus tristique. Phasellus eget est felis. Integer nec purus non ipsum gravida vestibulum. Nulla facilisi.',
                          style: TextStyle(
                            fontFamily: 'PublicSans',
                            fontSize: 16,
                            color: Color(0xFFa16d55), // Text color
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Our Services',
                          style: TextStyle(
                            fontFamily: 'PublicSans',
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.2,
                            color: Color(0xFFa16d55), // Text color
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sodales lacus ut mi semper, vel vehicula lacus tristique. Phasellus eget est felis. Integer nec purus non ipsum gravida vestibulum. Nulla facilisi.',
                          style: TextStyle(
                            fontFamily: 'PublicSans',
                            fontSize: 16,
                            color: Color(0xFFa16d55), // Text color
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Footer(),
        ],
      ),
    );
  }
}
