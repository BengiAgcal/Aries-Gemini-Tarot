
/* COMP 4521
   Bengi Agcal, 20455419, bagcal@connect.ust.hk
Priyanshi Milan Mehta, 20479544, pmmehta@connect.ust.hk
*/
import 'package:flutter/material.dart';
import 'face_detection.dart';

class Scam extends StatefulWidget {
  @override
  _ScamState createState() => _ScamState();
}

class _ScamState extends State<Scam> {
  // Declare this variable
  dynamic selectedRadio;
  dynamic selectedRadio1;
  dynamic selectedRadio2;
  dynamic selectedRadio3;
  dynamic selectedRadio4;
  dynamic selectedRadio5;

  dynamic Love;
  dynamic Goal;
  dynamic Random;
  dynamic sum;

  @override
  void initState() {
    super.initState();
    selectedRadio = 0.0;
    selectedRadio1 = 0.0;
    selectedRadio2 = 0.0;
    selectedRadio3 = 0.0;
    selectedRadio4 = 0.0;
    selectedRadio5 = 0.0;
    Love =0.0;
    Goal=0.0;
    Random=0.0;
    sum=0.0;
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Quiz'),
        backgroundColor: Color(0xFF08091C),
        elevation: 0.0,
      ),

     body:  Center(
       child: Container(
         padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
         decoration: BoxDecoration(
             image: DecorationImage(
               image: AssetImage('images/GeneralBG.png'),
               fit: BoxFit.cover,
             )
         ),

         child: Center(
           child: Container(

             padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
             color: Color(0xFFFAF7EA),
             width: MediaQuery.of(context).size.width * 0.83,
             height: MediaQuery.of(context).size.height * 0.85,

             child: SingleChildScrollView(
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.start ,
                 children:<Widget> [
                   SizedBox(height: 10,),
                   Text("Pick a Crystal! ",
                     style: TextStyle( fontFamily: 'Elsie', color:Color(0xFF025753), fontSize: 32),),

                   SizedBox(height: 20,),

                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [

                       Radio(
                         value: 1,
                         groupValue: selectedRadio,
                         activeColor:Color(0xFFFBB03B),
                         onChanged: (val) {
                           setState(() {
                             selectedRadio = val;
                           });
                         },
                       ),
                       Image.asset('images/C-03.png', width: 50, height: 50,),
                       SizedBox(width: 10,),
                       Text("Rose Quartz", style: TextStyle(fontSize: 17),),

                     ],
                   ),

                   SizedBox(height: 20,),

                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [

                       Radio(
                         value: 100,
                         groupValue: selectedRadio,
                         activeColor:Color(0xFFFBB03B),
                         onChanged: (val) {
                           setState(() {
                             selectedRadio = val;
                           });
                         },
                       ),
                       Image.asset('images/C-02.png', width: 50, height: 50,),
                       SizedBox(width: 10,),
                       Text("Black Obsidian ", style: TextStyle(fontSize: 17),),


                     ],
                   ),

                   SizedBox(height: 20,),

                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [

                       Radio(
                         value: 10000,
                         groupValue: selectedRadio,
                         activeColor:Color(0xFFFBB03B),
                         onChanged: (val) {
                           setState(() {
                             selectedRadio = val;
                           });
                         },
                       ),
                       Image.asset('images/C-01.png', width: 50, height: 50,),
                       SizedBox(width: 10,),
                       Text("Blue Topaz ", style: TextStyle(fontSize: 17),),

                     ],
                   ),

                   SizedBox(height: 30,),

//_____________________ NEW QUESTION ___________________________________________________________________

                   Text("Pick a Quote! ",
                     style: TextStyle( fontFamily: 'Elsie', color:Color(0xFF025753), fontSize: 32),),

                   SizedBox(height: 20,),

                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [

                       Radio(
                         value: 10000,
                         groupValue: selectedRadio1,
                         activeColor:Color(0xFFFBB03B),
                         onChanged: (val) {
                           setState(() {
                             selectedRadio1 = val;
                           });
                         },
                       ),

                       SizedBox(width: 0,),
                       Text("A journey of a thousand \nmiles begins with a single step.", style: TextStyle(fontSize: 17),),

                     ],
                   ),

                   SizedBox(height: 20,),

                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [

                       Radio(
                         value: 1,
                         groupValue: selectedRadio1,
                         activeColor:Color(0xFFFBB03B),
                         onChanged: (val) {
                           setState(() {
                             selectedRadio1 = val;
                           });
                         },
                       ),

                       SizedBox(width: 0,),
                       Text("There is only one happiness\n in this life, to love and be loved.", style: TextStyle(fontSize: 17),),

                     ],
                   ),

                   SizedBox(height: 20,),

                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [

                       Radio(
                         value: 100,
                         groupValue: selectedRadio1,
                         activeColor:Color(0xFFFBB03B),
                         onChanged: (val) {
                           setState(() {
                             selectedRadio1 = val;
                           });
                         },
                       ),

                       SizedBox(width: 0,),
                       Text("I can resist everything\n except temptation.", style: TextStyle(fontSize: 17),),

                     ],
                   ),

