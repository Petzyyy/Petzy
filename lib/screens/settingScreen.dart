import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pet_user_app/models/businessLayer/baseRoute.dart';
import 'package:pet_user_app/screens/aboutUsScreen.dart';
import 'package:pet_user_app/screens/addRatingScreen.dart';
import 'package:pet_user_app/screens/languageSelectionScreen.dart';

import 'package:pet_user_app/screens/logInScreen1.dart';
import 'package:pet_user_app/screens/myPostScreen.dart';
import 'package:pet_user_app/screens/profileScreen.dart';
import 'package:pet_user_app/screens/supportsUsScreen.dart';

import 'package:pet_user_app/screens/userAccountScreen.dart';
import 'package:pet_user_app/screens/userReviewScreen.dart';

class SettingScreen extends BaseRoute {
  // SettingScreen() : super();
  SettingScreen({a, o}) : super(a: a, o: o, r: 'SettingScreen');
  @override
  _SettingScreenState createState() => new _SettingScreenState();
}

class _SettingScreenState extends BaseRouteState {
  _SettingScreenState() : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios),
          title: Text(
            'Settings',
            style: Theme.of(context).primaryTextTheme.headline1,
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 0),
                  // color: Colors.red,
                  height: 180,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 28),
                        child: CircleAvatar(
                            radius: 80,
                            backgroundImage:
                                AssetImage('assets/catimage2.png')),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Tanvi K.',
                              style:
                                  Theme.of(context).primaryTextTheme.headline5,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 5, bottom: 10),
                              child: Text(
                                'khar West,Mumbai',
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .subtitle2,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),

                  // padding: const EdgeInsets.
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => UserAccountScreen(
                              a: widget.analytics,
                              o: widget.observer,
                            )));
                  },
                  child: Container(
                      color: Colors.transparent,
                      margin: EdgeInsets.only(bottom: 10, top: 35),
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(),
                                child: Icon(
                                  FontAwesomeIcons.user,
                                  color: Theme.of(context).primaryColor,
                                  size: 18,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Text(
                                  'Account',
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .bodyText1,
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(),
                            child: Icon(Icons.arrow_forward_ios_outlined,
                                size: 18, color: Color(0xFF8F8F8F)),
                          )
                        ],
                      )),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => UserReviewScreen(
                              a: widget.analytics,
                              o: widget.observer,
                            )));
                  },
                  child: Container(
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      color: Colors.transparent,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(),
                                child: Icon(
                                  Icons.reviews,
                                  size: 18,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Text(
                                  'My Reviews',
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .bodyText1,
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(),
                            child: Icon(Icons.arrow_forward_ios_outlined,
                                size: 18, color: Color(0xFF8F8F8F)),
                          )
                        ],
                      )),
                ),
                Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    // color: Colors.red,
                    color: Colors.transparent,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(),
                              child: Icon(
                                FontAwesomeIcons.wallet,
                                size: 18,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Text(
                                'Payment Methods',
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .bodyText1,
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(),
                          child: Icon(Icons.arrow_forward_ios_outlined,
                              size: 18, color: Color(0xFF8F8F8F)),
                        )
                      ],
                    )),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => LanguageSelectionScreen(
                              a: widget.analytics,
                              o: widget.observer,
                            )));
                  },
                  child: Container(
                      color: Colors.transparent,
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      // color: Colors.red,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(),
                                child: Icon(
                                  FontAwesomeIcons.language,
                                  size: 18,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Text(
                                  'Language Selection',
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .bodyText1,
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(),
                            child: Icon(Icons.arrow_forward_ios_outlined,
                                size: 18, color: Color(0xFF8F8F8F)),
                          )
                        ],
                      )),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MyPostScreen(
                              a: widget.analytics,
                              o: widget.observer,
                            )));
                  },
                  child: Container(
                      color: Colors.transparent,
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      // color: Colors.red,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(),
                                child: Icon(
                                  FontAwesomeIcons.stickyNote,
                                  size: 18,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Text(
                                  'My Post',
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .bodyText1,
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(),
                            child: Icon(Icons.arrow_forward_ios_outlined,
                                size: 18, color: Color(0xFF8F8F8F)),
                          )
                        ],
                      )),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AboutUsScreen(
                              a: widget.analytics,
                              o: widget.observer,
                            )));
                  },
                  child: Container(
                      color: Colors.transparent,
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      // color: Colors.red,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(),
                                child: Icon(
                                  FontAwesomeIcons.infoCircle,
                                  size: 18,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Text(
                                  'About us',
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .bodyText1,
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(),
                            child: Icon(Icons.arrow_forward_ios_outlined,
                                size: 18, color: Color(0xFF8F8F8F)),
                          )
                        ],
                      )),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SupportsUsScreen(
                              a: widget.analytics,
                              o: widget.observer,
                            )));
                  },
                  child: Container(
                      color: Colors.transparent,
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      // color: Colors.red,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(),
                                child: Icon(
                                  FontAwesomeIcons.handsHelping,
                                  size: 18,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Text(
                                  'Supports',
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .bodyText1,
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(),
                            child: Icon(Icons.arrow_forward_ios_outlined,
                                size: 18, color: Color(0xFF8F8F8F)),
                          )
                        ],
                      )),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AddRatingScreen(
                              a: widget.analytics,
                              o: widget.observer,
                            )));
                  },
                  child: Container(
                      color: Colors.transparent,
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      // color: Colors.red,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(),
                                child: Icon(
                                  FontAwesomeIcons.thumbsUp,
                                  size: 18,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Text(
                                  'Love the app? Rate us',
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .bodyText1,
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(),
                            child: Icon(Icons.arrow_forward_ios_outlined,
                                size: 18, color: Color(0xFF8F8F8F)),
                          )
                        ],
                      )),
                ),
                GestureDetector(
                  onTap: () {
                    logOutDialog();
                  },
                  child: Container(
                      color: Colors.transparent,
                      margin: EdgeInsets.only(top: 35, bottom: 10),
                      // color: Colors.red,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(),
                                child: Icon(
                                  Icons.logout,
                                  size: 18,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Text(
                                  'Logout',
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .bodyText1,
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(),
                            child: Icon(Icons.arrow_forward_ios_outlined,
                                size: 18, color: Color(0xFF8F8F8F)),
                          )
                        ],
                      )),
                ),
              ],
            ),
          ),
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

  logOutDialog() async {
    try {
      showCupertinoDialog(
          context: context,
          builder: (BuildContext context) {
            return Theme(
              data: ThemeData(dialogBackgroundColor: Colors.white),
              child: CupertinoAlertDialog(
                title: Text(
                  "Exit",
                ),
                content: Text('Are you sure you want to exit app?'),
                actions: <Widget>[
                  CupertinoDialogAction(
                    child: Text(
                      'Cancle',
                      style: TextStyle(color: Colors.red),
                    ),
                    onPressed: () {
                      // Dismiss the dialog but don't
                      // dismiss the swiped item
                      return Navigator.of(context).pop(false);
                    },
                  ),
                  CupertinoDialogAction(
                    child: Text('Logout'),
                    onPressed: () async {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => LogInScreen1(
                              a: widget.analytics, o: widget.observer)));
                    },
                  ),
                ],
              ),
            );
          });
    } catch (e) {
      print('Exception - base.dart - exitAppDialog(): ' + e.toString());
    }
  }
}
