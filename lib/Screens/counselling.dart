import 'package:flutter/material.dart';

class Counselling1 extends StatefulWidget {
  // const Counselling({Key? key}) : super(key: key);

  @override
  State<Counselling1> createState() => _CounsellingState();
}

class _CounsellingState extends State<Counselling1> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(top: 20),
        child: const Text(
          '------- OR -------',
          style: TextStyle(fontSize: 13, color: Colors.black),
        ),
      ),
    );
  }
}
