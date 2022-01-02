/* COMP 4521
   Bengi Agcal, 20455419, bagcal@connect.ust.hk
Priyanshi Milan Mehta, 20479544, pmmehta@connect.ust.hk
*/

import 'dart:ffi';
import 'package:http/http.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


/// Flutter code sample for FutureBuilder

// This sample shows a [FutureBuilder] that displays a loading spinner while it
// loads data. It displays a success icon and text if the [Future] completes
// with a result, or an error icon and text if the [Future] completes with an
// error. Assume the `_calculation` field is set by pressing a button elsewhere
// in the UI.

/*

class LocalAudio extends StatefulWidget {
  @override
  _LocalAudioState createState() => _LocalAudioState();
}


class _LocalAudioState extends State<LocalAudio> {


  Duration duration= new Duration();
  AudioPlayer audioPlayer= new AudioPlayer();
  Duration position= new Duration();
  bool playing = false;


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Center(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image(image: AssetImage('images/coin.png'), width: 50,),
                    Image(image: AssetImage('images/coin.png'), width: 50,),
                    Image(image: AssetImage('images/coin.png'), width: 50,),

                  ]
              ),
            ),
            slider(),
            Material(

              child: InkWell(
                onTap: (){
                  getAudio();
                },
                child: Icon(
                  playing==false? Icons.play_circle_outline: Icons.pause_circle_outline,
                  size: 50,
                  color: Colors.blue,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }


Widget slider(){
  return Material(
    child: Slider.adaptive(
        value: duration.inSeconds.toDouble(),
        onChanged: (double value) {
          setState(() {
            audioPlayer.seek(new Duration(seconds: (value / 1000).roundToDouble().round() ));
          });
        },
        min: 0.0,
        max:position.inSeconds.toDouble(),

    ),
  );
}

void getAudio() async {
    var url= "https://assets.mixkit.co/music/download/mixkit-tech-house-vibes-130.mp3";

    //play is false init
    if(playing){
      var res= await audioPlayer.pause();
      if(res==1){
        setState(() {
          playing= false;
        });
      }

    }else {
      var res = await audioPlayer.play(url );
      if(res==1){
        setState(() {
          playing= true;
        });
      }

    }

    audioPlayer.onDurationChanged.listen((Duration dd) {
      setState(() {
        duration =dd;
      });
      
    });

    audioPlayer.onAudioPositionChanged.listen((Duration dd) {
      setState(() {
        position=dd;
      });
    });
} // end of getAudio



}

*/

// JUNCT







typedef void OnError(Exception exception);



class LocalAudio extends StatefulWidget {
  final int IID;
  LocalAudio({Key key, @required this.IID}) : super(key: key);

  @override
  _LocalAudio createState() => new _LocalAudio(IID);


}

class _LocalAudio extends State<LocalAudio> {
  int IID;
  _LocalAudio(this.IID);

  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  String img1= "" ;
  String img2= "https://res.cloudinary.com/bagcal/image/upload/v1620206361/card_pj355u.png" ;
  String img3= "https://res.cloudinary.com/bagcal/image/upload/v1620206361/card_pj355u.png" ;
  String img4= "https://res.cloudinary.com/bagcal/image/upload/v1620206361/card_pj355u.png" ;
  String aud;
  
 Future<String> calc;
  Duration _duration = new Duration();
  Duration _position = new Duration();

  AudioPlayer advancedPlayer;
  AudioCache audioCache;

  @override
  void initState() {
    super.initState();
    initPlayer();
    calc= _read();

    //audioCache.play('song3.mp3');
  }

  Future<void> getAudio(String aud) async {

    var url = aud;
    int res = await advancedPlayer.play( url, isLocal: true);
  }



  Future <String> _read() async {// read function, currently reads all data

    DocumentSnapshot documentSnapshot;
    try {
      await for (var snapshot in firestore.collection('data').snapshots()) {
        for (var message in snapshot.docs) {
          //  if (message.id.toString() == '1'||message.id.toString() == '2'||message.id.toString() == '3'){//if statement to select relevant decks
          // print(message.id.toString());
          // print(message.data());
          if (message.id.toString() == IID.toString()){
            print(message.id.toString());
            aud= message.data()['audio'];
            img1= message.data()['card1'];
            img2= message.data()['card2'];
            img3= message.data()['card3'];
            img4= message.data()['card4'];
            print(img1);
            return "OK";

          }
          //print(message.data()['audio']); - use this to get the audio file, and replace with card1, card2, etcetc
        }
        //}//if statement to select relevant decks
      }

    } catch (e) {
      print(e);
    }
  }


  void initPlayer() {
    advancedPlayer = new AudioPlayer();

    audioCache = new AudioCache(fixedPlayer: advancedPlayer);

    advancedPlayer.durationHandler = (d) => setState(() {
      _duration = d;
    });

    advancedPlayer.positionHandler = (p) => setState(() {
      _position = p;
    });
  }



