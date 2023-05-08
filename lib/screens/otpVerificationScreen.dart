import 'package:flutter/material.dart';
import 'package:pet_user_app/models/businessLayer/baseRoute.dart';
import 'package:pet_user_app/screens/createNewPasswordScreen.dart';
import 'package:pinput/pin_put/pin_put.dart';

class OtpVerificationScreen extends BaseRoute {
  // OtpVerificationScreen() : super();
  OtpVerificationScreen({a, o}) : super(a: a, o: o, r: 'OtpVerificationScreen');
  @override
  _OtpVerificationScreenState createState() => new _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends BaseRouteState {
  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(borderRadius: BorderRadius.circular(5.0), border: Border.all(color: Theme.of(context).primaryColor, width: 1));
  }

  final TextEditingController _pinPutController = TextEditingController();
  _OtpVerificationScreenState() : super();

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
                    'Enter OTP',
                    style: Theme.of(context).primaryTextTheme.headline5,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text(
                    'We have sent the login OTP on your mobile number',
                    style: Theme.of(context).primaryTextTheme.subtitle1,
                  ),
                ),
                Container(
                  // color: Colors.red,
                  width: 250,
                  padding: EdgeInsets.only(top: 70),
                  child: PinPut(
                    textStyle: TextStyle(color: Colors.black),
                    // inputDecoration: InputDecoration(border: InputBorder.none),
                    inputDecoration: InputDecoration(counterStyle: Theme.of(context).primaryTextTheme.headline6, fillColor: Colors.transparent, border: InputBorder.none, counterText: 'Resend OTP', enabledBorder: InputBorder.none, focusedBorder: InputBorder.none),

                    autofocus: false,

                    fieldsCount: 4,
                    controller: _pinPutController,
                    submittedFieldDecoration: _pinPutDecoration.copyWith(
                      border: Border.all(width: 0, color: Theme.of(context).primaryColor),
                      borderRadius: BorderRadius.circular(5.0),
                    ),

                    selectedFieldDecoration: _pinPutDecoration,
                    followingFieldDecoration: _pinPutDecoration.copyWith(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(color: Theme.of(context).primaryColor, width: 1),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 70),
                  child: Container(
                      // color: Colors.red,
                      height: 45,
                      // padding: EdgeInsets.only(left: 20, right: 20),
                      width: MediaQuery.of(context).size.width,
                      child: TextButton(
                          // style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor)),
                          onPressed: () {
                            // print('Hello');
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => CreateNewPasswordScreen(
                                      a: widget.analytics,
                                      o: widget.observer,
                                    )));
                          },
                          child: Text(
                            "Next",
                          ))),
                )
              ],
            ),
          )),
        ));
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
