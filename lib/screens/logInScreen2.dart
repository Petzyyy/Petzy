import 'package:flutter/material.dart';
import 'package:pet_user_app/models/businessLayer/baseRoute.dart';
import 'package:pet_user_app/screens/forgotPasswordScreen.dart';
import 'package:pet_user_app/widgets/bottomNavigationBarWidget.dart';

class LogInScreen2 extends BaseRoute {
  // LogInScreen2() : super();
  LogInScreen2({a, o}) : super(a: a, o: o, r: 'LogInScreen2');
  @override
  _LogInScreen2State createState() => new _LogInScreen2State();
}

class _LogInScreen2State extends BaseRouteState {
  bool _showPassword = true;
  _LogInScreen2State() : super();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: GestureDetector(
            onTap: () {
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
                    'Enter Password',
                    style: Theme.of(context).primaryTextTheme.headline5,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text(
                    'Enter the password you used to sign up',
                    style: Theme.of(context).primaryTextTheme.subtitle1,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 70),
                      child: Text('Enter Password',
                          style: Theme.of(context).primaryTextTheme.headline6),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: TextFormField(
                    obscureText: _showPassword,
                    // controller: _cForgotEmail,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(_showPassword
                            ? Icons.visibility_off
                            : Icons.visibility),
                        onPressed: () {
                          _showPassword = !_showPassword;
                          setState(() {});
                        },
                      ),
                      hintText: 'Input text',
                      // prefixIcon: Icon(Icons.mail),
                      contentPadding: EdgeInsets.only(top: 5, left: 10),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: GestureDetector(
                        onTap: ()  {
                          Navigator.of(context)
                              .push(MaterialPageRoute(
                                  builder: (context) => ForgotPasswordScreen(
                                        a: widget.analytics,
                                        o: widget.observer,
                                      )));
                        },
                        child: Text('Forgot Password',
                            style:
                                Theme.of(context).primaryTextTheme.headline6),
                      ),
                    ),
                  ],
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
                                builder: (context) => BottomNavigationWidget(
                                      a: widget.analytics,
                                      o: widget.observer,
                                    )));
                          },
                          child: Text(
                            "Log In",
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
