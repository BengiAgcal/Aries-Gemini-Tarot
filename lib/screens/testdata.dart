/* COMP 4521
   Bengi Agcal, 20455419, bagcal@connect.ust.hk
Priyanshi Milan Mehta, 20479544, pmmehta@connect.ust.hk
*/
import 'package:flutter/material.dart';
import 'package:face_detection_flutter/screens/Meditate.dart';
import 'Wrapper.dart';
import 'package:provider/provider.dart';
import 'package:face_detection_flutter/Services/MyUser.dart';
import 'package:face_detection_flutter/screens/musictest.dart';
import 'face_detection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

class testdata extends StatefulWidget {
  @override
  _testdata createState() => _testdata();
}

class _testdata extends State<testdata> {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  void _create() async {

    try {
      await firestore.collection('users').doc('testusers').set({
        'firstName': 'John',
        'lastName': 'Peter',
      });
    } catch (e) {
      print(e);
    }
    print("end");
  }
  void _read() async {
    DocumentSnapshot documentSnapshot;
    try {
     // documentSnapshot = await firestore.collection('users').doc('testusers').get();
      //print(documentSnapshot.data.toString());
      //print("printed");

      await for (var snapshot in firestore.collection('data').snapshots()) {
        for (var message in snapshot.docs) {
          print(message.id.toString());
          print(message.data());
          print(message.data()['audio']);
        }
      }

    } catch (e) {
      print(e);
    }
  }
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<MyUser>(context);
    print(user);

    return Scaffold(
      backgroundColor: Colors.teal[900],
      body: SafeArea(
        child: Container(
          child: Center(
            child:
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 100.0, 0, 0),
              child: Column(
                children:<Widget> [

                  SizedBox(height: 0,),

                  FlatButton(
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                      color: Color(0xFFFBB03B),
                      onPressed: ()=>_create(),
                      child: Text('create',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Elsie',
                          fontSize: 25,


                        ), )
                  ),
                  FlatButton(
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                      color: Color(0xFFFBB03B),
                      onPressed: ()=>_read(),
                      child: Text('read',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Elsie',
                          fontSize: 25,


                        ), )
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