                   SizedBox(height: 20,),

                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [

                       Radio(
                         value: 10001,
                         groupValue: selectedRadio1,
                         activeColor:Color(0xFFFBB03B),
                         onChanged: (val) {
                           setState(() {
                             selectedRadio1 = val;
                           });
                         },
                       ),

                       SizedBox(width: 0,),
                       Text("Be who you are, not who the \nworld wants you to be", style: TextStyle(fontSize: 17),),

                     ],
                   ),

//_____________________ NEW QUESTION ___________________________________________________________________

                   SizedBox(height: 30,),
                   Text(" How would you\n describe today? ",
                     style: TextStyle( fontFamily: 'Elsie', color:Color(0xFF025753), fontSize: 32),),

                   SizedBox(height: 20,),

                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [

                       Radio(
                         value: 500,
                         groupValue: selectedRadio2,
                         activeColor:Color(0xFFFBB03B),
                         onChanged: (val) {
                           setState(() {
                             selectedRadio2 = val;
                           });
                         },
                       ),

                       SizedBox(width: 0,),
                       Text("A normal day nothing much\nis happening..", style: TextStyle(fontSize: 17),),

                     ],
                   ),
                   SizedBox(height: 20,),

                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [

                       Radio(
                         value: 10000,
                         groupValue: selectedRadio2,
                         activeColor:Color(0xFFFBB03B),
                         onChanged: (val) {
                           setState(() {
                             selectedRadio2 = val;
                           });
                         },
                       ),

                       SizedBox(width: 0,),
                       Text("Disaster!\nMurphy’s law everywhere!", style: TextStyle(fontSize: 17),),

                     ],
                   ),

                   SizedBox(height: 20,),

                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [

                       Radio(
                         value: 10100,
                         groupValue: selectedRadio2,
                         activeColor:Color(0xFFFBB03B),
                         onChanged: (val) {
                           setState(() {
                             selectedRadio2 = val;
                           });
                         },
                       ),

                       SizedBox(width: 0,),
                       Text("Amazing! Everything fell\n right into the place.", style: TextStyle(fontSize: 17),),

                     ],
                   ),
                   SizedBox(height: 20,),

                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [

                       Radio(
                         value: 1,
                         groupValue: selectedRadio2,
                         activeColor:Color(0xFFFBB03B),
                         onChanged: (val) {
                           setState(() {
                             selectedRadio2 = val;
                           });
                         },
                       ),

                       SizedBox(width: 0,),
                       Text("I’m frustrated and tired.\nNobody seems to hear me!", style: TextStyle(fontSize: 17),),

                     ],
                   ),

//_____________________ NEW QUESTION ___________________________________________________________________

                   SizedBox(height: 30,),
                   Text(" Pick an animal to \n describe your \n love life. ",
                     style: TextStyle( fontFamily: 'Elsie', color:Color(0xFF025753), fontSize: 32),),

                   SizedBox(height: 20,),


                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [

                       Radio(
                         value: 10100,
                         groupValue: selectedRadio3,
                         activeColor:Color(0xFFFBB03B),
                         onChanged: (val) {
                           setState(() {
                             selectedRadio3 = val;
                           });
                         },
                       ),
                       Text("Love birds", style: TextStyle(fontSize: 17),),
                       SizedBox(width: 10,),
                       Image.asset('images/A-04.png', width: 80, height: 80,),

                     ],
                   ),
                   SizedBox(height: 20,),

                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [

                       Radio(
                         value: 9,
                         groupValue: selectedRadio3,
                         activeColor:Color(0xFFFBB03B),
                         onChanged: (val) {
                           setState(() {
                             selectedRadio3 = val;
                           });
                         },
                       ),
                       Text("Flirty bunny", style: TextStyle(fontSize: 17),),
                       SizedBox(width: 10,),
                       Image.asset('images/A-01.png', width: 80, height: 80,),

                     ],
                   ),

                   SizedBox(height: 20,),

                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [

                       Radio(
                         value: 90000,
                         groupValue: selectedRadio3,
                         activeColor:Color(0xFFFBB03B),
                         onChanged: (val) {
                           setState(() {
                             selectedRadio3 = val;
                           });
                         },
                       ),
                       Text("Lone wolf", style: TextStyle(fontSize: 17),),
                       SizedBox(width: 10,),
                       Image.asset('images/A-02.png', width: 80, height: 80,),

                     ],
                   ),
                   SizedBox(height: 20,),

                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [

                       Radio(
                         value: 100,
                         groupValue: selectedRadio3,
                         activeColor:Color(0xFFFBB03B),
                         onChanged: (val) {
                           setState(() {
                             selectedRadio3 = val;
                           });
                         },
                       ),
                       Text("Happy sloth", style: TextStyle(fontSize: 17),),
                       SizedBox(width: 10,),
                       Image.asset('images/A-03.png', width: 80, height: 80,),

                     ],
                   ),


