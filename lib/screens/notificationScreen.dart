import 'package:flutter/material.dart';
import 'package:pet_user_app/models/baseRoute.dart';

class NotificationScreen extends BaseRoute {
  // NotificationScreen() : super();
  NotificationScreen({a, o}) : super(a: a, o: o, r: 'NotificationScreen');
  @override
  _NotificationScreenState createState() => new _NotificationScreenState();
}

class _NotificationScreenState extends BaseRouteState {
  _NotificationScreenState() : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios),
          title: Text(
            'Notification',
            style: Theme.of(context).primaryTextTheme.headline1,
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Column(
              children: [
                Container(
                  child: Card(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    elevation: 2,
                    child: Container(
                      child: ListTile(
                        horizontalTitleGap: 5,
                        contentPadding: EdgeInsets.all(0),
                        leading: Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 0),
                            child: CircleAvatar(
                                radius: 40,
                                // backgroundColor: Colors.red,
                                backgroundImage:
                                    AssetImage('assets/catimage2.png')),
                          ),
                        ),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Nupur Shetty',
                              style:
                                  Theme.of(context).primaryTextTheme.bodyText1,
                            ),
                            Container(
                                padding: EdgeInsets.only(right: 15),
                                child: Column(
                                  children: [
                                    Text(
                                      '12 jan',
                                      style: Theme.of(context)
                                          .primaryTextTheme
                                          .subtitle2,
                                    ),
                                  ],
                                )),
                          ],
                        ),
                        subtitle: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Pet Boarding ',
                              style:
                                  Theme.of(context).primaryTextTheme.subtitle2,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Card(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    elevation: 2,
                    child: Container(
                      child: ListTile(
                        horizontalTitleGap: 5,
                        contentPadding: EdgeInsets.all(0),
                        leading: Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 0),
                            child: CircleAvatar(
                                radius: 40,
                                // backgroundColor: Colors.red,
                                backgroundImage:
                                    AssetImage('assets/dogimage2.png')),
                          ),
                        ),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Sunil Shetty',
                              style:
                                  Theme.of(context).primaryTextTheme.bodyText1,
                            ),
                            Container(
                                padding: EdgeInsets.only(right: 15),
                                child: Column(
                                  children: [
                                    Text(
                                      '10 jan',
                                      style: Theme.of(context)
                                          .primaryTextTheme
                                          .subtitle2,
                                    ),
                                  ],
                                )),
                          ],
                        ),
                        subtitle: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Dog Walking ',
                              style:
                                  Theme.of(context).primaryTextTheme.subtitle2,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
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
}
