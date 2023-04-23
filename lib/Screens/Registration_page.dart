import 'package:flutter/material.dart';

import 'login.dart';

 class RegisterPage extends StatefulWidget {

   @override
   State<RegisterPage> createState() => _SplshScreenState();
 }

class _SplshScreenState extends State<RegisterPage> {
  Color _color1 = Color(0xFF50C2C9);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            //container
            child: Column(
              children: [
                // _s![](../../../../Downloads/loginImage.png)hapeDesign(),
                _bText(),
                _sText(),
                _inputField1(),
                _inputField2(),
                _inputField3(),
                _inputField4(),
                _bTxt(),
                _orText(),
                _signBTxt(),
                _txt(),
              ],
            ),
          ),
        ),
      ),
    );
  }


  Widget _bText() {
    return Center(
      child: Container(
        padding: EdgeInsets.only(top: 125),
        child: const Text(
          'Welcome to Counselling App',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w800, color: Colors.black),
        ),
      ),
    );
  }

  Widget _sText() {
    return Center(
      child: Container(
        padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
        margin: EdgeInsets.only(top: 10),
        child: const Text(
          'Let”s help you to counselling the list of colleges.',
          style: TextStyle(
              fontSize: 10, fontWeight: FontWeight.w500, color: Colors.black),
        ),
      ),
    );
  }

  Widget _inputField1() {
    return Center(
      child: Container(
        // padding: EdgeInsets.fromLTRB(left, top, right, bottom),
        padding: EdgeInsets.fromLTRB(10, 3, 10, 0),
        // margin: EdgeInsets.symmetric(vertical: 5),
        margin: EdgeInsets.only(top: 20),
        width: 378,
        height: 50,
        child: const TextField(
          // style: GoogleFonts.,
          decoration: InputDecoration(
            hintText: "Enter your full name",
            fillColor: Colors.white,
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(100),
              ),
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  Widget _inputField2() {
    return Center(
      child: Container(
        // padding: EdgeInsets.fromLTRB(left, top, right, bottom),
        padding: EdgeInsets.fromLTRB(10, 3, 10, 0),
        // margin: EdgeInsets.symmetric(vertical: 10),
        margin: EdgeInsets.only(top: 20),
        width: 378,
        height: 50,
        child: const TextField(
          // style: GoogleFonts.,
          decoration: InputDecoration(
            hintText: "Enter your email",
            fillColor: Colors.white,
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(100),
              ),
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  Widget _inputField3() {
    return Center(
      child: Container(
        // padding: EdgeInsets.fromLTRB(left, top, right, bottom),
        padding: EdgeInsets.fromLTRB(10, 3, 10, 0),
        // margin: EdgeInsets.symmetric(vertical: 10),
        margin: EdgeInsets.only(top: 20),
        width: 378,
        height: 50,
        child: const TextField(
          // style: GoogleFonts.,
          decoration: InputDecoration(
            hintText: "Enter your password",
            fillColor: Colors.white,
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(100),
              ),
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  Widget _inputField4() {
    return Center(
      child: Container(
        // padding: EdgeInsets.fromLTRB(left, top, right, bottom),
        padding: EdgeInsets.fromLTRB(10, 3, 10, 0),
        // margin: EdgeInsets.symmetric(vertical: 10),
        margin: EdgeInsets.only(top: 20),
        width: 378,
        height: 50,
        child: const TextField(
          // style: GoogleFonts.,
          decoration: InputDecoration(
            hintText: "Confirm password",
            fillColor: Colors.white,
            filled: true,
            // border: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(100),
            // ),

            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(100),
              ),
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  Widget _bTxt() {
    return Center(
      child: Container(
        padding: EdgeInsets.fromLTRB(10, 3, 10, 0),
        margin: EdgeInsets.only(top: 40),
        width: 378,
        height: 60,
        child: Center(
          child: MaterialButton(
            minWidth: double.infinity,
            height: 60,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => LoginPage(),
              ));
            },
            color: _color1,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0)),
            child: const Text(
              "Register",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _orText() {
    return Center(
      child: Container(
        padding: EdgeInsets.only(top: 40),
        child: const Text(
          '------- OR -------',
          style: TextStyle(fontSize: 13, color: Colors.black),
        ),
      ),
    );
  }

  Widget _signBTxt() {
    return Center(
      child: Container(
        padding: EdgeInsets.fromLTRB(10, 3, 10, 0),
        margin: EdgeInsets.only(top: 40),
        width: 378,
        height: 60,
        child: Center(
          child: MaterialButton(
            minWidth: double.infinity,
            height: 60,
            onPressed: () {},
            color: Colors.white,
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
            child: const Text(
              "SIGN UP WITH GOOGLE",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _txt() {
    return Center(
      child: Container(
        padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
        margin: EdgeInsets.only(top: 10),
        child: const Text(
          'Already have an account ? Sign In',
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black),
        ),
      ),
    );
  }

}
