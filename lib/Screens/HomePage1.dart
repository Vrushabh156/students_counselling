import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(HomePage1());
}

final Uri _url1 = Uri.parse('https://www.nirfindia.org/2022/Ranking.html');
final Uri _url2 = Uri.parse('https://www.bnmit.org/');
final Uri _url3 = Uri.parse('https://www.analyticsinsight.net/top-10-engineering-colleges-in-india-offering-ai-and-robotics-courses/');

final Uri _url4 = Uri.parse('https://cetcell.mahacet.org/');
final Uri _url5 = Uri.parse('https://jeemain.nta.nic.in/');
final Uri _url6 = Uri.parse('https://www.pci.nic.in/');

final Uri _url7 = Uri.parse('https://jeeadv.ac.in/');
final Uri _url8 = Uri.parse('https://jeeadv.ac.in/');
final Uri _url9 = Uri.parse('https://jeemain.nta.nic.in/');

Future<void> _launchUrl1() async {
  if (!await launchUrl(_url1)) {
    throw Exception('Could not launch $_url1');
  }
}

Future<void> _launchUrl2() async {
  if (!await launchUrl(_url2)) {
    throw Exception('Could not launch $_url2');
  }
}

Future<void> _launchUrl3() async {
  if (!await launchUrl(_url3)) {
    throw Exception('Could not launch $_url3');
  }
}

Future<void> _launchUrl4() async {
  if (!await launchUrl(_url4)) {
    throw Exception('Could not launch $_url4');
  }
}

Future<void> _launchUrl5() async {
  if (!await launchUrl(_url5)) {
    throw Exception('Could not launch $_url5');
  }
}

Future<void> _launchUrl6() async {
  if (!await launchUrl(_url6)) {
    throw Exception('Could not launch $_url6');
  }
}

Future<void> _launchUrl7() async {
  if (!await launchUrl(_url7)) {
    throw Exception('Could not launch $_url7');
  }
}

Future<void> _launchUrl8() async {
  if (!await launchUrl(_url8)) {
    throw Exception('Could not launch $_url8');
  }
}

Future<void> _launchUrl9() async {
  if (!await launchUrl(_url9)) {
    throw Exception('Could not launch $_url9');
  }
}


class HomePage1 extends StatefulWidget {
  @override
  State<HomePage1> createState() => _HomePage111State();
}

class _HomePage111State extends State<HomePage1> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      body: ListView(children: [
        _HTxt(),
        CarouselSlider(
          items: [
            GestureDetector(
              onTap: _launchUrl1,
              child: Container(
                margin: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/Img1.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: _launchUrl2,
              child: Container(
                margin: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/Img2.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: _launchUrl3,
              child: Container(
                margin: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/Img3.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
          options: CarouselOptions(
            height: 200,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            viewportFraction: 1,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
          ),
        ),
        CarouselSlider(
          items: [
            GestureDetector(
              onTap: _launchUrl4,
              child: Container(
                margin: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/notice1.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: _launchUrl5,
              child: Container(
                margin: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/notice2.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: _launchUrl6,
              child: Container(
                margin: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/notice3.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
          options: CarouselOptions(
            height: 200,
            enlargeCenterPage: true,
            // autoPlay: true,
            aspectRatio: 16 / 9,
            viewportFraction: 1,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            // autoPlayAnimationDuration: const Duration(milliseconds: 800),
          ),
        ),
        CarouselSlider(
          items: [
            GestureDetector(
              onTap: _launchUrl7,
              child: Container(
                margin: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/annouce1.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: _launchUrl8,
              child: Container(
                margin: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/ann2.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: _launchUrl9,
              child: Container(
                margin: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/ann3.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
          options: CarouselOptions(
            height: 200,
            enlargeCenterPage: true,
            // autoPlay: true,
            aspectRatio: 16 / 9,
            viewportFraction: 1,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            // autoPlayAnimationDuration: const Duration(milliseconds: 800),
          ),
        ),
      ]),
    );
  }
}

Widget _HTxt() {
  return Container(
    padding: EdgeInsets.only(top: 10, bottom: 5, right: 250, left: 8.0),
    child: const Text(
      'Hi Welcome',
      style: TextStyle(
          fontSize: 19, fontWeight: FontWeight.w700, color: Colors.black),
    ),
  );
}

