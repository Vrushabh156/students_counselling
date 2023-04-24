import 'package:flutter/material.dart';

class Counselling extends StatefulWidget {
  const Counselling({Key? key}) : super(key: key);

  @override
  State<Counselling> createState() => _Counselling();
}

class _Counselling extends State<Counselling> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(top: 20),
        child: const Text(
          '------- Counselling -------',
          style: TextStyle(fontSize: 13, color: Colors.black),
        ),
      ),
    );
  }
}





















// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
//
// void main() {
//   runApp(Counselling111());
// }
//
// class Counselling111 extends StatefulWidget {
//
//   // @override
//   // Widget build(BuildContext context) {
//   //   return MaterialApp(
//   //     title: 'Carousel Slider',
//   //     theme: ThemeData(
//   //       primarySwatch: Colors.blue,
//   //     ),
//   //     home: _HomePage111State(),
//   //   );
//   // }
//
//   @override
//   State<Counselling111> createState() => _HomePage111State();
// }
//
// class _HomePage111State extends State<Counselling111> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFEEEEEE),
//       body: ListView(children: [
//         CarouselSlider(
//           items: [
//             Container(
//               margin: EdgeInsets.all(8.0),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10.0),
//                 image: DecorationImage(
//                   image: AssetImage(
//                     "assets/images/Img1.jpg"),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.all(8.0),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10.0),
//                 image: DecorationImage(
//                   image: AssetImage(
//                       "assets/images/Img2.jpeg"),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.all(8.0),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10.0),
//                 image: DecorationImage(
//                   image: AssetImage(
//                       "assets/images/Img3.jpeg"),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//           ],
//           options: CarouselOptions(
//             height: 200,
//             enlargeCenterPage: true,
//             autoPlay: true,
//             aspectRatio: 16 / 9,
//             viewportFraction: 1,
//             autoPlayCurve: Curves.fastOutSlowIn,
//             enableInfiniteScroll: true,
//             autoPlayAnimationDuration: Duration(milliseconds: 800),
//           ),
//         ),
//       ]),
//     );
//   }
// }
