import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pet_user_app/models/baseRoute.dart';

class WishListScreen extends BaseRoute {
  // WishListScreen() : super();
  WishListScreen({a, o}) : super(a: a, o: o, r: 'WishListScreen');
  @override
  _WishListScreenState createState() => new _WishListScreenState();
}

class _WishListScreenState extends BaseRouteState {
  _WishListScreenState() : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text(
          'My Wishlist',
          style: Theme.of(context).primaryTextTheme.headline1,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 15, right: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 45,
                // color: Colors.red,
                child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return index == 0
                          ? Padding(
                              padding: const EdgeInsets.only(),
                              child: Container(
                                margin: EdgeInsets.only(top: 5),
                                width: MediaQuery.of(context).size.width,
                                height: 120,
                                child: Card(
                                  elevation: 2,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 5, left: 10),
                                        child: Column(
                                          children: [
                                            CircleAvatar(
                                              radius: 35,
                                              backgroundImage: AssetImage(
                                                  'assets/catimage4.png'),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Text('Sara Seth'),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(top: 10, left: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('Pet Boarding'),
                                            Text('Fluffy,cookie',
                                                style: Theme.of(context)
                                                    .primaryTextTheme
                                                    .subtitle2),
                                            Text('2 day meal',
                                                style: Theme.of(context)
                                                    .primaryTextTheme
                                                    .subtitle2),
                                            Text('Start : 11 Feb 9:00 AM',
                                                style: Theme.of(context)
                                                    .primaryTextTheme
                                                    .subtitle2),
                                            Text('End : 15 Feb 12:00 PM',
                                                style: Theme.of(context)
                                                    .primaryTextTheme
                                                    .subtitle2)
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(right: 3),
                                        //  color: Colors.yellow,
                                        width:
                                            MediaQuery.of(context).size.width -
                                                280,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Icon(Icons.favorite,
                                                color: Theme.of(context)
                                                    .primaryColor),
                                            Text(
                                              'Rs.6,400',
                                              style: Theme.of(context)
                                                  .primaryTextTheme
                                                  .headline1,
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          : index == 1
                              ? Padding(
                                  padding: const EdgeInsets.only(),
                                  child: Container(
                                    margin: EdgeInsets.only(top: 5),
                                    width: MediaQuery.of(context).size.width,
                                    height: 100,
                                    child: Card(
                                      elevation: 2,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 15, left: 10),
                                            child: CircleAvatar(
                                              backgroundColor:
                                                  Colors.transparent,
                                              radius: 35,
                                              backgroundImage: AssetImage(
                                                  'assets/prod1.png'),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 10, left: 08),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text('kennel Kitchen Wet Food'),
                                                Text('Chicken',
                                                    style: Theme.of(context)
                                                        .primaryTextTheme
                                                        .subtitle2),
                                                Text('180 gm',
                                                    style: Theme.of(context)
                                                        .primaryTextTheme
                                                        .subtitle2),
                                                Row(
                                                  children: [
                                                    Text('Quantity : 1',
                                                        style: Theme.of(context)
                                                            .primaryTextTheme
                                                            .subtitle2),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 5),
                                                      child: Icon(
                                                        FontAwesomeIcons
                                                            .caretUp,
                                                        color:
                                                            Color(0xFF8F8F8F),
                                                        size: 15,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 5),
                                                      child: Icon(
                                                        FontAwesomeIcons
                                                            .caretDown,
                                                        color:
                                                            Color(0xFF8F8F8F),
                                                        size: 15,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(right: 3),
                                            // color: Colors.yellow,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width -
                                                300,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Icon(
                                                  Icons.favorite,
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                ),
                                                Text(
                                                  'Rs.180',
                                                  style: Theme.of(context)
                                                      .primaryTextTheme
                                                      .headline1,
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              : Padding(
                                  padding: const EdgeInsets.only(),
                                  child: Container(
                                    margin: EdgeInsets.only(top: 5),
                                    width: MediaQuery.of(context).size.width,
                                    height: 120,
                                    child: Card(
                                      elevation: 2,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 5, left: 10),
                                            child: Column(
                                              children: [
                                                CircleAvatar(
                                                  radius: 35,
                                                  backgroundImage: AssetImage(
                                                      'assets/dogimage2.png'),
                                                ),
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(top: 10),
                                                  child: Text('Jay Seth'),
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 10, left: 10),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text('Pet Walking'),
                                                Text('Fluffy',
                                                    style: Theme.of(context)
                                                        .primaryTextTheme
                                                        .subtitle2),
                                                Text('2 walks',
                                                    style: Theme.of(context)
                                                        .primaryTextTheme
                                                        .subtitle2),
                                                Text('1stwalk : 11 Feb 9:00 AM',
                                                    style: Theme.of(context)
                                                        .primaryTextTheme
                                                        .subtitle2),
                                                Text(
                                                    '2ndwalk : 15 Feb 12:00 PM',
                                                    style: Theme.of(context)
                                                        .primaryTextTheme
                                                        .subtitle2)
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(right: 3),
                                            //  color: Colors.yellow,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width -
                                                280,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Icon(Icons.favorite,
                                                    color: Theme.of(context)
                                                        .primaryColor),
                                                Text(
                                                  'Rs.600',
                                                  style: Theme.of(context)
                                                      .primaryTextTheme
                                                      .headline1,
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                    }),
              )
            ],
          ),
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