//_____________________ NEW QUESTION ___________________________________________________________________

                   SizedBox(height: 30,),
                   Text(" How do you \n handle hard \n times?",
                     style: TextStyle( fontFamily: 'Elsie', color:Color(0xFF025753), fontSize: 32),),

                   SizedBox(height: 20,),

                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [

                       Radio(
                         value: 5,
                         groupValue: selectedRadio4,
                         activeColor:Color(0xFFFBB03B),
                         onChanged: (val) {
                           setState(() {
                             selectedRadio4 = val;
                           });
                         },
                       ),

                       SizedBox(width: 0,),
                       Text("I have friends and \nfamily to support me.", style: TextStyle(fontSize: 17),),

                     ],
                   ),

                   SizedBox(height: 20,),

                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [

                       Radio(
                         value: 20000,
                         groupValue: selectedRadio4,
                         activeColor:Color(0xFFFBB03B),
                         onChanged: (val) {
                           setState(() {
                             selectedRadio4 = val;
                           });
                         },
                       ),

                       SizedBox(width: 0,),
                       Text("I work hard to get \nmyself out of there.", style: TextStyle(fontSize: 17),),

                     ],
                   ),

                   SizedBox(height: 20,),

                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [

                       Radio(
                         value: 500,
                         groupValue: selectedRadio4,
                         activeColor:Color(0xFFFBB03B),
                         onChanged: (val) {
                           setState(() {
                             selectedRadio4 = val;
                           });
                         },
                       ),

                       SizedBox(width: 0,),
                       Text("The universe supports me\nin my endeavors", style: TextStyle(fontSize: 17),),

                     ],
                   ),
                   SizedBox(height: 20,),

                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [

                       Radio(
                         value: 302,
                         groupValue: selectedRadio4,
                         activeColor:Color(0xFFFBB03B),
                         onChanged: (val) {
                           setState(() {
                             selectedRadio4 = val;
                           });
                         },
                       ),

                       SizedBox(width: 0,),
                       Text("I allow love and \nkindness to guide me", style: TextStyle(fontSize: 17),),

                     ],
                   ),
//_____________________ NEW QUESTION ___________________________________________________________________

                   SizedBox(height: 30,),
                   Text("Pick a\nsocial media!",
                     style: TextStyle( fontFamily: 'Elsie', color:Color(0xFF025753), fontSize: 32),),



                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [

                       Radio(
                         value: 4,
                         groupValue: selectedRadio5,
                         activeColor:Color(0xFFFBB03B),
                         onChanged: (val) {
                           setState(() {
                             selectedRadio5 = val;
                           });
                         },
                       ),

                       SizedBox(width: 0,),
                       Text("Tinder", style: TextStyle(fontSize: 17),),

                     ],
                   ),



                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [

                       Radio(
                         value: 10000,
                         groupValue: selectedRadio5,
                         activeColor:Color(0xFFFBB03B),
                         onChanged: (val) {
                           setState(() {
                             selectedRadio5 = val;
                           });
                         },
                       ),

                       SizedBox(width: 0,),
                       Text("LinkedIn", style: TextStyle(fontSize: 17),),

                     ],
                   ),



                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [

                       Radio(
                         value: 900,
                         groupValue: selectedRadio5,
                         activeColor:Color(0xFFFBB03B),
                         onChanged: (val) {
                           setState(() {
                             selectedRadio5 = val;
                           });
                         },
                       ),

                       SizedBox(width: 0,),
                       Text("YouTube", style: TextStyle(fontSize: 17),),

                     ],
                   ),
                   SizedBox(height: 10,),

                   FlatButton(

                       padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                       color: Color(0xFFFBB03B),
                       onPressed: (){
                         setState(() {
                           sum = selectedRadio1 +selectedRadio + selectedRadio2+ selectedRadio3 + selectedRadio4+ selectedRadio5;
                           Love= sum%100;
                           Random= (sum%10000)/100;
                           Goal= sum/10000;
                         });

                         if(Love> Random && Love> Goal) {
                           Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) => FaceDetection(IIDD: 0)),
                           );
                         }

                         else if (Goal> Random && Goal> Love) {
                           Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) => FaceDetection(IIDD: 18)),
                           );
                         }
                         else {
                           Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) => FaceDetection(IIDD: 9)),
                           );
                         }


                       },
                       child: Text("Let's Go",
                         style: TextStyle(
                           color: Colors.white,
                           fontFamily: 'Elsie',
                           fontSize: 25,


                         ), )
                   ),
                   SizedBox(height: 10,),
                   //Text(Goal.toString() ),
                   //Text(Love.toString() ),
                   //Text(Random.toString() ),

                 ],
               ),
             ),
           ),
         ),
       ),
     )
    );

  }


}
