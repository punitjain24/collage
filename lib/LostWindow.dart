import 'package:collage/SelectWindow.dart';
import 'package:collage/shared_prefs.dart';
import 'package:collage/signIn.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'RoundedButton.dart';
class LostWindow extends StatefulWidget {
  static String id="LostWindow";
  @override
  _LostWindowState createState() => _LostWindowState();
}

final _fireStore = Firestore.instance;
class _LostWindowState extends State<LostWindow> {
  final _messageTextController=TextEditingController();
  final _messageTextController1=TextEditingController();
  final _messageTextController2=TextEditingController();
  final _messageTextController3=TextEditingController();
  final _messageTextController4=TextEditingController();
  final _messageTextController5=TextEditingController();
  final _messageTextController6=TextEditingController();
  final _messageTextController7=TextEditingController();
  final _messageTextController8=TextEditingController();
  final _messageTextController9=TextEditingController();
  final _messageTextController10=TextEditingController();
  final _messageTextController11=TextEditingController();
  final _messageTextController12=TextEditingController();
  final _messageTextController13=TextEditingController();
  final _messageTextController14=TextEditingController();



  String FirstName;
  String LastName;
  String Gender;
  String MobileNumber;
  String Email;
  String state;
  String City;
  String Address;
  String Pincode;
  String TravelDate;
  String AirportName;
  String PNRNumber;
  String ItemName;
  String ItemColor;
  String Detail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10)
        ),
        actions: <Widget>[
          IconButton(
            alignment: Alignment.centerRight,
            icon: Icon(Icons.arrow_forward,),
            onPressed:( ){
              Navigator.pushReplacementNamed(context, SelectWindow.id);

            } ,
          ),
        ],
        title: Text("Complaint Window"),

      ),
      body: Center(
              child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Card(
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 10),

                            Padding(
                              padding: EdgeInsets.all(10),
                              child: TextFormField(
                                controller: _messageTextController,
                                onChanged: (val){
                                  FirstName=val;
                                },
                                decoration: InputDecoration(
                                    icon: Icon(Icons.person,color: Colors.white70,),fillColor: Colors.white70,filled: true,
                                    labelText: 'First Name',
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
                            SizedBox(width: 10,),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: TextFormField(
                                controller: _messageTextController1,
                                onChanged: (val){
                                  LastName=val;
                                },
                                decoration: InputDecoration(
                                    icon: Icon(Icons.person,color: Colors.white70,),fillColor: Colors.white70,filled: true,

                                    labelText: 'Last Name',
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
                            SizedBox(width: 10,),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: TextFormField(
                                controller: _messageTextController2,
                                onChanged: (val){
                                  Gender=val;
                                },
                                decoration: InputDecoration(
                                    icon: Icon(Icons.person,color: Colors.white70,),fillColor: Colors.white70,filled: true,
                                    labelText: 'Gender',
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
                            SizedBox(width: 10,),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: TextFormField(
                                controller: _messageTextController3,
                                onChanged: (val){
                                  MobileNumber=val;
                                },
                                decoration: InputDecoration(
                                    icon: Icon(Icons.phone_android,color: Colors.white70,),fillColor: Colors.white70,filled: true,
                                    hintText: 'Mobile Number',
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
                            SizedBox(width: 10,),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: TextFormField(
                                controller: _messageTextController4,
                                onChanged: (val){
                                  Email=val;
                                },
                                decoration: InputDecoration(
                                    icon: Icon(Icons.email,color: Colors.white70,),fillColor: Colors.white70,filled: true,
                                    labelText: 'Email',
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
                            SizedBox(width: 10,),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: TextFormField(
                                controller: _messageTextController5,
                                onChanged: (val){
                                  state=val;
                                },
                                decoration: InputDecoration(
                                    icon: Icon(Icons.location_on,color: Colors.white70,),fillColor: Colors.white70,filled: true,
                                    labelText: 'State',
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
                            SizedBox(width: 10,),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: TextFormField(
                                controller: _messageTextController6,
                                onChanged: (val){
                                  City=val;
                                },
                                decoration: InputDecoration(
                                    icon: Icon(Icons.location_city,color: Colors.white70,),fillColor: Colors.white70,filled: true,
                                    labelText: 'City',
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
                            SizedBox(width: 10,),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: TextFormField(
                                controller: _messageTextController7,
                                onChanged: (val){
                                  Address=val;
                                },
                                decoration: InputDecoration(
                                    icon: Icon(Icons.home,color: Colors.white70,),fillColor: Colors.white70,filled: true,
                                    hintText: 'Address',
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
                            SizedBox(width: 10,),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: TextFormField(
                                controller: _messageTextController8,
                                onChanged: (val){
                                  Pincode=val;
                                },
                                decoration: InputDecoration(
                                    icon: Icon(Icons.fiber_pin,color: Colors.white70,),fillColor: Colors.white70,filled: true,
                                    hintText: 'Pincode',
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
                            SizedBox(width: 10,),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: TextFormField(
                                controller: _messageTextController9,
                                onChanged: (val){
                                  TravelDate=val;
                                },
                                decoration: InputDecoration(
                                    icon: Icon(Icons.calendar_today,color: Colors.white70,),fillColor: Colors.white70,filled: true,
                                    hintText: '27/05/1999',
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
                            SizedBox(width: 10,),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: TextFormField(
                                controller: _messageTextController10,
                                onChanged: (val){
                                  AirportName=val;
                                },
                                decoration: InputDecoration(
                                    icon: Icon(Icons.flight,color: Colors.white70,),fillColor: Colors.white70,filled: true,
                                    labelText: 'AirtPort Name',
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
                            SizedBox(width: 10,),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: TextFormField(
                                controller: _messageTextController11,
                                onChanged: (val){
                                  PNRNumber=val;
                                },
                                decoration: InputDecoration(
                                    icon: Icon(Icons.thumbs_up_down,color: Colors.white70,),fillColor: Colors.white70,filled: true,
                                    labelText: 'PNR Number',
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
                            SizedBox(width: 10,),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: TextFormField(
                                controller: _messageTextController12,
                                onChanged: (val){
                                  ItemName=val;
                                },
                                decoration: InputDecoration(
                                    icon: Icon(Icons.work,color: Colors.white70,),fillColor: Colors.white70,filled: true,
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
                            SizedBox(width: 10,),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: TextFormField(
                                controller: _messageTextController13,
                                onChanged: (val){
                                  ItemColor=val;
                                },
                                decoration: InputDecoration(
                                    icon: Icon(Icons.work,color: Colors.white70,),fillColor: Colors.white70,filled: true,
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
                            SizedBox(width: 10,),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: TextFormField(
                                controller: _messageTextController14,
                                onChanged: (val){
                                  Detail=val;
                                },
                                decoration: InputDecoration(
                                    icon: Icon(Icons.details,color: Colors.white70,),fillColor: Colors.white70,filled: true,
                                    labelText: 'Detail Of Item',
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
                            RoundedButton(

                              title: 'Submit',
                              color: Colors.green,
                              onPressed: (){

                                if(FirstName!=null&&LastName!=null&&Gender!=null&&MobileNumber!=null&&Email!=null&&state!=null&&City!=null&&
                                    Address!=null&&Pincode!=null&&TravelDate!=null&&AirportName!=null&&PNRNumber!=null&&
                                    ItemName!=null&&ItemColor!=null&&Detail!=null) {

                                  _fireStore.collection('LostItem').add({
                                    'First Name':FirstName,
                                    'Last Name':LastName,
                                    'Gender':Gender,
                                    'Mobile Number':MobileNumber,
                                    'Email ID':Email,
                                    'State':state,
                                    'City':City,
                                    'Address':Address,
                                    'PIN CODE':Pincode,
                                    'Travel Date':TravelDate,
                                    'Airport Name':AirportName,
                                    'PNR Number':PNRNumber,
                                    'Item Name':ItemName,
                                    'Item Color':ItemColor,
                                    'Item Detail':Detail,});

                                  _messageTextController.clear();
                                  _messageTextController1.clear();
                                  _messageTextController2.clear();
                                  _messageTextController3.clear();
                                  _messageTextController4.clear();
                                  _messageTextController5.clear();
                                  _messageTextController6.clear();
                                  _messageTextController7.clear();
                                  _messageTextController8.clear();
                                  _messageTextController9.clear();
                                  _messageTextController10.clear();
                                  _messageTextController11.clear();
                                  _messageTextController12.clear();
                                  _messageTextController13.clear();
                                  _messageTextController14.clear();


                                }
                                else{

                                  showAlertDialog(context);

                                }

                              },

                            )



                          ],
                        ),
                      ),
                    ),
                  )
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
