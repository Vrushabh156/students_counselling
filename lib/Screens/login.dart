import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}): super(key: key);

  @override
  State<LoginPage> createState() => _LoginState();
}

class _LoginState extends State<LoginPage> {
  // form key
  final _formKey = GlobalKey<FormState>();

  //editing controller
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  // Color _color2 = Color(0xFF50C2C9);
  Color _color1 = Color(0xFF50C2C9);

  // firebase
  final _auth = FirebaseAuth.instance;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                _logo(),
                _logoText(),
                _image(),
                _inputField1(),   //
                _inputField2(),   //
                _fTxt(),
                _bTxt(),   //
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



Widget _logo() {
  return Container(
    child: Stack(),
  );
}

Widget _logoText() {
  return Center(
    child: Container(
      padding: EdgeInsets.only(top: 95),
      child: const Text(
        'Welcome back 👋',
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.w800, color: Colors.black),
      ),
    ),
  );
}

Widget _image(){
  return Center(
    child: Container(
      width: 216,
      height: 245,
      padding: EdgeInsets.fromLTRB(40, 1, 40, 0),
      child: Image.asset(
        "assets/images/loginImage.png",
        scale: 1,
      ),

    ),
  );
}

Widget _inputField1() {
  return Center(
    child: Container(
      // padding: EdgeInsets.fromLTRB(left, top, right, bottom),
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      // margin: EdgeInsets.symmetric(vertical: 5),
      margin: EdgeInsets.only(top: 0),
      width: 378,
      height: 50,
      child: TextFormField(
        controller: emailController,
        keyboardType: TextInputType.emailAddress,
        validator: (value){
          if(value!.isEmpty){
            return ("Please Enter Your Email");
          }
        //  reg expression for email validation
          if(!RegExp("^[a-zA-z0-9+_.-]+@[a-zA-z0-9.-]+.[a-z]").hasMatch(value)){
            return ("Please Enter the valid Email");
          }
          return null;
        },
        onSaved: (value){
          emailController.text = value!;
        },
        textInputAction: TextInputAction.done,

        // style: GoogleFonts.,
        decoration: const InputDecoration(
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

Widget _inputField2() {
  return Center(
    child: Container(
      // padding: EdgeInsets.fromLTRB(left, top, right, bottom),
      padding: EdgeInsets.fromLTRB(10, 3, 10, 0),
      // margin: EdgeInsets.symmetric(vertical: 5),
      margin: EdgeInsets.only(top: 20),
      width: 378,
      height: 50,
      child: TextFormField(
        autofocus: false,
        obscureText: true,
        controller: passwordController,

        validator: (value){
          RegExp regex = new RegExp(r'^.{6,}$');
          if(value!.isEmpty){
            return ("Password is required for login");
          }
          if(!regex.hasMatch(value)){
            return ("Enter your valid password(Min. 6 character)");
          }
        },
        onSaved: (value){
          passwordController.text = value!;
        },
        textInputAction: TextInputAction.done,

        // style: GoogleFonts.,
        decoration: const InputDecoration(
          hintText: "Enter password",
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

Widget _fTxt() {
  return Center(
    child: Container(
      padding: EdgeInsets.only(top: 20),
      child: const Text(
        'Forgot Password ?',
        style: TextStyle(fontSize: 16,color: Color.fromRGBO(0, 60, 255, 1.0)),
      ),
    ),
  );
}

Widget _bTxt() {
    return Center(
      child: Container(
        padding: EdgeInsets.fromLTRB(10, 3, 10, 0),
        margin: EdgeInsets.only(top: 35),
        width: 378,
        height: 60,
        child: Center(
          child: MaterialButton(
            minWidth: double.infinity,
            height: 60,
            onPressed: () {
             // signIn(emailController.text, passwordController.text);
              Navigator.push(context, MaterialPageRoute(
                      builder: (context) => homePage()
              ));
            },
            color: Colors.lightBlue,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0)),
            child: const Text(
              "Login",
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
        padding: EdgeInsets.only(top: 20),
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
        margin: EdgeInsets.only(top: 20),
        width: 378,
        height: 60,
        child: Center(
          child: MaterialButton(
            minWidth: double.infinity,
            height: 60,
            onPressed: () {
              // Navigator.push(context, MaterialPageRoute(
              //     builder: (context) => homePage()
              // ));
            },
            color: Colors.white,
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 25,
                  width: 25,
                  child: Image.asset("assets/images/search.png"),
                ),
                const SizedBox(
                  width: 15,
                ),
                const Text(
                  "SIGN IN WITH GOOGLE",
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
                ),
              ],
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
          'Don’t have an account ? Sign Up',
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black),
        ),
      ),
    );
  }

// Login function
  void signIn(String email, String password) async {
    if(_formKey.currentState!.validate()){
     await _auth.signInWithEmailAndPassword(email: email, password: password).then((uid) =>
     {
        //Fluttertoast.showToast(msg: "Login Sucessful"),
       //Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> homePage()
       Navigator.push(context, MaterialPageRoute(
        builder: (context) => homePage()
     ))
     }).catchError((e){
        //Fluttertoast.showToast(msg: e!.message);
     });
  }
  }



}

