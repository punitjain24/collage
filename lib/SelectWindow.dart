import 'package:collage/FoundWindow.dart';
import 'package:collage/LostWindow.dart';
import 'package:collage/signIn.dart';
import 'package:flutter/material.dart';
import 'shared_prefs.dart';
import 'package:shared_preferences/shared_preferences.dart';
class SelectWindow extends StatefulWidget {
  @override
  _SelectWindowState createState() => _SelectWindowState();
  static String id='SelectWindow';
}

class _SelectWindowState extends State<SelectWindow> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            alignment: Alignment.centerRight,
            icon: Icon(Icons.exit_to_app,),
            onPressed:( ){
              Constants.pref.setBool("loggedIn",false);
              Navigator.pushReplacementNamed(context, SignIn.id);

            } ,
          ),
        ],
        title: Text('Select Window'),
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10)
        ),
      ),
      body:SingleChildScrollView(
          child:Padding(
            padding: const EdgeInsets.only(top: 200,right: 5,left: 5),
            child: Container(
              height: 300,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                    color: Colors.white70
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 600,),
                Center(
                  child: GestureDetector(
                    onTap: (){
                      // Constants.pref.setBool('loggedIn', true);
                      Navigator.pushReplacementNamed(context, LostWindow.id);

                    },
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.search,
                            size: 75,

                          ),
                          Text('Lost Item',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 15
                          ),)
                        ],
                      ),
                    ),
                  ),
                ),
                  SizedBox(width: 20,),
                  Center(
                    child: GestureDetector(
                      onTap: (){
                        // Constants.pref.setBool('loggedIn', true);
                        Navigator.pushReplacementNamed(context, FoundWindow.id);
                      },
                      child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.offline_pin,
                              size: 75,

                            ),
                            Text('Found Item',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                fontSize: 15
                            ),)
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
      ),
    );
  }
}
