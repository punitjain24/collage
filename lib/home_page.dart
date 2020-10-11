import 'dart:async';
import 'signIn.dart';

import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
  static String id='home_page';
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();
       Timer(
             Duration(
               seconds: 5,
             ),()=>  Navigator.pushNamed(context, SignIn.id),
       );
    controller=AnimationController(
      duration: Duration(seconds: 2,),
      vsync: this,
    );
    animation=ColorTween(begin: Colors.blueGrey,end: Colors.white).animate(controller);
    controller.forward();
    controller.addListener(()
    {
      setState(() {

      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.blue[400],
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('image/lost.jpg'),
                  radius: 50,
                  // child: Icon(Icons.find_in_page,size: 50,color: Colors.blue,),
                ),
                SizedBox(height: 50,),
                Padding(
                    padding: EdgeInsets.all(10),
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.white,

                    )),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
