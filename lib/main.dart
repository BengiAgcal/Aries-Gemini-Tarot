/* COMP 4521
   Bengi Agcal, 20455419, bagcal@connect.ust.hk
Priyanshi Milan Mehta, 20479544, pmmehta@connect.ust.hk
*/

/*import 'package:face_detection_flutter/screens/face_detection.dart';
import 'package:face_detection_flutter/screens/voice.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FaceDetection(),
    );
  }
}
*/
import 'package:flutter/material.dart';
import 'package:face_detection_flutter/screens/Home.dart';
import 'package:face_detection_flutter/screens/OpeningScreen.dart';
import 'package:face_detection_flutter/screens/Quiz.dart';
import 'package:face_detection_flutter/screens/Wrapper.dart';
import 'package:face_detection_flutter/screens/Authentication/authenticate.dart';
import 'package:provider/provider.dart';
import 'package:face_detection_flutter/Services/Auth.dart';
import 'package:face_detection_flutter/screens/musictest.dart';
import 'package:face_detection_flutter/Services/MyUser.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';


/*void main() {
    runApp(MyApp( ));
 // runApp(new MaterialApp(debugShowCheckedModeBanner: false,home:  LocalAudio()));
}*/

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<MyUser>.value(
      value: AuthService().user,
      child: MaterialApp(
        //home:  LocalAudio(),
        //home: OpeningScreen(),
        initialRoute: '/',
        routes: {
          // When navigating to the "/" route, build the FirstScreen widget.
          '/': (context) => OpeningScreen(),
          // When navigating to the "/second" route, build the SecondScreen widget.
          '/home': (context) => Home(),
        },

      ),


    );
/*
    return MaterialApp(
       home: OpeningScreen(),
    );

 */

  }
}
