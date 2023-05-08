import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pet_user_app/models/businessLayer/baseRoute.dart';

class DogWalkingBookingProccessFilterScreen extends BaseRoute {
  DogWalkingBookingProccessFilterScreen({a, o})
      : super(a: a, o: o, r: 'DogWalkingBookingProccessFilterScreen');
  @override
  _DogWalkingBookingProccessFilterScreenState createState() =>
      new _DogWalkingBookingProccessFilterScreenState();
}

class _DogWalkingBookingProccessFilterScreenState extends BaseRouteState {
  double sliderVal = 0;
  double ratingVal = 0.0;
  int noOfPets = 2;
  bool dogSelected = false;

  bool catSelectd = false;
  // bool mealSelectd = false;
  // bool groomingSelected = false;
  // bool careSelected = false;
  // bool outdoorSelected = false;
  int startRangeVal = 50;
  int endRangeVal = 150;
  int sliderValInint;
  RangeValues sliderVal5 = const RangeValues(0, 10);

  _DogWalkingBookingProccessFilterScreenState() : super();

  @override
  Widget build(BuildContext context) {
    // final Map<int, Widget> _widgetsOfDogAndCat = <int, Widget>{
    //   0: Padding(
    //     padding: const EdgeInsets.only(right: 5),
    //     child: Column(
    //       children: [
    //         Card(
    //           elevation: 3,
    //           shape: RoundedRectangleBorder(
    //               borderRadius: BorderRadius.circular(50.0)),
    //           child: CircleAvatar(
    //             backgroundColor:
    //                 dogSelected ? Theme.of(context).primaryColor : Colors.white,
    //             child: Icon(FontAwesomeIcons.dog,
    //                 color: dogSelected ? Colors.white : Color(0xFF8F8F8F)),
    //             radius: 20,
    //           ),
    //         ),
    //         Padding(
    //           padding: EdgeInsets.only(top: 0),
    //           child: Text(
    //             'Dog',
    //             style: Theme.of(context).primaryTextTheme.subtitle2,
    //           ),
    //         )
    //       ],
    //     ),
    //   ),
    //   1: Padding(
    //     padding: const EdgeInsets.only(left: 0),
    //     child: Column(
    //       children: [
    //         Card(
    //           elevation: 3,
    //           shape: RoundedRectangleBorder(
    //               borderRadius: BorderRadius.circular(50.0)),
    //           child: CircleAvatar(
    //             backgroundColor:
    //                 catSelectd ? Theme.of(context).primaryColor : Colors.white,
    //             child: Icon(FontAwesomeIcons.cat,
    //                 color: catSelectd ? Colors.white : Color(0xFF8F8F8F)),
    //             radius: 20,
    //           ),
    //         ),
    //         Padding(
    //           padding: EdgeInsets.only(top: 0),
    //           child: Text(
    //             'Cat',
    //             style: Theme.of(context).primaryTextTheme.subtitle2,
    //           ),
    //         )
    //       ],
    //     ),
    //   ),
    // };

    // final Map<int, Widget> _widgetsFaciltites = <int, Widget>{
    //   0: Padding(
    //     padding: const EdgeInsets.only(right: 5),
    //     child: Column(
    //       children: [
    //         Card(
    //           elevation: 3,
    //           shape: RoundedRectangleBorder(
    //               borderRadius: BorderRadius.circular(50.0)),
    //           child: CircleAvatar(
    //             backgroundColor:
    //                 mealSelectd ? Theme.of(context).primaryColor : Colors.white,
    //             child: Icon(FontAwesomeIcons.dog,
    //                 color: dogSelected ? Colors.white : Color(0xFF8F8F8F)),
    //             radius: 25,
    //           ),
    //         ),
    //         Padding(
    //           padding: EdgeInsets.only(top: 0),
    //           child: Text(
    //             'Meals',
    //             style: Theme.of(context).primaryTextTheme.subtitle2,
    //           ),
    //         )
    //       ],
    //     ),
    //   ),
    //   1: Padding(
    //     padding: const EdgeInsets.only(left: 0),
    //     child: Column(
    //       children: [
    //         Card(
    //           elevation: 3,
    //           shape: RoundedRectangleBorder(
    //               borderRadius: BorderRadius.circular(50.0)),
    //           child: CircleAvatar(
    //             backgroundColor:
    //                 catSelectd ? Theme.of(context).primaryColor : Colors.white,
    //             child: Icon(FontAwesomeIcons.cat,
    //                 color: groomingSelected ? Colors.white : Color(0xFF8F8F8F)),
    //             radius: 25,
    //           ),
    //         ),
    //         Padding(
    //           padding: EdgeInsets.only(top: 0),
    //           child: Text(
    //             'Grooming',
    //             style: Theme.of(context).primaryTextTheme.subtitle2,
    //           ),
    //         )
    //       ],
    //     ),
    //   ),
    //   2: Padding(
    //     padding: const EdgeInsets.only(left: 0),
    //     child: Column(
    //       children: [
    //         Card(
    //           elevation: 3,
    //           shape: RoundedRectangleBorder(
    //               borderRadius: BorderRadius.circular(50.0)),
    //           child: CircleAvatar(
    //             backgroundColor: outdoorSelected
    //                 ? Theme.of(context).primaryColor
    //                 : Colors.white,
    //             child: Icon(FontAwesomeIcons.cat,
    //                 color: catSelectd ? Colors.white : Color(0xFF8F8F8F)),
    //             radius: 25,
    //           ),
    //         ),
    //         Padding(
    //           padding: EdgeInsets.only(top: 0),
    //           child: Text(
    //             'Outdoor',
    //             style: Theme.of(context).primaryTextTheme.subtitle2,
    //           ),
    //         )
    //       ],
    //     ),
    //   ),
    //   3: Padding(
    //     padding: const EdgeInsets.only(left: 0),
    //     child: Column(
    //       children: [
    //         Card(
    //           elevation: 3,
    //           shape: RoundedRectangleBorder(
    //               borderRadius: BorderRadius.circular(50.0)),
    //           child: CircleAvatar(
    //             backgroundColor:
    //                 catSelectd ? Theme.of(context).primaryColor : Colors.white,
    //             child: Icon(FontAwesomeIcons.cat,
    //                 color: careSelected ? Colors.white : Color(0xFF8F8F8F)),
    //             radius: 25,
    //           ),
    //         ),
    //         Padding(
    //           padding: EdgeInsets.only(top: 0),
    //           child: Text(
    //             'Care',
    //             style: Theme.of(context).primaryTextTheme.subtitle2,
    //           ),
    //         )
    //       ],
    //     ),
    //   ),
    // };

    return Scaffold(
        bottomNavigationBar: Container(
            // color: Colors.red,
            height: 45,
            padding: EdgeInsets.only(left: 15, right: 15),
            width: MediaQuery.of(context).size.width,
            child: TextButton(
                onPressed: () {
                  print('Hello');
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (context) => LogInScreen2(
                  //           a: widget.analytics,
                  //           o: widget.observer,
                  //         )));
                },
                child: Text(
                  "Show Results",
                ))),
        appBar: AppBar(
          actions: [
            Padding(
              padding: EdgeInsets.only(top: 20, right: 10),
              child: Text(
                'Reset',
                style: Theme.of(context).primaryTextTheme.overline,
              ),
            )
          ],
          centerTitle: true,
          title: Text(
            'Filter',
            style: Theme.of(context).primaryTextTheme.headline1,
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.close,
              color: Color(0xFF34385A),
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Padding(
                //   padding: const EdgeInsets.only(top: 15),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       Padding(
                //         padding: EdgeInsets.only(),
                //         child: Text(
                //           'Type of Pet',
                //           style: Theme.of(context).primaryTextTheme.bodyText1,
                //         ),
                //       ),
                //       Padding(
                //           padding: EdgeInsets.only(),
                //           child: Container(
                //             padding: const EdgeInsets.only(left: 5),
                //             child: CupertinoSegmentedControl(
                //               pressedColor: Colors.transparent,
                //               selectedColor: Colors.transparent,
                //               borderColor: Colors.transparent,
                //               onValueChanged: (val) {
                //                 if (val == 0) {
                //                   setState(() {
                //                     dogSelected = true;
                //                     catSelectd = false;
                //                   });
                //                 } else {
                //                   setState(() {
                //                     catSelectd = true;
                //                     dogSelected = false;
                //                   });
                //                 }
                //               },
                //               children: _widgetsOfDogAndCat,
                //             ),
                //           ))
                //     ],
                //   ),
                // ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(),
                        child: Text(
                          'Number of pets',
                          style: Theme.of(context).primaryTextTheme.bodyText1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: GestureDetector(
                                onTap: () {
                                  noOfPets--;
                                  setState(() {});
                                },
                                child: Icon(
                                  FontAwesomeIcons.minus,
                                  size: 10,
                                  color: Theme.of(context)
                                      .primaryTextTheme
                                      .subtitle2
                                      .color,
                                ),
                              ),
                            ),
                            Card(
                              elevation: 3,
                              child: Container(
                                height: 25,
                                width: 20,
                                // color: Colors.red,
                                child: Center(
                                    child: Text(
                                  '$noOfPets',
                                  style: Theme.of(context).textTheme.subtitle1,
                                )),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: GestureDetector(
                                onTap: () {
                                  noOfPets++;
                                  setState(() {});
                                },
                                child: Icon(
                                  Icons.add,
                                  size: 15,
                                  color: Theme.of(context)
                                      .primaryTextTheme
                                      .subtitle2
                                      .color,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(),
                        child: Text(
                          'Date',
                          style: Theme.of(context).primaryTextTheme.bodyText1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 0),
                        child: Row(
                          children: [
                            Card(
                              elevation: 3,
                              child: Container(
                                  height: 25,
                                  width: 85,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 3, bottom: 3, left: 5, right: 5),
                                    child: Row(
                                      children: [
                                        Text(
                                          '11 Feb 2021',
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle1,
                                        ),
                                      ],
                                    ),
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Icon(
                                Icons.calendar_today,
                                size: 15,
                                color: Theme.of(context)
                                    .primaryTextTheme
                                    .subtitle2
                                    .color,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Distance',
                        style: Theme.of(context).primaryTextTheme.bodyText1,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 0),
                        child: Card(
                          elevation: 3,
                          child: Container(
                            width: 50,
                            height: 25,
                            child: Center(
                                child: Text('${sliderVal.toInt()} KM',
                                    style:
                                        Theme.of(context).textTheme.subtitle1)),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      // color: Colors.red,
                      height: 20,
                      width: MediaQuery.of(context).size.width,
                      child: SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Theme.of(context).primaryColor,
                          inactiveTrackColor: Color(0xFF8F8F8F),
                          trackHeight: 2.0,
                          thumbColor: Theme.of(context).primaryColor,
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 8.0),
                          overlayColor: Colors.purple.withAlpha(32),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 14.0),
                        ),
                        child: Slider(
                          // onChangeEnd: ,
                          min: 0,
                          max: 10,
                          value: sliderVal,
                          onChanged: (value) {
                            sliderVal = value;
                            setState(() {});
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              '0 Km',
                              style:
                                  Theme.of(context).primaryTextTheme.subtitle2,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Text('30 KM',
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .subtitle2),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Price Range',
                        style: Theme.of(context).primaryTextTheme.bodyText1,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 0),
                        child: Row(
                          children: [
                            Card(
                              elevation: 3,
                              child: Container(
                                width: 50,
                                height: 25,
                                child: Center(
                                    child: Text(
                                  'Rs.$startRangeVal',
                                  style: Theme.of(context).textTheme.subtitle1,
                                )),
                              ),
                            ),
                            Text('to',
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .subtitle2),
                            Card(
                              elevation: 3,
                              child: Container(
                                width: 50,
                                height: 25,
                                child: Center(
                                    child: Text('Rs.$endRangeVal',
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1)),
                              ),
                            ),
                            Text(
                              '/KM',
                              style:
                                  Theme.of(context).primaryTextTheme.subtitle2,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      // color: Colors.red,
                      height: 20,
                      width: MediaQuery.of(context).size.width,
                      child: SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Theme.of(context).primaryColor,
                          inactiveTrackColor: Color(0xFF8F8F8F),
                          trackHeight: 2.0,
                          thumbColor: Theme.of(context).primaryColor,
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 8.0),
                          overlayColor: Colors.purple.withAlpha(32),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 14.0),
                        ),
                        child: RangeSlider(
                          values: sliderVal5,
                          // onChangeEnd: ,
                          min: 0,
                          max: 500,
                          onChanged: (RangeValues value) {
                            sliderVal5 = value;
                            print(value.start);
                            startRangeVal = value.start.toInt();
                            endRangeVal = value.end.toInt();

                            setState(() {});
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              'Rs.0',
                              style:
                                  Theme.of(context).primaryTextTheme.subtitle2,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Text('Rs.1000',
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .subtitle2),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Rating',
                        style: Theme.of(context).primaryTextTheme.bodyText1,
                      ),
                      Row(
                        children: [
                          RatingBar.builder(
                            initialRating: ratingVal,
                            minRating: 0,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 20,
                            itemPadding: EdgeInsets.symmetric(horizontal: 0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            ignoreGestures: false,
                            updateOnDrag: true,
                            onRatingUpdate: (rating) {
                              ratingVal = rating;
                              setState(() {});
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 7),
                            child: Text(
                              '$ratingVal+',
                              style:
                                  Theme.of(context).primaryTextTheme.subtitle2,
                            ),
                          )
                        ],
                      )
                    ],
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
