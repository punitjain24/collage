import 'package:collage/signIn.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'RoundedButton.dart';

class Register extends StatefulWidget {
  static  String id='Register';

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<Register> {
  final _messageTextController=TextEditingController();
  final _messageTextController1=TextEditingController();
  final _auth= FirebaseAuth.instance;

  String Email;

  String Password;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        shape: OutlineInputBorder(

            borderRadius: BorderRadius.circular(10)
        ),
        automaticallyImplyLeading: false,
        title: Text('Register Form',style:
        TextStyle(
            fontStyle: FontStyle.italic
        ),

        ) ,),

      backgroundColor: Colors.blue[300],
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Card(
              color: Colors.blue[100],
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 70,),
                  CircleAvatar(
                    backgroundColor: Colors.blue[300],
                    radius:50,
                    child: Icon(Icons.person,color: Colors.white70,size: 70,),
                  ),

                  Padding(
                    padding: EdgeInsets.all(10),
                    child: TextFormField(
                      controller: _messageTextController,
                      //validator: (val)=>val.isEmpty?'Enter an Email':null,
                      onChanged: (val){
                        setState(() {
                          Email=val;
                        });
                      },
                      decoration: InputDecoration(
                          icon: Icon(Icons.email,color: Colors.white70),
                          labelText: 'Enter Email',fillColor: Colors.white70,filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
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
                      obscureText: true,
                      //validator: (val)=>val.length<6?'Enter a Password Which is 6+ chars long':null,
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
                              color: Colors.blue,
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
                    title: 'Register',
                    onPressed: ()async{
                     final newUser= await _auth.createUserWithEmailAndPassword(email: Email, password: Password);
                      _messageTextController.clear();
                      _messageTextController1.clear();
                      showAlertDialog(context);





                    },
                    color: Colors.white70,
                  ),
                  SizedBox(height: 10),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
showAlertDialog(BuildContext context) {
  // Create button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.pushNamed(context, SignIn.id);
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30)
    ),
    backgroundColor: Colors.green,

    title: Text(" Successful",style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),
    ),
    content: Text("Your Account Successfully Created",style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),
    ),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}