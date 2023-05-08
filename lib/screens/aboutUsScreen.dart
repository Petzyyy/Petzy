import 'package:flutter/material.dart';

import 'package:pet_user_app/models/businessLayer/baseRoute.dart';

class AboutUsScreen extends BaseRoute {
  AboutUsScreen({a, o}) : super(a: a, o: o, r: 'AboutUsScreen');
  @override
  _AboutUsScreenState createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends BaseRouteState {
  _AboutUsScreenState() : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("About US"),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: ListTile(
                    leading: const CircleAvatar(
                      backgroundColor: Colors.transparent,
                      backgroundImage:
                          AssetImage('assets/logo-no-background.png'),
                      radius: 50,
                    ),
                    title: Text(
                      'Petzy Group',
                      style:
                          Theme.of(context).primaryTextTheme.headline6.copyWith(
                                fontSize: 24, // Increase the font size to 24
                              ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: BoxDecoration(
                      color: const Color(0xFFDDDFF5),
                      border: Border.all(
                          width: 1, color: Theme.of(context).primaryColor),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15),
                      )),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: Text(
                      "Welcome to Our App! We are a dedicated team of developers and designers passionate about creating innovative solutions. Our mission is to provide users with a seamless and intuitive experience through our app. We strive to deliver high-quality features and functionality that cater to the needs of our users. With a strong focus on user satisfaction, we continuously work on enhancing and improving our app to meet the ever-evolving demands of today's digital world. Join us on this exciting journey as we aim to make a positive impact and bring value to your daily life.",
                      style: Theme.of(context).primaryTextTheme.bodyText2,
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
