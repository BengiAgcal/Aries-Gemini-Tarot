import 'package:face_detection_flutter/Services/Auth.dart';
import 'package:flutter/material.dart';
import 'package:face_detection_flutter/Services/Constants.dart';

class Register extends StatefulWidget {

  final Function toggleView;
  Register({ this.toggleView });

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  String error = '';

  // text field state
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[900],

      appBar: AppBar(
        backgroundColor: Color(0xFF08091C),
        elevation: 0.0,
        title: Text('Register'),
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.person, color: Colors.white,),
            label: Text('Sign In',
              style: TextStyle(color: Colors.white,),
            ),
            onPressed: () => widget.toggleView(),
          ),
        ],
      ),
      body: SafeArea(
        
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/openingBG.png'),
                    fit: BoxFit.cover,
                  )
              ),
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 30.0),
                  Text('Register', style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontFamily: 'Elsie2',
                  ),),
                  SizedBox(height: 20.0),
                  TextFormField(
                    decoration: textInputDecoration.copyWith(hintText: 'email'),
                    validator: (val) => val.isEmpty ? 'Enter an email' : null,
                    onChanged: (val) {
                      setState(() => email = val);
                    },
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                    decoration: textInputDecoration.copyWith(hintText: 'password'),
                    obscureText: true,
                    validator: (val) => val.length < 6 ? 'Enter a password with more than 6 characters' : null,
                    onChanged: (val) {
                      setState(() => password = val);
                    },
                  ),
                  SizedBox(height: 20.0),
                  RaisedButton(
                      color: Color(0xFFFBB03B),
                      child: Text(
                        'Register',
                        style: TextStyle(color: Colors.white, ),

                      ),
                      onPressed: () async {
                        if(_formKey.currentState.validate()){
                          dynamic result = await _auth.registerWithEmailAndPassword(email, password);
                          if(result == null) {
                            setState(() {
                              error = 'Please supply a valid email';
                            });
                          }
                        }
                      }
                  ),
                  SizedBox(height: 12.0),
                  Text(
                    error,
                    style: TextStyle(color: Colors.red, fontSize: 14.0),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}