  String localFilePath;

  Widget _tab(List<Widget> children) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      children: <Widget>[
        Center(
          child: Container(
            //color: Colors.blue,
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: children
                      .map((w) => Container(child: w, padding: EdgeInsets.all(0.0)))
                      .toList(),
                ),
                slider(),
              ],
            ),

          ),
        ),
      ],
    );
  } // end of Tab


  Widget _btn(String txt, VoidCallback onPressed) {
    return ButtonTheme(
      minWidth: 48.0,
      child: Container(

        width: 150,
        height: 45,
        child: RaisedButton(
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            child: Text(txt),
            color: Colors.pink[900],
            textColor: Colors.white,
            onPressed: onPressed),
      ),
    );
  } // end of _btn


  Widget slider() {
    return Slider(
        
        activeColor: Color(0xFFFBB03B),
        inactiveColor: Colors.white,
        value: _position.inSeconds.toDouble(),
        min: 0.0,
        max: _duration.inSeconds.toDouble(),
        onChanged: (double value) {
          setState(() {
            seekToSecond(value.toInt());
            value = value;
          });
        });
  }


  Widget LocalAudio() {
    return _tab([



      FlatButton.icon(
        icon: Icon(Icons.pause_circle_outline, color: Colors.white, size: 50),
        label: Text('', style: TextStyle(color: Colors.white,),),
        onPressed: ()  {
          advancedPlayer.pause();
        },
      ),

      FlatButton.icon(
        icon: Icon(Icons.play_circle_outline, color: Colors.white, size: 50),
        label:Text('', style: TextStyle(color: Colors.white,),),
        onPressed: ()  {
          getAudio(aud);

        },
      ),

      FlatButton.icon(
        icon: Icon(Icons.stop_circle_outlined, color: Colors.white, size: 50),
        label: Text('', style: TextStyle(color: Colors.white,),),
        onPressed: ()  {
          advancedPlayer.stop();
        },
      ),

      SizedBox(
        height: MediaQuery.of(context).size.height * 0.02,
      ),
      /*
      _btn('Play', () => audioCache.play('song3.mp3')),


      _btn('Pause', () => advancedPlayer.pause()),
      _btn('Stop', () => advancedPlayer.stop()),
      slider()
      */

    ]);
  }


  void seekToSecond(int second) {
    Duration newDuration = Duration(seconds: second);

    advancedPlayer.seek(newDuration);
  }


  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);


    return WillPopScope(
      onWillPop: ()  async => false,

      child: DefaultTabController(
        length: 1,
        
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            elevation: 0.0,
            backgroundColor: Color(0xFF08091C),
            title: Text('Your Reading'),
            actions: <Widget>[



              FlatButton.icon(
                icon: Icon(Icons.home, color: Colors.white,),
                label: Text('Home', style: TextStyle(color: Colors.white,),),
                onPressed: ()  {
                  advancedPlayer.stop();
                  Navigator.popUntil(context, ModalRoute.withName('/'));
                },
              ),

            ],
          ),
          body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/openingBG.png'),
                  fit: BoxFit.cover,
                )
            ) ,
            child: Column(

              children: [

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                FutureBuilder(
                    future: calc,
                    builder: (context, snapshot) {
                      switch(snapshot.connectionState) {
                        case ConnectionState.none:
                          return Text("Something went wrong :(", style: TextStyle(color: Colors.white),);
                        case ConnectionState.active:
                        case ConnectionState.waiting:
                          return Text("Waiting", style: TextStyle(color: Colors.white),);
                        case ConnectionState.done:
                          return  Column(

                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.network(img1, width: queryData.size.width/3.5,),
                                    Image.network(img2, width: queryData.size.width/3.5,),
                                  ],
                                ),
                                SizedBox(height:10),
                                Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [

                                      Image.network(img3, width: queryData.size.width/3.5,),
                                      Image.network(img4, width: queryData.size.width/3.5,),
                                    ],
                                  ),
                                ),


                              ]
                          );
                        default:
                          return Text("Waitt", style: TextStyle(color: Colors.white),);
                      }

                    }),


                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),

                LocalAudio(),
/*
                FlatButton(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                    color: Color(0xFFFBB03B),
                    onPressed: (){ audioCache.play('song3.mp3'); },
                    child: Text('play',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Elsie',
                        fontSize: 25,


                      ), )
                ),
*/
            /*Center(
              child: Container(
                  margin: EdgeInsets.fromLTRB(0, MediaQuery.of(context).size.height * 0.02 , 0, 0),
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  color: Color(0xFFFAF7EA),
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.35 ,

                  child: SingleChildScrollView(
                    child: Text("here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.",
                    style: TextStyle(fontSize: 15),),



              )
              ),
            ) */

              ],
            ),
          ),
        ),
      ),
    );
  }
}



