import 'dart:io';
import 'dart:ui' as ui;
import 'package:face_detection_flutter/screens/Meditate.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_ml_vision/firebase_ml_vision.dart';
import 'Meditate.dart';

class FaceDetection extends StatefulWidget {
  final int IIDD;
  FaceDetection({Key key, @required this.IIDD}) : super(key: key);
  @override

  _FaceDetectionState createState() =>new _FaceDetectionState(IIDD);

}

class _FaceDetectionState extends State<FaceDetection> {
  int IIDD;
  _FaceDetectionState(this.IIDD);

  int readi;
  int Smile;
  ui.Image image;
  var smileProb;
  List<Rect> rect = List<Rect>();
  List<Rect> eyesRect = List<Rect>();


  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    var visionImage = FirebaseVisionImage.fromFile(image);
    readi=1;

    setState(() {
      rect = List<Rect>();
    });

    // var faceDetectionProperties = FaceDetectorOptions(
    //   enableClassification: true,
    // );
    var faceDetection =
        FirebaseVision.instance.faceDetector(FaceDetectorOptions(
      enableClassification: true,
      enableLandmarks: true,
      enableContours: true,
    ));

    List<Face> faces = await faceDetection.processImage(visionImage);
    for (Face f in faces) {
      rect.add(f.boundingBox);
      print(f.getContour(FaceContourType.allPoints));
      smileProb = f.smilingProbability;
    }
    loadImage(image).then((img) {
      setState(() {
        this.image = img;
      });
    });
  }

  Future<ui.Image> loadImage(File image) async {
    var img = await image.readAsBytes();
    return decodeImageFromList(img);
  }

  int detectSmile() {
   // int prob = smileProb.toInt();
    //return prob;

    if (smileProb != null) {
      if (smileProb > 0.86) {
        return 7;
      } else if (smileProb > 0.8) {
        return 7;
      } else if (smileProb > 0.3) {
        return 4;
      } else
        return 1;
    } else
      return 4;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/openingBG.png'),
                  fit: BoxFit.cover,
                )
            ) ,
            child: Column(
              children: [
                SizedBox(height: 30.0),
                Text('Take A Photo!', style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontFamily: 'Elsie',

                ),),
                Expanded(
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                      child: FittedBox(
                        child: SizedBox(
                          width: image != null ? image.width.toDouble() : 500.0,
                          height: image != null ? image.height.toDouble() : 500.0,
                          child: CustomPaint(
                            painter: Painter(rect: rect, image: image),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [

                      SizedBox(height: 30.0),
                      FlatButton(

                          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                          color: Color(0xFFFBB03B),

                          onPressed: (){

                            Smile= this.IIDD+ detectSmile();

                            print(this.IIDD);
                            if(image!=null ) {

                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Meditate(MIDD: Smile)),
                              );

                            }


                          },
                          child:  new Text(
                image==null ? readi==1 ? "Please Wait...": "First take a Photo!" : " Click to Continue",
                            style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Elsie',
                ),


                      ),
                      )
                    ],
                  )


                  /*Text(
                    '${detectSmile()}',
                    style: TextStyle(
                        color: Colors.orangeAccent,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold),
                  ),*/

                ),

              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: getImage,
          tooltip: 'Pick Image',
          backgroundColor: Color(0xFFFBB03B),

          child: Icon(
            Icons.add_a_photo,
          ),
        ));
  }
}

class Painter extends CustomPainter {
  List<Rect> rect;
  ui.Image image;

  Painter({@required this.rect, @required this.image});

  @override
  void paint(ui.Canvas canvas, ui.Size size) {
    // TODO: implement paint

    canvas.drawImage(image, Offset.zero, Paint());

    if (rect != null) {
      for (Rect rect in this.rect) {
        canvas.drawRect(
            rect,
            Paint()
              ..color = Color(0xFFFBB03B)
              ..strokeWidth = 10.0
              ..style = PaintingStyle.stroke);
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
