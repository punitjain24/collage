import 'package:flutter/material.dart';
import 'package:collage/RoundedButton.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'SelectWindow.dart';
class FoundWindow extends StatefulWidget {
  @override
  _FoundWindowState createState() => _FoundWindowState();
  static String id='found';
}

class _FoundWindowState extends State<FoundWindow> {
  final _fireStore=Firestore.instance;
  String AirportName;
String TravelDate;
String ItemName;
String ItemColor;
String ItemDetail;
final _messageTextController=TextEditingController();
final _messageTextController1=TextEditingController();
final _messageTextController2=TextEditingController();
final _messageTextController3=TextEditingController();
  final _messageTextController4=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.blue[200],
        appBar: AppBar(
          actions: [
            IconButton(
              icon: Icon(
                  Icons.arrow_forward
              ),
              onPressed: (){
                Navigator.pushReplacementNamed(context, SelectWindow.id);
              },
            ),
          ],
          title: Text('Found Window',style:
          TextStyle(
              fontStyle: FontStyle.italic
          ),),
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
          ),
        ),
        body:Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Card(
              shape: OutlineInputBorder(
                  borderRadius:BorderRadius.circular(30)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 50,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(

                      controller: _messageTextController,
                      onChanged: (val){
                        AirportName=val;
                      },
                      decoration: InputDecoration(
                          icon: Icon(Icons.person,color: Colors.white70,),fillColor: Colors.white70,filled: true,

                          labelText: 'Airport Name',
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
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller: _messageTextController1,
                      onChanged: (val){
                        TravelDate=val;
                      },
                      decoration: InputDecoration(
                          icon: Icon(Icons.person,color: Colors.white70,),fillColor: Colors.white70,filled: true,

                          labelText: 'Travel Date',
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
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller: _messageTextController2,
                      onChanged: (val){
                        ItemName=val;
                      },
                      decoration: InputDecoration(
                          icon: Icon(Icons.person,color: Colors.white70,),fillColor: Colors.white70,filled: true,

                          labelText: 'Item Name',
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
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller: _messageTextController3,
                      onChanged: (val){
                        ItemColor=val;
                      },
                      decoration: InputDecoration(
                          icon: Icon(Icons.person,color: Colors.white70,),fillColor: Colors.white70,filled: true,

                          labelText: 'Item Color',
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
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller: _messageTextController4,
                      onChanged: (val){
                        ItemDetail=val;
                      },
                      decoration: InputDecoration(
                          icon: Icon(Icons.person,color: Colors.white70,),fillColor: Colors.white70,filled: true,

                          labelText: 'Item Detail',
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
                  SizedBox(height: 5,),
                  RoundedButton(
                    onPressed: (){
                      if(AirportName!=null&&ItemDetail!=null&&ItemColor!=null&&ItemName!=null) {

                        _fireStore.collection('FoundItem').add({
                          'Airport Name':AirportName,
                          'Item Name':ItemName,
                          'Item Color':ItemColor,
                          'Item Detail':ItemDetail,

                        });

                        _messageTextController.clear();
                        _messageTextController1.clear();
                        _messageTextController2.clear();
                        _messageTextController3.clear();
                        _messageTextController4.clear();



                      }
                      else{

                        showAlertDialog(context);

                      }
                    },
                    color: Colors.green,
                    title: 'Submit',
                  ),
                  SizedBox(height: 50,),


                ],
              ),
            ),
          ),
        )
    );
  }
}
showAlertDialog(BuildContext context) {
  // Create button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.pop(context);

    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30)
    ),
    backgroundColor: Colors.red,

    title: Text(" Warning",style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),
    ),
    content: Text("Please Enter All The Details",style: TextStyle(
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
