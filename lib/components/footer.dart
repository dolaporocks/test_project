import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 185, 154, 142),
      padding: EdgeInsets.all(20),
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            // For mobile layout
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildSocialIcons(),
                SizedBox(height: 20),
                _buildContactInfo(),
                SizedBox(height: 20),
                _buildFollowText(),
              ],
            );
          } else {
            // For medium layout
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildSocialIcons(),
                _buildContactInfo(),
                _buildFollowText(),
              ],
            );
          }
        },
      ),
    );
  }

  // Function to build social icons
  Widget _buildSocialIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildIconWithLink(
          assetName: 'assets/images/insta.png',
          url: 'https://www.instagram.com/heryesclub?igshid=1lp4oawv66ld1',
        ),
        SizedBox(width: 10),
        _buildIconWithLink(
          assetName: 'assets/images/fb.png',
          url: 'https://www.facebook.com/heryesclub',
        ),
        SizedBox(width: 10),
        _buildIconWithLink(
          assetName: 'assets/images/email.png',
          url: 'mailto:hello@heryesclub.ca',
        ),
      ],
    );
  }

  // Function to build contact information
  Widget _buildContactInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Empowering Moms, Nurturing Little Ones. ',
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'NotoSerif',
            fontStyle: FontStyle.italic,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  // Function to build follow text
  Widget _buildFollowText() {
    return Text(
      'Follow us for updates, tips, and more!',
      style: TextStyle(
        fontSize: 14,
        fontFamily: 'NotoSerif',
        fontStyle: FontStyle.italic,
        color: Colors.black,
      ),
    );
  }

  // Function to build icon with link
  Widget _buildIconWithLink({
    required String assetName,
    required String url,
  }) {
    return GestureDetector(
      onTap: () {
        _launchURL(url);
      },
      child: Image.asset(
        assetName,
        height: 30,
        width: 30,
      ),
    );
  }

  // Function to launch URL
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
