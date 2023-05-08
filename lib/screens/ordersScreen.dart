import 'package:flutter/material.dart';
import 'package:pet_user_app/models/businessLayer/baseRoute.dart';
import 'package:pet_user_app/screens/chatListScreen.dart';
import 'package:pet_user_app/screens/orderDetailScreen.dart';

class OrdersScreen extends BaseRoute {
  // OrdersScreen() : super();
  OrdersScreen({a, o}) : super(a: a, o: o, r: 'OrdersScreen');
  @override
  _OrdersScreenState createState() => new _OrdersScreenState();
}

class _OrdersScreenState extends BaseRouteState {
  _OrdersScreenState() : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Orders',
          style: Theme.of(context).primaryTextTheme.headline1,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ChatListScreen(
                          a: widget.analytics,
                          o: widget.observer,
                        )));
              },
              child: Icon(
                Icons.message_sharp,
                color: Color(0xFF34385A),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Container(
            child: Column(
              children: [
                Container(
                  height: 37,
                  width: MediaQuery.of(context).size.width,
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Icon(Icons.search),
                      ),
                      hintText: 'Search',
                      contentPadding: EdgeInsets.only(top: 5, left: 10),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 550,
                  child: DefaultTabController(
                    length: 2,
                    child: Scaffold(
                      body: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(bottom: 12),
                            height: 61,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(right: 15, left: 15),
                              child: Container(
                                child: PreferredSize(
                                  preferredSize: Size.fromHeight(40.0),
                                  child: AppBar(
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(2.0),
                                      ),
                                    ),
                                    backgroundColor: Colors.white,
                                    bottom: TabBar(
                                      unselectedLabelColor: Colors.grey,
                                      indicatorColor:
                                          Theme.of(context).primaryColor,
                                      tabs: [
                                        Tab(
                                          child: Container(
                                            child: Text(
                                              'Active',
                                            ),
                                          ),
                                        ),
                                        Tab(
                                          child: Container(
                                            child: Text(
                                              'Past',
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),

                          // create widgets for each tab bar here
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(0),
                              child: TabBarView(
                                children: [
                                  // first tab bar view widget
                                  Container(
                                      child: ListView.builder(
                                          itemCount: 3,
                                          itemBuilder:
                                              (BuildContext ctx, int index) {
                                            return Padding(
                                              padding: EdgeInsets.only(),
                                              child: Card(
                                                elevation: 3,
                                                child: Container(
                                                  height: 175,
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  child: Column(
                                                    children: [
                                                      GestureDetector(
                                                        onTap: () {
                                                          Navigator.of(context).push(
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          OrderDetailScreen(
                                                                            a: widget.analytics,
                                                                            o: widget.observer,
                                                                          )));
                                                        },
                                                        child: Container(
                                                          //color: Colors.green,
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    top: 10,
                                                                    left: 10),
                                                            child: Row(
                                                              children: [
                                                                Container(
                                                                  child: Column(
                                                                    children: [
                                                                      CircleAvatar(
                                                                        radius:
                                                                            38,
                                                                        backgroundImage:
                                                                            AssetImage('assets/catimage2.png'),
                                                                      ),
                                                                      Container(
                                                                        margin: EdgeInsets.only(
                                                                            top:
                                                                                10),
                                                                        child:
                                                                            Text(
                                                                          'Sara Seth',
                                                                          style: Theme.of(context)
                                                                              .primaryTextTheme
                                                                              .headline6,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      left: 5),
                                                                  child: Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        'Pet Boarding',
                                                                        style: Theme.of(context)
                                                                            .primaryTextTheme
                                                                            .headline1,
                                                                      ),
                                                                      Padding(
                                                                        padding:
                                                                            const EdgeInsets.only(top: 1),
                                                                        child:
                                                                            Row(
                                                                          children: [
                                                                            Padding(
                                                                              padding: const EdgeInsets.only(left: 5),
                                                                              child: Text(
                                                                                'Fluffy, Cookie',
                                                                                style: Theme.of(context).primaryTextTheme.subtitle2,
                                                                              ),
                                                                            )
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding:
                                                                            const EdgeInsets.only(top: 1),
                                                                        child:
                                                                            Row(
                                                                          children: [
                                                                            Padding(
                                                                              padding: const EdgeInsets.only(left: 5),
                                                                              child: Text(
                                                                                '2 daily meals',
                                                                                style: Theme.of(context).primaryTextTheme.subtitle2,
                                                                              ),
                                                                            )
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding:
                                                                            const EdgeInsets.only(top: 1),
                                                                        child:
                                                                            Row(
                                                                          children: [
                                                                            Padding(
                                                                              padding: const EdgeInsets.only(left: 5),
                                                                              child: Row(
                                                                                children: [
                                                                                  Text(
                                                                                    'Start: ',
                                                                                    style: Theme.of(context).primaryTextTheme.subtitle2,
                                                                                  ),
                                                                                  Text(
                                                                                    '14 Feb 2021 9:00 pm',
                                                                                    style: Theme.of(context).primaryTextTheme.subtitle2,
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            )
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding:
                                                                            const EdgeInsets.only(top: 1),
                                                                        child:
                                                                            Row(
                                                                          children: [
                                                                            Padding(
                                                                              padding: const EdgeInsets.only(left: 5),
                                                                              child: Row(
                                                                                children: [
                                                                                  Text(
                                                                                    'Start: ',
                                                                                    style: Theme.of(context).primaryTextTheme.subtitle2,
                                                                                  ),
                                                                                  Text(
                                                                                    '14 Feb 2021 9:00 pm',
                                                                                    style: Theme.of(context).primaryTextTheme.subtitle2,
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            )
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Container(
                                                                  height: 110,
                                                                  // color:
                                                                  //     Colors.yellow,
                                                                  padding:
                                                                      EdgeInsets
                                                                          .only(),
                                                                  child: Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Row(
                                                                        children: [
                                                                          Padding(
                                                                            padding:
                                                                                const EdgeInsets.only(right: 1),
                                                                            child:
                                                                                Text(
                                                                              'Order Id: W62842',
                                                                              style: TextStyle(
                                                                                fontSize: 10.5,
                                                                                color: Color(0xFFF0900C),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Container(
                                                                          padding: EdgeInsets.only(
                                                                              left:
                                                                                  20),
                                                                          child:
                                                                              Text('Rs.700')),
                                                                    ],
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                            left: 10,
                                                            right: 10),
                                                        child: Divider(
                                                          height: 10,
                                                          color: Colors.grey,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Container(
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left: 15),
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(6),
                                                              width: 125,
                                                              height: 36,
                                                              child: Center(
                                                                child:
                                                                    Container(
                                                                  child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .cancel,
                                                                        color: Colors
                                                                            .grey,
                                                                        size:
                                                                            15,
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsets.only(
                                                                            top:
                                                                                3,
                                                                            left:
                                                                                2),
                                                                        child:
                                                                            Text(
                                                                          'Cancle',
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              child: Text('|'),
                                                            ),
                                                            Container(
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      right:
                                                                          15),
                                                              //  padding: EdgeInsets.all(6),
                                                              width: 125,
                                                              height: 36,
                                                              child: Center(
                                                                child:
                                                                    Container(
                                                                  child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .alarm,
                                                                        color: Theme.of(context)
                                                                            .primaryColor,
                                                                        size:
                                                                            15,
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsets.only(
                                                                            top:
                                                                                3.0,
                                                                            left:
                                                                                2),
                                                                        child:
                                                                            Text(
                                                                          'Add Riminder',
                                                                          style:
                                                                              TextStyle(color: Theme.of(context).primaryColor),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            );
                                          })),

                                  // second tab bar view widget
                                  Container(
                                      child: ListView.builder(
                                          itemCount: 2,
                                          itemBuilder:
                                              (BuildContext ctx, int index) {
                                            return Padding(
                                              padding: EdgeInsets.only(),
                                              child: Card(
                                                elevation: 3,
                                                child: Container(
                                                  height: 175,
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  child: Column(
                                                    children: [
                                                      GestureDetector(
                                                        onTap: () {
                                                          Navigator.of(context).push(
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          OrderDetailScreen(
                                                                            a: widget.analytics,
                                                                            o: widget.observer,
                                                                          )));
                                                        },
                                                        child: Container(
                                                          //color: Colors.green,
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    top: 10,
                                                                    left: 10),
                                                            child: Row(
                                                              children: [
                                                                Container(
                                                                  child: Column(
                                                                    children: [
                                                                      CircleAvatar(
                                                                        radius:
                                                                            38,
                                                                        backgroundImage:
                                                                            AssetImage('assets/catimage2.png'),
                                                                      ),
                                                                      Container(
                                                                        margin: EdgeInsets.only(
                                                                            top:
                                                                                10),
                                                                        child:
                                                                            Text(
                                                                          'Sara Seth',
                                                                          style: Theme.of(context)
                                                                              .primaryTextTheme
                                                                              .headline6,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      left: 5),
                                                                  child: Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        'Pet Boarding',
                                                                        style: Theme.of(context)
                                                                            .primaryTextTheme
                                                                            .headline1,
                                                                      ),
                                                                      Padding(
                                                                        padding:
                                                                            const EdgeInsets.only(top: 1),
                                                                        child:
                                                                            Row(
                                                                          children: [
                                                                            Padding(
                                                                              padding: const EdgeInsets.only(left: 5),
                                                                              child: Text(
                                                                                'Fluffy, Cookie',
                                                                                style: Theme.of(context).primaryTextTheme.subtitle2,
                                                                              ),
                                                                            )
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding:
                                                                            const EdgeInsets.only(top: 1),
                                                                        child:
                                                                            Row(
                                                                          children: [
                                                                            Padding(
                                                                              padding: const EdgeInsets.only(left: 5),
                                                                              child: Text(
                                                                                '2 daily meals',
                                                                                style: Theme.of(context).primaryTextTheme.subtitle2,
                                                                              ),
                                                                            )
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding:
                                                                            const EdgeInsets.only(top: 1),
                                                                        child:
                                                                            Row(
                                                                          children: [
                                                                            Padding(
                                                                              padding: const EdgeInsets.only(left: 5),
                                                                              child: Row(
                                                                                children: [
                                                                                  Text(
                                                                                    'Start: ',
                                                                                    style: Theme.of(context).primaryTextTheme.subtitle2,
                                                                                  ),
                                                                                  Text(
                                                                                    '14 Feb 2021 9:00 pm',
                                                                                    style: Theme.of(context).primaryTextTheme.subtitle2,
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            )
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding:
                                                                            const EdgeInsets.only(top: 1),
                                                                        child:
                                                                            Row(
                                                                          children: [
                                                                            Padding(
                                                                              padding: const EdgeInsets.only(left: 5),
                                                                              child: Row(
                                                                                children: [
                                                                                  Text(
                                                                                    'Start: ',
                                                                                    style: Theme.of(context).primaryTextTheme.subtitle2,
                                                                                  ),
                                                                                  Text(
                                                                                    '14 Feb 2021 9:00 pm',
                                                                                    style: Theme.of(context).primaryTextTheme.subtitle2,
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            )
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Container(
                                                                  height: 110,
                                                                  // color:
                                                                  //     Colors.yellow,
                                                                  padding:
                                                                      EdgeInsets
                                                                          .only(),
                                                                  child: Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Row(
                                                                        children: [
                                                                          Padding(
                                                                            padding:
                                                                                const EdgeInsets.only(right: 1),
                                                                            child:
                                                                                Text(
                                                                              'Order Id: W62842',
                                                                              style: TextStyle(
                                                                                fontSize: 10.5,
                                                                                color: Color(0xFFF0900C),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Container(
                                                                          padding: EdgeInsets.only(
                                                                              left:
                                                                                  20),
                                                                          child:
                                                                              Text('Rs.700')),
                                                                    ],
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                            left: 10,
                                                            right: 10),
                                                        child: Divider(
                                                          height: 10,
                                                          color: Colors.grey,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Container(
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left: 15),
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(6),
                                                              width: 125,
                                                              height: 36,
                                                              child: Center(
                                                                child:
                                                                    Container(
                                                                  child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .cancel,
                                                                        color: Colors
                                                                            .grey,
                                                                        size:
                                                                            15,
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsets.only(
                                                                            top:
                                                                                3,
                                                                            left:
                                                                                2),
                                                                        child:
                                                                            Text(
                                                                          'Cancle',
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              child: Text('|'),
                                                            ),
                                                            Container(
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      right:
                                                                          15),
                                                              //  padding: EdgeInsets.all(6),
                                                              width: 125,
                                                              height: 36,
                                                              child: Center(
                                                                child:
                                                                    Container(
                                                                  child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .alarm,
                                                                        color: Theme.of(context)
                                                                            .primaryColor,
                                                                        size:
                                                                            15,
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsets.only(
                                                                            top:
                                                                                3,
                                                                            left:
                                                                                2),
                                                                        child:
                                                                            Text(
                                                                          'Add Riminder',
                                                                          style:
                                                                              TextStyle(color: Theme.of(context).primaryColor),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            );
                                          })),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
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
