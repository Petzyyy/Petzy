import 'package:flutter/material.dart';
import 'package:pet_user_app/models/baseRoute.dart';
import 'package:pet_user_app/screens/chatScreen.dart';

class ChatListScreen extends BaseRoute {
  // ChatListScreen() : super();
  ChatListScreen({a, o}) : super(a: a, o: o, r: 'ChatListScreen');
  @override
  _ChatListScreenState createState() => new _ChatListScreenState();
}

class _ChatListScreenState extends BaseRouteState {
  _ChatListScreenState() : super();

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
          title: Text(
            'Chats',
            style: Theme.of(context).primaryTextTheme.headline1,
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Container(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ChatScreen(
                            a: widget.analytics,
                            o: widget.observer,
                          )));
                },
                child: Container(
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
                                    AssetImage('assets/home4.png')),
                          ),
                        ),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Sara Seth',
                              style:
                                  Theme.of(context).primaryTextTheme.bodyText1,
                            ),
                            Container(
                                padding: EdgeInsets.only(right: 15),
                                child: Text(
                                  '6:02 PM',
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .subtitle2,
                                )),
                          ],
                        ),
                        subtitle: Text(
                          'Definetly they seem to Enjoy...',
                          style: Theme.of(context).primaryTextTheme.subtitle2,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onDoubleTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ChatScreen(
                            a: widget.analytics,
                            o: widget.observer,
                          )));
                },
                child: Container(
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
                              'No problem',
                              style:
                                  Theme.of(context).primaryTextTheme.subtitle2,
                            ),
                            Container(
                                padding: EdgeInsets.only(right: 15),
                                child: Column(
                                  children: [
                                    Text(
                                      'seen',
                                      style: Theme.of(context)
                                          .primaryTextTheme
                                          .subtitle2,
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )));
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
