/* COMP 4521
   Bengi Agcal, 20455419, bagcal@connect.ust.hk
Priyanshi Milan Mehta, 20479544, pmmehta@connect.ust.hk
*/
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:face_detection_flutter/screens/Home.dart';
import 'package:face_detection_flutter/Services/MyUser.dart';
import 'package:face_detection_flutter/Services/Auth.dart';
import 'package:face_detection_flutter/screens/Authentication/authenticate.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<MyUser>(context);
    print(user);

    if (user== null){
      return Authenticate();
    }else {
      return Home();
    }


  }
}

    