import 'package:flutter/material.dart';
import 'package:pet_user_app/models/businessLayer/baseRoute.dart';
import 'package:pet_user_app/screens/chatScreen.dart';
class OrderDetailScreen extends BaseRoute {
  // OrderDetailScreen() : super();
  OrderDetailScreen({a, o}) : super(a: a, o: o, r: 'OrderDetailScreen');
  @override
  _OrderDetailScreenState createState() => new _OrderDetailScreenState();
}

class _OrderDetailScreenState extends BaseRouteState {
  _OrderDetailScreenState() : super();

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
          'Orders',
          style: Theme.of(context).primaryTextTheme.headline1,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Container(
                  child: Row(
                    children: [
                      Text(
                        'Fluffy and Cookie are with',
                        style: Theme.of(context).primaryTextTheme.headline1,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Sara Seth',
                        style: Theme.of(context).primaryTextTheme.headline1,
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 15),
                    child: Container(
                      child: Column(
                        children: [
                          Card(
                            elevation: 0,
                            child: Container(
                              width: 160,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Stack(children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/home3.png'),
                                                  fit: BoxFit.cover),
                                              color: Colors.red,
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(10),
                                              )),
                                          height: 140,
                                          width: 160,
                                        ),
                                        Positioned(
                                            right: 0,
                                            bottom: 0,
                                            child: Container(
                                              child: Icon(Icons.download),
                                            ))
                                      ]),
                                    ],
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 5),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text('Fluffy enjoying a treat'),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text('11 feb 7:00 PM'),
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 15),
                    child: Container(
                      child: Column(
                        children: [
                          Card(
                            elevation: 0,
                            child: Container(
                              width: 160,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Stack(children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/home3.png'),
                                                  fit: BoxFit.cover),
                                              color: Colors.red,
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(10),
                                              )),
                                          height: 140,
                                          width: 160,
                                        ),
                                        Positioned(
                                            right: 0,
                                            bottom: 0,
                                            child: Container(
                                              child: Icon(Icons.download),
                                            ))
                                      ]),
                                    ],
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 5),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text('Fluffy enjoying a treat'),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text('11 feb 7:00 PM'),
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Container(
          height: 100,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                  // color: Colors.red,
                  height: 45,
                  padding: EdgeInsets.only(left: 15, right: 15),
                  width: MediaQuery.of(context).size.width,
                  child: TextButton(
                      onPressed: () {
                        print('Hello');
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ChatScreen(
                                  a: widget.analytics,
                                  o: widget.observer,
                                )));
                      },
                      child: Text(
                        "Message",
                      ))),
              SizedBox(
                height: 10,
              ),
              Container(
                  // color: Colors.red,
                  height: 45,
                  padding: EdgeInsets.only(left: 15, right: 15),
                  width: MediaQuery.of(context).size.width,
                  child: TextButton(
                      onPressed: () {
                        print('Hello');
                        // Navigator.of(context).po(MaterialPageRoute(
                        //     builder: (context) => ReviewBookingScreen(
                        //           a: widget.analytics,
                        //           o: widget.observer,
                        //         )));
                      },
                      child: Text(
                        "Call",
                      ))),
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
