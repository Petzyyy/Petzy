import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pet_user_app/Utils/Api.dart';
import 'package:pet_user_app/models/businessLayer/baseRoute.dart';
import 'package:pet_user_app/screens/logInScreen1.dart';
import 'package:pet_user_app/widgets/bottomNavigationBarWidget.dart';
import 'package:http/http.dart' as http;
var response, name , email, phone ,password;



class SIgnUpScreen extends BaseRoute {
  // SIgnUpScreen() : super();
  SIgnUpScreen({a, o}) : super(a: a, o: o, r: 'SIgnUpScreen');
  @override
  _SIgnUpScreenState createState() => new _SIgnUpScreenState();
}

class _SIgnUpScreenState extends BaseRouteState {
  _SIgnUpScreenState() : super();

final namecontroller = TextEditingController();
final emailcontroller = TextEditingController();
final passwordcontroller = TextEditingController();
final phonecontroller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: (){
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF34385A),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 15, right: 15),
        child: SingleChildScrollView(
            child: Container(
          // height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          // color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 25),
                child: Text(
                  'Create Account',
                  style: Theme.of(context).primaryTextTheme.headline5,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  "Let's get you started",
                  style: Theme.of(context).primaryTextTheme.subtitle1,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: TextFormField(
                  controller: namecontroller,
                  decoration: InputDecoration(
                    hintText: 'Full Name',
                    contentPadding: EdgeInsets.only(top: 5, left: 10),
                  ),
                  onChanged: (value){
                    name=value;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: TextFormField(
                  controller: emailcontroller,
                  decoration: InputDecoration(
                    hintText: 'Email Address',
                    contentPadding: EdgeInsets.only(top: 5, left: 10),
                  ),
                  onChanged: (value){
                    email=value;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: TextFormField(
                  controller: phonecontroller,
                  decoration: InputDecoration(
                    hintText: 'Mobile Number',
                    contentPadding: EdgeInsets.only(top: 5, left: 10),
                  ),
                  onChanged: (value){
                    phone=value;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: TextFormField(
                  controller: passwordcontroller,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    contentPadding: EdgeInsets.only(top: 5, left: 10),
                  ),
                  onChanged: (value){
                    password=value;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Confirm Password',
                    contentPadding: EdgeInsets.only(top: 5, left: 10),
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
      bottomNavigationBar: Container(
        height: 155,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                // color: Colors.red,
                height: 45,
                padding: EdgeInsets.only(left: 15, right: 15),
                width: MediaQuery.of(context).size.width,
                child: TextButton(
                    // style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor)),
                    onPressed: () async {
                      // print('Hello');
                      response=await http.post(
                        Uri.parse(Api.urlAddUser),
                        headers: <String, String>{
                          'Content-Type':
                          'application/json; charset=UTF-8',
                        },
                        body: json.encode({
                          "name":name,
                          "email":email,
                          "phone":phone,
                          "password":password

                        }),

                      );

                      print(name);
                      print(response.body);

                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => LogInScreen1(
                                a: widget.analytics,
                                o: widget.observer,
                              )));
                    },
                    child: Text(
                      "Sign Up",
                    ))),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account?', style: Theme.of(context).primaryTextTheme.headline4),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => LogInScreen1(
                                  a: widget.analytics,
                                  o: widget.observer,
                                )));
                      },
                      child: Text(
                        ' Log In',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 15,
                          color: Color(0xFFF0900C),
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 15, top: 10),
                  child: Text(
                    'Skip for now',
                    style: Theme.of(context).primaryTextTheme.subtitle1,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  bool isloading = true;

  @override
  void initState() {
    super.initState();
  }
}
