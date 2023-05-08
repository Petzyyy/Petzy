import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:pet_user_app/models/businessLayer/baseRoute.dart';
import 'package:pet_user_app/screens/checkoutScreen.dart';

class CartScreen extends BaseRoute {
  // CartScreen() : super();
  CartScreen({a, o}) : super(a: a, o: o, r: 'CartScreen');
  @override
  _CartScreenState createState() => new _CartScreenState();
}

class _CartScreenState extends BaseRouteState {
  _CartScreenState() : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Navigator.of(context).pop();
          },
          child: Icon(Icons.arrow_back_ios)),
        title: Text(
          'Cart',
          style: Theme.of(context).primaryTextTheme.headline1,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: GestureDetector(
              onTap: () {
               
              },
              child: Icon(
                Icons.shopping_cart_outlined,
                color: Color(0xFF34385A),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 15,right: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 45,
                // color: Colors.red,
                child: ListView.builder(
                    itemCount: 2,
                    itemBuilder: (BuildContext context, int index) {
                      return  index == 0 ? Padding(
                        padding: const EdgeInsets.only(),
                        child: Container(
                          margin: EdgeInsets.only(top: 5),
                          width: MediaQuery.of(context).size.width,
                          height: 120,
                          child: Card(
                            elevation: 2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, left: 10),
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 35,
                                        backgroundImage:
                                            AssetImage('assets/catimage4.png'),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 10),
                                        child: Text('Sara Seth'),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10, left: 10),
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
                                      MediaQuery.of(context).size.width - 280,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Icon(
                                        Icons.cancel,
                                        color: Color(0xFF8F8F8F),
                                      ),
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
                      ) :  Padding(
                        padding: const EdgeInsets.only(),
                        child: Container(
                          margin: EdgeInsets.only(top: 5),
                          width: MediaQuery.of(context).size.width,
                          height: 100,
                          child: Card(
                            elevation: 2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 15, left: 10),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.transparent,
                                    radius: 35,
                                    backgroundImage:
                                        AssetImage('assets/prod1.png'),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10, left: 08),
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
                                                      padding: const EdgeInsets.only(left: 5),
                                                      child: Icon(FontAwesomeIcons.caretUp ,color: Color(0xFF8F8F8F),size: 15,),
                                                    ),
                                                      Padding(
                                                      padding: const EdgeInsets.only(left: 5),
                                                      child: Icon(FontAwesomeIcons.caretDown ,color: Color(0xFF8F8F8F),size: 15,),
                                                    )
                                        ],
                                      ),
                                   
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 3),
                                    // color: Colors.yellow,
                                  width:
                                      MediaQuery.of(context).size.width - 300,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Icon(
                                        Icons.cancel,
                                        color: Color(0xFF8F8F8F),
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
                      )  ;
                    }),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 90,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    'Total Amount',
                    style: Theme.of(context).primaryTextTheme.headline1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Text(
                    'Rs.12800',
                    style: Theme.of(context).primaryTextTheme.headline1,
                  ),
                )
              ],
            ),
            Container(
                // color: Colors.red,
                height: 45,
                padding: EdgeInsets.only(left: 15, right: 15),
                width: MediaQuery.of(context).size.width,
                child: TextButton(
                    // style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor)),
                    onPressed: () {
                      print('Hello');
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ChekoutScreen(
                                a: widget.analytics,
                                o: widget.observer,
                              )));
                    },
                    child: Text(
                      "Place Order",
                    ))),
          ],
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
