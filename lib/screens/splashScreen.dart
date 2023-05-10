import 'package:flutter/material.dart';
import 'package:pet_user_app/models/businessLayer/baseRoute.dart';
import 'package:pet_user_app/screens/introScreen.dart';

class SplashScreen extends BaseRoute {
  // SplashScreen() : super();
  SplashScreen({a, o}) : super(a: a, o: o, r: 'SplashScreen');
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends BaseRouteState {
  _SplashScreenState() : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(gradient: LinearGradient(stops: [0.75, 1], begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Theme.of(context).primaryColor, Theme.of(context).primaryColorLight])),
      child: Center(
          child: Container(
        width: MediaQuery.of(context).size.width,
        // color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 65,
                backgroundImage: AssetImage('assets/splashLogo.png'),
              ),
            ),
            Container(
              // color: Colors.red,
              padding: const EdgeInsets.only(top: 140),
              child: Text(
                'Loading...',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
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
    _init();
  }

  _init() {
    try {
      Future.delayed(Duration(seconds: 3), () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => IntroScreen(
                  a: widget.analytics,
                  o: widget.observer,
                )));
      });
    } catch (e) {
      print("Exception - splashScreen.dart - _init():" + e.toString());
    }
  }
}
