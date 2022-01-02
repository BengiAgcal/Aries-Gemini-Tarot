/* COMP 4521
   Bengi Agcal, 20455419, bagcal@connect.ust.hk
Priyanshi Milan Mehta, 20479544, pmmehta@connect.ust.hk
*/
import 'package:face_detection_flutter/Services/Auth.dart';
import 'package:flutter/material.dart';
import 'package:face_detection_flutter/screens/scam.dart';
import 'package:face_detection_flutter/screens/Quiz.dart';
import 'dart:math';
import 'musictest.dart';

class Home extends StatelessWidget {

  final AuthService _auth = AuthService();
  Random random = new Random();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.teal[900],
        appBar: AppBar(
          title: Text('Home'),
          backgroundColor: Color(0xFF08091C),
          elevation: 0.0,
          actions: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.person, color: Colors.white,),
              label: Text('logout', style: TextStyle(color: Colors.white,),),
              onPressed: () async {
                await _auth.signOut();
              },
            ),
          ],
        ),
        body: Container(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/GeneralBG.png'),
                fit: BoxFit.cover,

              )

          ),

          child: Center(
            child: Padding( padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Column(
              children: <Widget> [
                IconButton(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0) ,
                  splashColor: Colors.black,
                  icon: Image.asset('images/newReading.png'),
                  iconSize: 350,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Scam()),
                    );
                  },
                ),

                FlatButton(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    color: Color(0xFFFBB03B),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Quiz()),
                      );
                      },
                    child: Text('Browse Cards',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Elsie',
                        fontSize: 20,

                      ), )

                ),
                SizedBox(
                  height: 10,
                ),

                FlatButton(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    color: Color(0xFFFBB03B),
                    onPressed: (){
                      int randomNumber = random.nextInt(27)+1;
                      Navigator.push(
                      context,
                         MaterialPageRoute(builder: (context) => LocalAudio(IID: randomNumber)), );
                    },
                    child: Text("I'm Feeling Lucky!",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Elsie',
                        fontSize: 20,

                      ), )

                ),



              ],
            ),),


          ),

        ),
      ),
    );
  }
}
