import 'package:collage/FoundWindow.dart';
import 'package:collage/SelectWindow.dart';
import 'package:collage/shared_prefs.dart';
import 'package:collage/signIn.dart';
import 'package:flutter/material.dart';
import 'LostWindow.dart';
import 'home_page.dart';
import 'register.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main()async
{

WidgetsFlutterBinding.ensureInitialized();
Constants.pref=await SharedPreferences.getInstance();
// to ensure everything is installed
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
 @override

  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
        title: "Lost And Found",
        home: Constants.pref.getBool("loggedIn")==true?SelectWindow():HomePage(),
        debugShowCheckedModeBanner: false,
        routes: {
          HomePage.id: (context) => HomePage(),
          SignIn.id: (context) => SignIn(),
          Register.id: (context) => Register(),
          LostWindow.id: (context) => LostWindow(),
          FoundWindow.id:(context)=>FoundWindow(),
          SelectWindow.id:(context)=>SelectWindow(),
    }
      );
  }
}
