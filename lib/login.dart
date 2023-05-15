import 'package:flutter/material.dart';
import 'package:ise_appdev/Signup.dart';
import 'main.dart';
class LoginPage extends StatefulWidget{
  const LoginPage({Key? key}) : super(key: key);
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                          SizedBox(height: 35.0),
                          Text('Welcome to \nFunFeast',style: TextStyle(
                              color:Colors.white,
                              fontFamily: 'Comfort',
                              fontSize: 35,
                              shadows: [
                                Shadow(
                                  blurRadius: 5.0,
                                  color: Colors.black,
                                  offset: Offset(0.0, 2.0),
                                ),
                              ]
                          )),
                        SizedBox(height: 20,),
                        Container(
                          height: 170,
                          width: 170,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage('assets/images/logo.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                          SizedBox(height: 30,),
                          Text('Login',style: TextStyle(
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
                          style: TextStyle(
                            fontSize: 20,
                          ),
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
                         style: TextStyle(
                           fontSize: 20,
                         ),
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
                                 child: Text('Login',
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
                  ),
                          SizedBox(height: 30.0),
                          Container(
                            height: 60,
                            width: 400,
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
                                Navigator.push(
                                    context,
                                MaterialPageRoute(builder: (context)=>SignupPage())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  )
                              ),
                              child: Text('Sign Up',
                                style: TextStyle(
                                  fontFamily: 'Comfort',
                                  color: Colors.pink, // Text color of the button
                                  fontSize: 25.0, // Font size of the button text
                                  fontWeight: FontWeight.w900, // Font weight of the button text
                                ),
                              ),
                            ),
                          ),
                           SizedBox(height: 20,)
                                  ],
                                  ),
                              ),
                            ),
        ),
      ),
    );
  }
}