import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pet_user_app/models/businessLayer/baseRoute.dart';
import 'package:table_calendar/table_calendar.dart';

class ReviewBookingScreen extends BaseRoute {
  // ReviewBookingScreen() : super();
  ReviewBookingScreen({a, o}) : super(a: a, o: o, r: 'ReviewBookingScreen');
  @override
  _ReviewBookingScreenState createState() => new _ReviewBookingScreenState();
}

class _ReviewBookingScreenState extends BaseRouteState {
  bool _isChecked = false;
  bool _isChecked1 = false;
  _ReviewBookingScreenState() : super();
  bool confirm = false;
  double ratingVal = 0.0;
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
          'Review Booking',
          style: Theme.of(context).primaryTextTheme.headline1,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(
              Icons.shopping_cart_outlined,
              color: Color(0xFF34385A),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 0, left: 10),
              // color: Colors.red,
              height: 160,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 28),
                    child: CircleAvatar(
                        radius: 70,
                        backgroundImage: AssetImage('assets/catimage2.png')),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Sara Seth',
                          style: Theme.of(context).primaryTextTheme.headline5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 5, bottom: 4, right: 10),
                          child: RatingBar.builder(
                            initialRating: ratingVal,
                            minRating: 0,
                            // direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 20,
                            itemPadding: EdgeInsets.symmetric(horizontal: 0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            ignoreGestures: true,
                            updateOnDrag: false,
                            onRatingUpdate: (val) {},
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          width: 100,
                          height: 30,
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                size: 15,
                                color: Color(0xff8f8f8f),
                              ),
                              Text(
                                '2 Km away',
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),

              // padding: const EdgeInsets.
            ),
            Divider(
              height: 10,
              thickness: 1,
            ),
            Container(

                // color: Colors.red,
                margin: EdgeInsets.only(bottom: 10, top: 5),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        _selectBookingFor(context);
                      },
                      child: Container(
                        margin: EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Text(
                                    'Booking for',
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .bodyText1,
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(),
                              child: Row(
                                children: [
                                  Text('Select Pet'),
                                  Icon(Icons.arrow_forward_ios_outlined,
                                      size: 18, color: Color(0xFF8F8F8F)),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        left: 15,
                      ),
                      child: Divider(
                        height: 10,
                        thickness: 1,
                      ),
                    )
                  ],
                )),
            GestureDetector(
              onTap: () {
                _selectdropoffdate(context);
              },
              child: Container(

                  // color: Colors.red,
                  margin: EdgeInsets.only(bottom: 10, top: 5),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Text(
                                    'Drop off',
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .bodyText1,
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(),
                              child: Row(
                                children: [
                                  Text('11 Feb 2021 9:00 PM'),
                                  Icon(Icons.arrow_forward_ios_outlined,
                                      size: 18, color: Color(0xFF8F8F8F)),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          left: 15,
                        ),
                        child: Divider(
                          height: 10,
                          thickness: 1,
                        ),
                      )
                    ],
                  )),
            ),
            GestureDetector(
              onTap: () {
                _selectpickupdate(context);
              },
              child: Container(

                  // color: Colors.red,
                  margin: EdgeInsets.only(bottom: 10, top: 5),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Text(
                                    'Pick up',
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .bodyText1,
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(),
                              child: Row(
                                children: [
                                  Text('14 Feb 2021 12:00 PM'),
                                  Icon(Icons.arrow_forward_ios_outlined,
                                      size: 18, color: Color(0xFF8F8F8F)),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          left: 15,
                        ),
                        child: Divider(
                          height: 10,
                          thickness: 1,
                        ),
                      )
                    ],
                  )),
            ),
            GestureDetector(
              onTap: () {
                _selectNumberOfMeals(context);
              },
              child: Container(

                  // color: Colors.red,
                  margin: EdgeInsets.only(bottom: 10, top: 5),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Meals per days',
                                        style: Theme.of(context)
                                            .primaryTextTheme
                                            .bodyText1,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('50/meals')
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(),
                              child: Row(
                                children: [
                                  Text('Select Number'),
                                  Icon(Icons.arrow_forward_ios_outlined,
                                      size: 18, color: Color(0xFF8F8F8F)),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Divider(
                          height: 10,
                          thickness: 1,
                        ),
                      )
                    ],
                  )),
            ),

            // price detail box

            confirm
                ? Container(
                    margin: EdgeInsets.only(bottom: 10, top: 15),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text(
                                      'Price Details',
                                      style: Theme.of(context)
                                          .primaryTextTheme
                                          .headline1,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 15),
                                        child: Container(
                                          width: 60,
                                          child: Text(
                                            'Fluffy',
                                            style: Theme.of(context)
                                                .primaryTextTheme
                                                .bodyText1,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 15),
                                        child: Text(
                                          '4 days',
                                          style: Theme.of(context)
                                              .primaryTextTheme
                                              .subtitle2,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          'Base Price',
                                          style: Theme.of(context)
                                              .primaryTextTheme
                                              .subtitle2,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Rs2800',
                                          style: Theme.of(context)
                                              .primaryTextTheme
                                              .bodyText1,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 15),
                                        child: Container(
                                          width: 60,
                                          child: Text(
                                            'Cookies',
                                            style: Theme.of(context)
                                                .primaryTextTheme
                                                .bodyText1,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 15),
                                        child: Text(
                                          '4 days',
                                          style: Theme.of(context)
                                              .primaryTextTheme
                                              .subtitle2,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          'Base Price',
                                          style: Theme.of(context)
                                              .primaryTextTheme
                                              .subtitle2,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Rs2800',
                                          style: Theme.of(context)
                                              .primaryTextTheme
                                              .bodyText1,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 15, right: 10),
                                child: Divider(
                                  thickness: 1,
                                ),
                              ),
                              Container(
                                  width: MediaQuery.of(context).size.width,
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.all(5),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 15),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        width: 60,
                                                        child: Text(
                                                          'Meals',
                                                          style: Theme.of(
                                                                  context)
                                                              .primaryTextTheme
                                                              .bodyText1,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      Text(
                                                        '16 meals',
                                                        style: Theme.of(context)
                                                            .primaryTextTheme
                                                            .subtitle2,
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 10),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    'Rs800',
                                                    style: Theme.of(context)
                                                        .primaryTextTheme
                                                        .bodyText1,
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  )),
                              Container(
                                padding: EdgeInsets.only(left: 15, right: 10),
                                child: Divider(
                                  thickness: 1,
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(
                                    bottom: 10,
                                  ),
                                  width: MediaQuery.of(context).size.width,
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 5),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 15),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        'Total',
                                                        style: Theme.of(context)
                                                            .primaryTextTheme
                                                            .headline1,
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 10),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    'Rs6400',
                                                    style: Theme.of(context)
                                                        .primaryTextTheme
                                                        .headline1,
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ))
                : SizedBox()
          ],
        ),
      )),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Container(
            // color: Colors.red,
            height: 45,
            padding: EdgeInsets.only(left: 15, right: 15),
            width: MediaQuery.of(context).size.width,
            child: TextButton(
                onPressed: () {
                  addToCartDialogBox(context);
                },
                child: Text(
                  "Add to Cart",
                ))),
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

  void _selectBookingFor(context) {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext ctx) {
          return StatefulBuilder(builder: (context, setState) {
            return Container(
              height: 315,
              child: Scaffold(
                body: Wrap(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          //  color: Colors.cyan,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30))),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Booking For',
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .headline1,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Divider(
                              thickness: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(5),
                            child: ListTile(
                              contentPadding: EdgeInsets.all(2),
                              horizontalTitleGap: 1,
                              leading: Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 0),
                                  child: CircleAvatar(
                                      radius: 40,
                                      // backgroundColor: Colors.red,
                                      backgroundImage:
                                          AssetImage('assets/dogimage2.png')),
                                ),
                              ),
                              title: Row(
                                children: [
                                  Text('Fluffy',
                                      style: Theme.of(context)
                                          .primaryTextTheme
                                          .bodyText1),
                                  Icon(Icons.male, color: Color(0xff8f8f8f))
                                ],
                              ),
                              subtitle: Text('2 year 1 Month'),
                              trailing: Container(
                                margin: EdgeInsets.all(10),
                                child: GestureDetector(
                                  onTap: () {
                                    _isChecked = !_isChecked;
                                    setState(() {});
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1,
                                            color:
                                                Theme.of(context).primaryColor),
                                        shape: BoxShape.circle,
                                        color: _isChecked
                                            ? Theme.of(context).primaryColor
                                            : Colors.transparent),
                                    height: 18,
                                    width: 17,
                                    child: Center(
                                      child: Icon(
                                        Icons.check,
                                        color: _isChecked
                                            ? Colors.white
                                            : Colors.transparent,
                                        size: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      child: ListTile(
                        contentPadding: EdgeInsets.all(2),
                        horizontalTitleGap: 1,
                        leading: Container(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 0),
                            child: CircleAvatar(
                                radius: 40,
                                // backgroundColor: Colors.red,
                                backgroundImage:
                                    AssetImage('assets/catimage2.png')),
                          ),
                        ),
                        title: Row(
                          children: [
                            Text('Cookies',
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .bodyText1),
                            Icon(Icons.male, color: Color(0xff8f8f8f))
                          ],
                        ),
                        subtitle: Text('2 year 1 Month'),
                        trailing: Container(
                          margin: EdgeInsets.all(10),
                          child: GestureDetector(
                            onTap: () {
                              _isChecked1 = !_isChecked1;
                              setState(() {});
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1,
                                      color: Theme.of(context).primaryColor),
                                  shape: BoxShape.circle,
                                  color: _isChecked1
                                      ? Theme.of(context).primaryColor
                                      : Colors.transparent),
                              height: 18,
                              width: 17,
                              child: Center(
                                child: Icon(
                                  Icons.check,
                                  color: _isChecked1
                                      ? Colors.white
                                      : Colors.transparent,
                                  size: 12,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                bottomNavigationBar: BottomAppBar(
                  elevation: 0,
                  child: Container(
                      // color: Colors.red,
                      height: 45,
                      padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                      width: MediaQuery.of(context).size.width,
                      child: TextButton(
                          onPressed: () {
                            print('Hello');
                            // Navigator.of(context).push(MaterialPageRoute(
                            //     builder: (context) => ReviewBookingScreen(

                            //         )));
                          },
                          child: Text(
                            "Confirm",
                          ))),
                ),
              ),
            );
          });
        });
  }

  void _selectNumberOfMeals(context) {
    showModalBottomSheet(
        backgroundColor: Colors.red,
        context: context,
        builder: (BuildContext ctx) {
          return StatefulBuilder(builder: (context, setState) {
            return Container(
              decoration: BoxDecoration(
                  // color: Colors.cyan,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              height: 180,
              child: Scaffold(
                body: Wrap(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Select Number',
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .headline1,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Divider(
                              thickness: 1,
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [Container()],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Wrap(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Card(
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0)),
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Text('1'),
                                  radius: 30,
                                ),
                              ),
                              Card(
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0)),
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Text('2'),
                                  radius: 30,
                                ),
                              ),
                              Card(
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0)),
                                child: CircleAvatar(
                                  backgroundColor:
                                      Theme.of(context).primaryColor,
                                  child: Text('3',
                                      style: Theme.of(context)
                                          .primaryTextTheme
                                          .button),
                                  radius: 30,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                bottomNavigationBar: BottomAppBar(
                  elevation: 0,
                  child: Container(
                      // color: Colors.red,
                      height: 45,
                      padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                      width: MediaQuery.of(context).size.width,
                      child: TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ReviewBookingScreen()));
                            setState(() {
                              confirm = true;
                            });
                          },
                          child: Text(
                            "Confirm",
                          ))),
                ),
              ),
            );
          });
        });
  }

  void _selectdropoffdate(context) {
    showModalBottomSheet(
      context: context,
      //  isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
          height: MediaQuery.of(context).size.height * 0.75,
          decoration: new BoxDecoration(
            color: Colors.white,
            borderRadius: new BorderRadius.only(
              topLeft: const Radius.circular(25.0),
              topRight: const Radius.circular(25.0),
            ),
          ),
          child: Container(
            child: Column(
              children: [
                Container(
                    child: TableCalendar(
                  firstDay: DateTime.utc(2020, 10, 1),
                  lastDay: DateTime.utc(2030, 3, 1),
                  focusedDay: DateTime.now(),
                ))
              ],
            ),
          )),
    );
  }

  void _selectpickupdate(context) {
    showModalBottomSheet(
      context: context,
      //  isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
          height: MediaQuery.of(context).size.height * 0.75,
          decoration: new BoxDecoration(
            color: Colors.white,
            borderRadius: new BorderRadius.only(
              topLeft: const Radius.circular(25.0),
              topRight: const Radius.circular(25.0),
            ),
          ),
          child: Container(
            child: Column(
              children: [
                Container(
                    child: TableCalendar(
                  firstDay: DateTime.utc(2020, 10, 1),
                  lastDay: DateTime.utc(2030, 3, 1),
                  focusedDay: DateTime.now(),
                ))
              ],
            ),
          )),
    );
  }

  addToCartDialogBox(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0))),
              content: Stack(
      //          overflow: Overflow.visible,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Center(
                                  child: Text(
                                "Added to Cart",
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .headline1,
                              )),
                              Center(
                                  child: Text(
                                "Thank you for choosing whiskers",
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .bodyText1,
                              )),
                              Container(
                                height: 150,
                                width: 200,
                                child:
                                    Image.asset('assets/alertdialogimage.png'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: -70.0,
                    left: 110,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.white),
                            shape: BoxShape.circle,
                            color: Colors.transparent),
                        height: 28,
                        width: 25,
                        child: Center(
                          child: FaIcon(
                            FontAwesomeIcons.times,
                            color: Colors.white,
                            size: 12,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ));
        });
  }
}
