import 'package:flutter/material.dart';
import 'package:pet_user_app/models/businessLayer/baseRoute.dart';
import 'package:pet_user_app/screens/logInScreen1.dart';

class PasswordChangedSuccessScreen extends BaseRoute {
  // PasswordChangedSuccessScreen() : super();
  PasswordChangedSuccessScreen({a, o}) : super(a: a, o: o, r: 'PasswordChangedSuccessScreen');
  @override
  _PasswordChangedSuccessScreenState createState() => new _PasswordChangedSuccessScreenState();
}

class _PasswordChangedSuccessScreenState extends BaseRouteState {
  _PasswordChangedSuccessScreenState() : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 50),
            height: MediaQuery.of(context).size.height * 0.41,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/passwordReset.png'), fit: BoxFit.cover)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 0),
            child: Text(
              'Password Reset',
              style: Theme.of(context).primaryTextTheme.headline5,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              'You are all set to go!',
              style: Theme.of(context).primaryTextTheme.subtitle1,
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
          // color: Colors.red,
          height: 45,
          padding: EdgeInsets.only(left: 20, right: 20),
          width: MediaQuery.of(context).size.width,
          child: TextButton(
              onPressed: () {
                // print('Hello');
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => LogInScreen1(
                          a: widget.analytics,
                          o: widget.observer,
                        )));
              },
              child: Text(
                "Log In",
              ))),
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
