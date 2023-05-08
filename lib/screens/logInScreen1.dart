import 'package:flutter/material.dart';
import 'package:pet_user_app/models/businessLayer/baseRoute.dart';
import 'package:pet_user_app/screens/logInScreen2.dart';
import 'package:pet_user_app/screens/otpVerificationScreen.dart';
import 'package:pet_user_app/screens/signUpScreen.dart';

class LogInScreen1 extends BaseRoute {
  // LogInScreen1() : super();
  LogInScreen1({a, o}) : super(a: a, o: o, r: 'LogInScreen1');
  @override
  _LogInScreen1State createState() => new _LogInScreen1State();
}

class _LogInScreen1State extends BaseRouteState {
  _LogInScreen1State() : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 15, right: 15),
        child: SingleChildScrollView(
          child: Stack(alignment: Alignment.bottomCenter, children: [
            Container(
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 100),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * .40,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/signIn.png'),
                            fit: BoxFit.fill)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 80),
                    child: TextFormField(
                      // controller: _cForgotEmail,
                      decoration: InputDecoration(
                        hintText: 'Enter address or mobile number',
                        // prefixIcon: Icon(Icons.mail),
                        contentPadding: EdgeInsets.only(top: 5, left: 10),
                      ),
                    ),
                  ),
                  // Container(
                  //     margin: EdgeInsets.only(top: 20),
                  //     // color: Colors.red,
                  //     height: 45,
                  //     // padding: EdgeInsets.only(left: 20, right: 20),
                  //     width: MediaQuery.of(context).size.width,
                  //     child: TextButton(
                  //         // style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor)),
                  //         onPressed: () {
                  //           print('${MediaQuery.of(context).size.width}');
                  //           // print('Hello');
                  //           Navigator.of(context).push(MaterialPageRoute(
                  //               builder: (context) => LogInScreen2(
                  //                     a: widget.analytics,
                  //                     o: widget.observer,
                  //                   )));
                  //         },
                  //         child: Text(
                  //           "Continue",
                  //         ))),
                ],
              ),
            ),
            // Container(
            //   // color: Colors.yellow,
            //   margin: EdgeInsets.only(bottom: 10),
            //   // bottom: 10,
            //   // padding: EdgeInsets.only(top: 50),
            //   child: Column(
            //     children: [
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           Text(
            //             'New here?',
            //             style: TextStyle(fontSize: 15, color: Theme.of(context).primaryColor),
            //           ),
            //           GestureDetector(
            //             onTap: () {
            //               Navigator.of(context).push(MaterialPageRoute(
            //                   builder: (context) => SIgnUpScreen(
            //                         a: widget.analytics,
            //                         o: widget.observer,
            //                       )));
            //             },
            //             child: Text(
            //               ' Sign up',
            //               style: TextStyle(
            //                 decoration: TextDecoration.underline,
            //                 fontSize: 15,
            //                 color: Color(0xFFF0900C),
            //               ),
            //             ),
            //           )
            //         ],
            //       ),
            //       Padding(
            //         padding: EdgeInsets.only(top: 15),
            //         child: Text(
            //           'Skip for now',
            //           style: Theme.of(context).primaryTextTheme.subtitle1,
            //         ),
            //       )
            //     ],
            //   ),
            // )
          ]),
        ),
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
                    onPressed: () {
                      print('Hello');
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => LogInScreen2(
                                a: widget.analytics,
                                o: widget.observer,
                              )));
                    },
                    child: Text(
                      "Continue",
                    ))),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => OtpVerificationScreen(
                                  a: widget.analytics,
                                  o: widget.observer,
                                )));
                      },
                      child: Text('New here?',
                          style: Theme.of(context).primaryTextTheme.headline4),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SIgnUpScreen(
                                  a: widget.analytics,
                                  o: widget.observer,
                                )));
                      },
                      child: Text(
                        ' Sign Up',
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
