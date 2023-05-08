import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pet_user_app/models/businessLayer/baseRoute.dart';
import 'package:table_calendar/table_calendar.dart';

class VeterinaryReviewBookingScreen extends BaseRoute {
  // ReviewBookingScreen() : super();
  VeterinaryReviewBookingScreen({a, o})
      : super(a: a, o: o, r: 'VeterinaryReviewBookingScreen');
  @override
  _VeterinaryReviewBookingScreenState createState() =>
      new _VeterinaryReviewBookingScreenState();
}

class _VeterinaryReviewBookingScreenState extends BaseRouteState {
  bool _isChecked = false;
  bool _isChecked1 = false;
  _VeterinaryReviewBookingScreenState() : super();
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
                        radius: 60,
                        backgroundImage: AssetImage('assets/catimage4.png')),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Dr.Arti Agrawal',
                          style: Theme.of(context).primaryTextTheme.headline5,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 0),
                          width: 160,
                          height: 30,
                          child: Row(
                            children: [
                              Text(
                                'Santacruz Veterinary Clinic',
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .bodyText2,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 1, bottom: 4, right: 0),
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
            //Appointament Type
            GestureDetector(
              onTap: () {},
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
                                    'Appointment Type',
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
                                  Text('Clinic Visit'),
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
            //Appointament Date

            GestureDetector(
              onTap: () {
                _selectAppointmentDate(context);
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
                                    'Appointment date',
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
                                  Text('14 Feb 2021'),
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
            //Appointament Time

            GestureDetector(
              onTap: () {
                _selectTimeSlot(context);
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
                                        'Appointment Time',
                                        style: Theme.of(context)
                                            .primaryTextTheme
                                            .bodyText1,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(),
                              child: Row(
                                children: [
                                  Text(
                                    'Select Slot',
                                  ),
                                  Icon(Icons.arrow_forward_ios_outlined,
                                      size: 18, color: Color(0xFF8F8F8F)),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 15),
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
              decoration: BoxDecoration(
                  // color: Colors.cyan,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
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
                                        padding:
                                            const EdgeInsets.only(right: 0),
                                        child: CircleAvatar(
                                            radius: 40,
                                            // backgroundColor: Colors.red,
                                            backgroundImage: AssetImage(
                                                'assets/dogimage2.png')),
                                      ),
                                    ),
                                    title: Row(
                                      children: [
                                        Text('Fluffy',
                                            style: Theme.of(context)
                                                .primaryTextTheme
                                                .bodyText1),
                                        Icon(Icons.male,
                                            color: Color(0xff8f8f8f))
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
                                                  color: Theme.of(context)
                                                      .primaryColor),
                                              shape: BoxShape.circle,
                                              color: _isChecked
                                                  ? Theme.of(context)
                                                      .primaryColor
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
                                ),
                                Container(
                                  margin: EdgeInsets.all(5),
                                  child: ListTile(
                                    contentPadding: EdgeInsets.all(2),
                                    horizontalTitleGap: 1,
                                    leading: Container(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 0),
                                        child: CircleAvatar(
                                            radius: 40,
                                            // backgroundColor: Colors.red,
                                            backgroundImage: AssetImage(
                                                'assets/catimage2.png')),
                                      ),
                                    ),
                                    title: Row(
                                      children: [
                                        Text('Cookies',
                                            style: Theme.of(context)
                                                .primaryTextTheme
                                                .bodyText1),
                                        Icon(Icons.male,
                                            color: Color(0xff8f8f8f))
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
                                                  color: Theme.of(context)
                                                      .primaryColor),
                                              shape: BoxShape.circle,
                                              color: _isChecked1
                                                  ? Theme.of(context)
                                                      .primaryColor
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
                          )
                        ],
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
                            //     builder: (context) => VeterinaryReviewBookingScreen(

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

  void _selectAppointmentDate(context) {
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

  void _selectTimeSlot(context) {
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
                  child: Text(
                    'Select Slot',
                    style: Theme.of(context).primaryTextTheme.headline5,
                  ),
                ),
                Container(
                  child: Divider(
                    thickness: 1,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  height: 200,
                  child: DefaultTabController(
                    length: 3,
                    child: Scaffold(
                      appBar: AppBar(
                        backgroundColor: Colors.white,
                        toolbarHeight: 0,
                        backwardsCompatibility: false,
                        bottom: TabBar(
                          tabs: [
                            Tab(
                              text: 'Morning',
                            ),
                            Tab(
                              text: 'Noon',
                            ),
                            Tab(text: 'Evening'),
                          ],
                        ),
                      ),
                      body: TabBarView(
                        children: [
                          Container(
                            child: Wrap(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(10),
                                  child: Chip(
                                    backgroundColor:
                                        Theme.of(context).primaryColor,
                                    labelPadding: EdgeInsets.all(2.0),
                                    label: Container(
                                      margin: EdgeInsets.all(5),
                                      child: Text(
                                        '9:00 AM',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    padding: EdgeInsets.all(8.0),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(10),
                                  child: Chip(
                                    backgroundColor: Color(0xfff8f8f8),
                                    labelPadding: EdgeInsets.all(2.0),
                                    label: Container(
                                      margin: EdgeInsets.all(5),
                                      child: Text(
                                        '09:30 AM',
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                    padding: EdgeInsets.all(8.0),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(10),
                                  child: Chip(
                                    backgroundColor: Color(0xfff8f8f8),
                                    labelPadding: EdgeInsets.all(2.0),
                                    label: Container(
                                      margin: EdgeInsets.all(5),
                                      child: Text(
                                        '10:00 AM',
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                    padding: EdgeInsets.all(8.0),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(10),
                                  child: Chip(
                                    backgroundColor: Color(0xfff8f8f8),
                                    labelPadding: EdgeInsets.all(2.0),
                                    label: Container(
                                      margin: EdgeInsets.all(5),
                                      child: Text(
                                        '10:30 AM',
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                    padding: EdgeInsets.all(8.0),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Wrap(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(10),
                                  child: Chip(
                                    backgroundColor:
                                        Theme.of(context).primaryColor,
                                    labelPadding: EdgeInsets.all(2.0),
                                    label: Container(
                                      margin: EdgeInsets.all(5),
                                      child: Text(
                                        '9:00 AM',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    padding: EdgeInsets.all(8.0),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(10),
                                  child: Chip(
                                    backgroundColor: Color(0xfff8f8f8),
                                    labelPadding: EdgeInsets.all(2.0),
                                    label: Container(
                                      margin: EdgeInsets.all(5),
                                      child: Text(
                                        '09:30 AM',
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                    padding: EdgeInsets.all(8.0),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(10),
                                  child: Chip(
                                    backgroundColor: Color(0xfff8f8f8),
                                    labelPadding: EdgeInsets.all(2.0),
                                    label: Container(
                                      margin: EdgeInsets.all(5),
                                      child: Text(
                                        '10:00 AM',
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                    padding: EdgeInsets.all(8.0),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(10),
                                  child: Chip(
                                    backgroundColor: Color(0xfff8f8f8),
                                    labelPadding: EdgeInsets.all(2.0),
                                    label: Container(
                                      margin: EdgeInsets.all(5),
                                      child: Text(
                                        '10:30 AM',
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                    padding: EdgeInsets.all(8.0),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container()
                        ],
                      ),
                    ),
                  ),
                )
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
           //     overflow: Overflow.visible,
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
