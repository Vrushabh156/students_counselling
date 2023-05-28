import 'package:flutter/material.dart';
import 'package:students_counselling/Screens/listclg.dart';

class EngineeringPage extends StatefulWidget {
  const EngineeringPage({Key? key}) : super(key: key);

  @override
  State<EngineeringPage> createState() => _State();
}

class _State extends State<EngineeringPage> {
  String dropdownValue = 'one';
  


  Color _color1 = Color(0xFF50C2C9);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text("Engineering"),
      ),
      backgroundColor: Color(0xFFEEEEEE),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                _inputField11(),
                _inputField111(),
                _inputField1111(),
                _bTxt1(),

              ],
            ),
          ),
        ),
      ),
    );
  }


  Widget _inputField11() {
    return Center(
      //
      // child: DropdownButton<String>(
      //   hint: Text("Select"),
      //   value: dropdownValue,
      //   icon: const Icon(Icons.menu),
      //   style: const TextStyle(color: Colors.white),
      //   underline: Container(
      //     height: 2,
      //     width: 2,
      //     color: Colors.white,
      //   ),
      //   onChanged: (String? newValue){
      //     setState(() {
      //       dropdownValue = newValue!;
      //     });
      //   },
      //   items: const[
      //   DropdownMenuItem<String>(
      //   value: 'one',
      //     child: Text('one'),
      //   ),
      //     DropdownMenuItem<String>(
      //       value: 'Two',
      //       child: Text('Two'),
      //     ),
      //     DropdownMenuItem<String>(
      //       value: 'Three',
      //       child: Text('Three'),
      //     ),
      //
      //   ],

        child: Container(
          // padding: EdgeInsets.fromLTRB(left, top, right, bottom),
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          // padding: EdgeInsets.fromLTRB(10, 3, 10, 0),
          // margin: EdgeInsets.symmetric(vertical: 5),
          margin: EdgeInsets.only(top: 10),
          width: 378,
          height: 50,
          child: TextFormField(
            // controller: emailController,
            keyboardType: TextInputType.emailAddress,
            validator: (value){
              if(value!.isEmpty){
                return ("Select your exam");
              }
              //  reg expression for email validation
              if(!RegExp("^[a-zA-z0-9+_.-]+@[a-zA-z0-9.-]+.[a-z]").hasMatch(value)){
                return ("Please Enter the valid Email");
              }
              return null;
            },
            // onSaved: (value){
            //   emailController.text = value!;
            // },
            // textInputAction: TextInputAction.done,

            // style: GoogleFonts.,
            decoration: const InputDecoration(
              hintText: "Select your exam",
              fillColor: Colors.white,
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                borderSide: BorderSide(color: Colors.white),
              ),
            ),
          ),
        ),
    );
  }

  Widget _inputField111() {
    return Center(
      child: Container(
        // padding: EdgeInsets.fromLTRB(left, top, right, bottom),
        padding: EdgeInsets.fromLTRB(10, 0, 10,0),
        // padding: EdgeInsets.fromLTRB(10, 3, 10, 0),
        // margin: EdgeInsets.symmetric(vertical: 5),
        margin: EdgeInsets.only(top: 20),
        width: 378,
        height: 50,
        child: TextFormField(
          // controller: emailController,
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
          // onSaved: (value){
          //   emailController.text = value!;
          // },
          // textInputAction: TextInputAction.done,

          // style: GoogleFonts.,
          decoration: const InputDecoration(
            hintText: "Enter your Score",
            fillColor: Colors.white,
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  Widget _inputField1111() {
    return Center(
      child: Container(
        // padding: EdgeInsets.fromLTRB(left, top, right, bottom),
        padding: EdgeInsets.fromLTRB(10, 0, 10,0),
        // padding: EdgeInsets.fromLTRB(10, 3, 10, 0),
        // margin: EdgeInsets.symmetric(vertical: 5),
        margin: EdgeInsets.only(top: 20),
        width: 378,
        height: 400,
        child: TextFormField(
          // controller: emailController,
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
          // onSaved: (value){
          //   emailController.text = value!;
          // },
          // textInputAction: TextInputAction.done,

          // style: GoogleFonts.,
          decoration: const InputDecoration(
            // hintText: "Enter your Score",
            fillColor: Colors.white,
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  Widget _bTxt1() {
    return Center(
      child: Container(
        padding: EdgeInsets.fromLTRB(10, 3, 10, 0),
        margin: EdgeInsets.only(top: 30, bottom: 10),
        width: 378,
        height: 60,
        child: Center(
          child: MaterialButton(
            minWidth: double.infinity,
            height: 60,
            onPressed: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => ListPage(),
              //     ));
            },
            color: Colors.lightBlue,
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: const Text(
              "Submit",
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
}
