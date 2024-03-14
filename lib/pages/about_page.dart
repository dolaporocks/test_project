import 'package:flutter/material.dart';
import 'package:test_project/components/footer.dart';
import 'package:test_project/components/top_bar_content.dart';

class ResponsivePage extends StatefulWidget {
  ResponsivePage({super.key});

  @override
  State<ResponsivePage> createState() => ResponsivePageState();
}

class ResponsivePageState extends State<ResponsivePage> {
  final ScrollController _scrollController = ScrollController();
  double _scrollposition = 0;
  double _opacity = 0;

  _scrollListener() {
    setState(() {
      _scrollposition = _scrollController.position.pixels;
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollposition < screenSize.height * 0.40
    ? _scrollposition / (screenSize.height * 0.40)
    : 1;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 230, 235),
      appBar:  PreferredSize(
      preferredSize: Size(screenSize.width, 1000),
      child: TopBarContents(_opacity),),
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth >= 1200) {
              // Desktop layout
              return DesktopLayout();
            } else if (constraints.maxWidth >= 600) {
              // Tablet layout
              return TabletLayout();
            } else {
              // Mobile layout
              return MobileLayout();
            }
          },
        ),
      ),
    );
  }
}

class DesktopLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'ABOUT US',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 600,
              height: 400,
              color: Colors.grey,
              child: Image.asset(
                'assets/images/hyc11.jpg',
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  '•	Introducing Her Yes Club, a revolutionary digital support system designed to address the pressing challenges faced by Canadian parents in accessing reliable childcare. In a landscape where nearly 50 percent of parents struggle to secure suitable childcare and over 55 percent of women bear the primary responsibility for its management, Her Yes Club emerges as a beacon of support. With the aim of alleviating the burdens on mothers, our premium two-sided subscription-based platform seamlessly connects mothers with trusted childcare providers based on individual needs such as location, support requirements, and budget constraints.',
                  style: TextStyle(
                    color: Color.fromARGB(255, 102, 59, 59),
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 60), // some spacing
        Footer(),
      ],
    );
  }
}

class TabletLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'ABOUT US',
          style: TextStyle(
            color: Colors.brown,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 400,
              height: 300,
              color: Colors.grey,
              child: Image.asset(
                'assets/images/hyc11.jpg',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  width: double.infinity,
                  child: Text(
                    '•	Introducing Her Yes Club, a revolutionary digital support system designed to address the pressing challenges faced by Canadian parents in accessing reliable childcare. In a landscape where nearly 50 percent of parents struggle to secure suitable childcare and over 55 percent of women bear the primary responsibility for its management, Her Yes Club emerges as a beacon of support. With the aim of alleviating the burdens on mothers, our premium two-sided subscription-based platform seamlessly connects mothers with trusted childcare providers based on individual needs such as location, support requirements, and budget constraints.',
                    style: TextStyle(
                      color: Color.fromARGB(255, 102, 59, 59),
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class MobileLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'ABOUT US',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Column(
            children: [
              Container(
                width: 200,
                height: 150,
                color: Colors.grey,
                child: Image.asset(
                  'assets/images/hyc11.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 200,
                child: Text(
                  '•	Introducing Her Yes Club, a revolutionary digital support system designed to address the pressing challenges faced by Canadian parents in accessing reliable childcare. In a landscape where nearly 50 percent of parents struggle to secure suitable childcare and over 55 percent of women bear the primary responsibility for its management, Her Yes Club emerges as a beacon of support. With the aim of alleviating the burdens on mothers, our premium two-sided subscription-based platform seamlessly connects mothers with trusted childcare providers based on individual needs such as location, support requirements, and budget constraints.',
                  style: TextStyle(
                    color: Color.fromARGB(255, 102, 59, 59),
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ResponsivePage(),
  ));
}
