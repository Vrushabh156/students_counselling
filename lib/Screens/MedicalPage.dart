import 'package:flutter/material.dart';

class MedicalPage extends StatefulWidget {
  const MedicalPage({Key? key}) : super(key: key);

  @override
  State<MedicalPage> createState() => _State();
}

class _State extends State<MedicalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Medical"),
      ),
    );
  }
}