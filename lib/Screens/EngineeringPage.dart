import 'package:flutter/material.dart';

class EngineeringPage extends StatefulWidget {
  const EngineeringPage({Key? key}) : super(key: key);

  @override
  State<EngineeringPage> createState() => _State();
}

class _State extends State<EngineeringPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Engineering"),
      ),
    );
  }
}
