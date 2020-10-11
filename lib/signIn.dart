import 'package:collage/shared_prefs.dart';
import 'package:flutter/material.dart';
import 'RoundedButton.dart';
import 'SelectWindow.dart';
import 'register.dart';
import 'package:firebase_auth/firebase_auth.dart';
class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
  static String id='SignIn';
}

class _SignInState extends State<SignIn> {
  final _messageTextController=TextEditingController();
  final _messageTextController1=TextEditingController();
  final _auth= FirebaseAuth.instance;
  // final _formKey=GlobalKey<FormState>();
  String Email;

  String Password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
        automaticallyImplyLeading: false,
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10)
        ),
        title: Text('Login Form',style: TextStyle(fontStyle: FontStyle.italic)
        ),
      ),

      backgroundColor:Colors.blue[300],


      body: Center(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Card(
                color: Colors.blue[100],
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    SizedBox(height: 70,),
                    SizedBox(height: 15,),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextFormField(
                        controller: _messageTextController,
                        // validator: (val)=>val.isEmpty?'Enter Correct Email':null,
                        onChanged: (val){
                          setState(() {
                            Email=val;
                          });
                        },
                        decoration: InputDecoration(
                            icon: Icon(Icons.email,color: Colors.white70,),
                            labelText: 'Enter Email',fillColor: Colors.white70,filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white70,
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            focusedBorder:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                  color: Colors.greenAccent
                              ),
                            )
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextFormField(
                        controller: _messageTextController1,
                        // validator: (val)=>val.length<6?'Enter Correct Password':null,
                        obscureText: true,
                        onChanged:(val){
                          setState(() {
                            Password=val;
                          });
                        },

                        decoration: InputDecoration(
                            icon: Icon(Icons.local_parking,color: Colors.white70,),
                            labelText: 'Enter Password',fillColor: Colors.white70,filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white70,
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            focusedBorder:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                  color: Colors.greenAccent
                              ),
                            )
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    RoundedButton(
                      title: 'Log In',
                      onPressed: ()async{
                       Constants.pref.setBool("loggedIn", true);
                        final user= await _auth.signInWithEmailAndPassword(email: Email, password: Password);
                        Navigator.pushReplacementNamed(context, SelectWindow.id);
                        _messageTextController1.clear();
                        _messageTextController.clear();



                      },
                      color: Colors.white70,
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('If You Are Not Register ?',style: TextStyle(
                          fontSize: 15,fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),),
                        SizedBox(width: 10,),
                        RaisedButton(

                          onPressed: (){
                            Constants.pref.setBool("loggedIn",true);
                            Navigator.pushNamed(context, Register.id);
                          },
                          child: Text('Register',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                        )
                      ],
                    ),
                    SizedBox(height: 30,)

                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
