import 'package:flutter/material.dart';
import 'main.dart';
class SignupPage extends StatefulWidget{
  const SignupPage({Key? key}) : super(key: key);
  @override
  State<SignupPage> createState() => _SignupPageState();
}
class _SignupPageState extends State<SignupPage> {
  final isChecked=false;
  Color emailColor=Colors.white;
  Color passwordColor=Colors.white;
  final passwordRegex = RegExp(
    r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#\$%\^&\*])(?=.{8,})',
  );
  final RegExp emailRegex = RegExp(
    r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+(\.[a-zA-Z]+)?$',
  );

  final _email=TextEditingController();
  final _password=TextEditingController();
  final _firstName=TextEditingController();
  final _lastName=TextEditingController();

  Widget getTextfield(final name,String hintT){
    return TextField(
      controller: name,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
            width: 2.0, // Change the width of the border
          ),
        ),
        hintText: hintT,
        hintStyle: TextStyle(
          fontSize: 20,),
      ),
    );
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:SingleChildScrollView(
        child:Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors:  [Colors.pink, Colors.black],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              )
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 40.0),
                  Text('Welcome to\n Sign up',style: TextStyle(
                      color:Colors.white,
                      fontFamily: 'Comfort',
                      fontSize: 39,
                      shadows: [
                        Shadow(
                          blurRadius: 5.0,
                          color: Colors.grey.withOpacity(0.5),
                          offset: Offset(0.0, 2.0),
                        ),
                      ]
                  )),
                  SizedBox(height: 30,),
                  TextField(
                    controller: _email,
                    onChanged: (value){
                      if(!emailRegex.hasMatch(value.toString())){
                        emailColor=Colors.red;
                        setState(() {

                        });
                      }
                      else{
                        emailColor=Colors.white;
                        setState(() {

                        });
                      }
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: emailColor,
                          width: 2.0, // Change the width of the border
                        ),
                      ),
                      hintText: 'Email',
                      hintStyle: TextStyle(
                        fontSize: 20,),

                      suffixIcon: Icon(Icons.email
                        ,size: 30,
                        color: Colors.white,),
                    ),
                  ),
                  SizedBox(height: 50.0),
                  TextField(
                    //cursorHeight: 40,
                    controller: _password,
                    onChanged: (value){
                      if(!passwordRegex.hasMatch(value.toString())){
                        passwordColor=Colors.red;
                        setState(()  {
                        });
                      }
                      else{
                        passwordColor=Colors.white;
                        setState(() {

                        });
                      }
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(

                          borderSide: BorderSide(
                            color: passwordColor,
                            width: 2.0, // Change the width of the border
                          ),
                        ),
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          fontSize: 20,
                        ),
                        suffixIcon: Icon(
                          Icons.lock,
                          size: 30,
                          color:Colors.white,
                        )
                    ),
                  ),
                  SizedBox(height: 60.0),
                  TextField(
                    //cursorHeight: 40,
                    controller: _password,
                    onChanged: (value){
                      if(!passwordRegex.hasMatch(value.toString())){
                        passwordColor=Colors.red;
                        setState(()  {
                        });
                      }
                      else{
                        passwordColor=Colors.white;
                        setState(() {

                        });
                      }
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: passwordColor,
                            width: 2.0, // Change the width of the border
                          ),
                        ),
                        hintText: 'Confirm Password',
                        hintStyle: TextStyle(
                          fontSize: 20,
                        ),
                        suffixIcon: Icon(
                          Icons.lock,
                          size: 30,
                          color:Colors.white,
                        )
                    ),
                  ),
                  SizedBox(height: 60.0),
                  getTextfield(_firstName, "FirstName"),
                  SizedBox(height: 60.0),
                  getTextfield(_lastName, "LastName"),
                  SizedBox(height: 60.0),
                  Container(
                    height: 60,
                    width: 400,
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 5,
                            offset: Offset(-4,4)
                          )
                        ]
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          if(emailColor==Colors.white && passwordColor==Colors.white){
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context)=>MyHomePage(title: 'FunFeast')),
                            );
                          }
                        },

                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            )
                        ),
                        child: Text('Sign up',
                          style: TextStyle(
                            fontFamily: 'Comfort',
                            color: Colors.pink, // Text color of the button
                            fontSize: 25.0, // Font size of the button text
                            fontWeight: FontWeight.w900, // Font weight of the button text
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}