import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(HomePage1());
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
        CarouselSlider(
          items: [
            Container(
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: const DecorationImage(
                  image: AssetImage("assets/images/Img1.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: const DecorationImage(
                  image: AssetImage("assets/images/Img2.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: const DecorationImage(
                  image: AssetImage("assets/images/Img3.jpeg"),
                  fit: BoxFit.cover,
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
      ]),
    );
  }
}

// import 'package:flutter/material.dart';
//
// import 'Cursousel_slider_view.dart';
// // import 'package:carousel_slider/carousel_slider.dart';
//
// class HomePage1 extends StatefulWidget {
//   const HomePage1({Key? key}) : super(key: key);
//
//   @override
//   State<HomePage1> createState() => _HomePage1State();
// }
//
// class _HomePage1State extends State<HomePage1> {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         child: Column(
//           children: [
//             _HTxt(),
//             // Slider()
//             //  Counselling11()
//
//
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _HTxt() {
//     return Container(
//       padding: EdgeInsets.only(top: 80, right: 250, left: 0),
//       child: const Text(
//         'Hi Welcome',
//         style: TextStyle(
//             fontSize: 19, fontWeight: FontWeight.w700, color: Colors.black),
//       ),
//     );
//   }
// }
