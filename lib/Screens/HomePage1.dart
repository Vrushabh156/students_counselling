import 'package:flutter/material.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
      child: Column(
        children: [
          _HTxt(),
        ],
      ),
      ),
    );
  }

Widget _HTxt(){
  return Container(
      padding: EdgeInsets.only(top: 80 ,right: 250, left: 0),
      child: const Text(
        'Hi Welcome',
        style: TextStyle(
            fontSize: 19, fontWeight: FontWeight.w700, color: Colors.black),
      ),
    );
}
}
