import 'package:flutter/material.dart';
import 'package:pet_user_app/models/businessLayer/baseRoute.dart';
import 'package:pet_user_app/screens/passwordChangedSuceessScreen.dart';

class CreateNewPasswordScreen extends BaseRoute {
  // CreateNewPasswordScreen() : super();
  CreateNewPasswordScreen({a, o}) : super(a: a, o: o, r: 'CreateNewPasswordScreen');
  @override
  _CreateNewPasswordScreenState createState() => new _CreateNewPasswordScreenState();
}

class _CreateNewPasswordScreenState extends BaseRouteState {
  bool _showNewPassword = true;
  bool _showConfirmPassword = true;
  _CreateNewPasswordScreenState() : super();

@override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: GestureDetector(
            onTap: ()
            {
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
                    'Create New Password',
                    style: Theme.of(context).primaryTextTheme.headline5,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text(
                    'You are just one step away from recovering your account',
                    style: Theme.of(context).primaryTextTheme.subtitle1,
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 70),
                  child: TextFormField(
                    obscureText: _showNewPassword,
                    decoration: InputDecoration(
                      hintText: 'New Password',
                      suffixIcon: IconButton(
                        icon: Icon(_showNewPassword ? Icons.visibility_off : Icons.visibility),
                        onPressed: () {
                          _showNewPassword = !_showNewPassword;
                          setState(() {});
                        },
                      ),
                      contentPadding: EdgeInsets.only(top: 5, left: 10),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: TextFormField(
                    obscureText: _showConfirmPassword,
                    decoration: InputDecoration(
                      hintText: 'Confirm Password',
                      suffixIcon: IconButton(
                        icon: Icon(_showConfirmPassword ? Icons.visibility_off : Icons.visibility),
                        onPressed: () {
                          _showConfirmPassword = !_showConfirmPassword;
                          setState(() {});
                        },
                      ),
                      contentPadding: EdgeInsets.only(top: 5, left: 10),
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
                          onPressed: () {
                            // print('Hello');
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => PasswordChangedSuccessScreen(
                                      a: widget.analytics,
                                      o: widget.observer,
                                    )));
                          },
                          child: Text(
                            "Save",
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
