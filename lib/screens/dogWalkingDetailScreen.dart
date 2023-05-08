import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pet_user_app/models/businessLayer/baseRoute.dart';
import 'package:pet_user_app/screens/dogWalkingReviewScreen.dart';
import 'package:pet_user_app/screens/reviewBookingScreen.dart';

class DogWalkingDetailScreen extends BaseRoute {
  // DogWalkingDetailScreen() : super();
  DogWalkingDetailScreen({a, o})
      : super(a: a, o: o, r: 'DogWalkingDetailScreen');
  @override
  _DogWalkingDetailScreenState createState() =>
      new _DogWalkingDetailScreenState();
}

class _DogWalkingDetailScreenState extends BaseRouteState {
  _DogWalkingDetailScreenState() : super();
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
          'Sara Seth',
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
              padding: EdgeInsets.only(top: 5),
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 28),
                        child: CircleAvatar(
                            radius: 80,
                            backgroundImage:
                                AssetImage('assets/dogimage2.png')),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 10,
                    top: 0,
                    child: Card(
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.favorite,
                          color: Colors.grey,
                        ),
                        radius: 20,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 10,
                    top: 60,
                    child: Card(
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.share,
                          color: Colors.grey,
                        ),
                        radius: 20,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Icon(Icons.verified, color: Color(0xfff0900c)),
                        Text(
                          'Third Party',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFFF0900C),
                          ),
                        ),
                        Text(
                          'Verification',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFFF0900C),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          '5.0',
                          style: TextStyle(fontSize: 20),
                        ),
                        Container(
                          child: Row(
                            children: [
                              RatingBar.builder(
                                initialRating: ratingVal,
                                minRating: 0,
                                // direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 15,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 0),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                ignoreGestures: true,
                                updateOnDrag: false,
                                onRatingUpdate: (val) {},
                              ),
                            ],
                          ),
                        ),
                        Text('15 Reviews')
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          '23',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text('Bookings'),
                        Text('Completed')
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15, top: 15),
              child: Row(
                children: [
                  Container(
                    child: Text(
                      'About Sara',
                      style: Theme.of(context).primaryTextTheme.headline1,
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right: 15, top: 10),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                          'I am come form a family of animal lover. I have always taken care of my family pets. I was fourteen the firt time.I watched over a friends pets while they were away.'))
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15, top: 15),
              child: Row(
                children: [
                  Container(
                    child: Text(
                      'Services offered',
                      style: Theme.of(context).primaryTextTheme.bodyText1,
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15, top: 5),
              child: Row(
                children: [
                  Container(
                    child: Text(
                      'Pet Boarding & Dog Walking',
                      style: Theme.of(context).primaryTextTheme.bodyText2,
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15, top: 15),
              child: Row(
                children: [
                  Container(
                    child: Text(
                      "Sara's home",
                      style: Theme.of(context).primaryTextTheme.bodyText1,
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15, top: 5),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 5, bottom: 0),
                    child: Row(
                      children: [
                        Container(
                            child: Icon(
                          Icons.apartment,
                          color: Color(0xFF8f8f8f),
                        )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: Text(
                            'Lives in a aprtment',
                            style: Theme.of(context).primaryTextTheme.bodyText2,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5, bottom: 0),
                    child: Row(
                      children: [
                        Container(
                            child: Icon(
                          Icons.smoke_free_rounded,
                          color: Color(0xFF8f8f8f),
                        )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: Text(
                            'Non smoking household',
                            style: Theme.of(context).primaryTextTheme.bodyText2,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5, bottom: 0),
                    child: Row(
                      children: [
                        Container(
                            child: Icon(
                          Icons.child_friendly_outlined,
                          color: Color(0xFF8f8f8f),
                        )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: Text(
                            'No children present',
                            style: Theme.of(context).primaryTextTheme.bodyText2,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5, bottom: 0),
                    child: Row(
                      children: [
                        Container(
                            child: Icon(
                          Icons.smoke_free_rounded,
                          color: Color(0xFF8f8f8f),
                        )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: Text(
                            'Has 1 puppy',
                            style: Theme.of(context).primaryTextTheme.bodyText2,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 0, top: 15),
                    child: Row(
                      children: [
                        Container(
                          child: Text(
                            "What Sara would like to know about your pet ",
                            style: Theme.of(context).primaryTextTheme.bodyText1,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 0, top: 5),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: Text(
                              'Any behavioural issues, allergies,and/or special preference',
                              style:
                                  Theme.of(context).primaryTextTheme.bodyText2,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 0, top: 15),
                    child: Row(
                      children: [
                        Container(
                          child: Text(
                            "Facilities",
                            style: Theme.of(context).primaryTextTheme.bodyText1,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 0, top: 5),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Column(
                            children: [
                              Card(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0)),
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Icon(FontAwesomeIcons.medal,
                                      color: Theme.of(context).primaryColor),
                                  radius: 30,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 0),
                                child: Text(
                                  'Meals',
                                  style: TextStyle(
                                      color: Theme.of(context).primaryColor),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Column(
                            children: [
                              Card(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0)),
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Icon(FontAwesomeIcons.heart,
                                      color: Theme.of(context).primaryColor),
                                  radius: 30,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 0),
                                child: Text(
                                  'Care+',
                                  style: TextStyle(
                                      color: Theme.of(context).primaryColor),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Column(
                            children: [
                              Card(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0)),
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Icon(FontAwesomeIcons.building,
                                      color: Theme.of(context).primaryColor),
                                  radius: 30,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 0),
                                child: Text(
                                  'Outdoor',
                                  style: TextStyle(
                                      color: Theme.of(context).primaryColor),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

//
                  Padding(
                    padding: const EdgeInsets.only(top: 35, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Reviews',
                            style:
                                Theme.of(context).primaryTextTheme.bodyText1),
                        Text(
                          'View All',
                          style: Theme.of(context).primaryTextTheme.headline6,
                        )
                      ],
                    ),
                  ),

                  Container(
                      height: 150,
                      child: Card(
                          child: Stack(children: [
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          elevation: 5,
                          child: Container(
                              padding: EdgeInsets.all(10),
                              width: MediaQuery.of(context).size.width,
                              child: Row(
                                children: [
                                  Container(
                                    height: 140,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(right: 0),
                                            child: CircleAvatar(
                                                radius: 40,
                                                // backgroundColor: Colors.red,
                                                backgroundImage: AssetImage(
                                                    'assets/home4.png')),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(
                                              top: 2,
                                              bottom: 2,
                                              left: 7,
                                              right: 7),
                                          margin: EdgeInsets.only(top: 3),
                                          child: Text('verified stay',
                                              style: Theme.of(context)
                                                  .primaryTextTheme
                                                  .headline6),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(left: 10),
                                      // color: Colors.green,
                                      width: MediaQuery.of(context).size.width -
                                          150,
                                      height: 120,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text('Karan Mehta',
                                                  style: Theme.of(context)
                                                      .primaryTextTheme
                                                      .bodyText1),
                                            ],
                                          ),
                                          Expanded(
                                            child: Text(
                                              'In publishing and graphic design, Lorem ipsum is a placeholder text,Lorem ipsum is a placeholder text ',
                                              overflow: TextOverflow.ellipsis,
                                              style: Theme.of(context)
                                                  .primaryTextTheme
                                                  .subtitle2,
                                              maxLines: 4,
                                            ),
                                          ),
                                        ],
                                      ))
                                ],
                              )),
                        ),
                        Positioned(
                          right: 10,
                          top: 5,
                          child: Container(
                            child: Row(
                              children: [
                                RatingBar.builder(
                                  initialRating: ratingVal,
                                  minRating: 0,
                                  // direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemSize: 15,
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  ignoreGestures: true,
                                  updateOnDrag: true,
                                  onRatingUpdate: (val) {},
                                ),
                              ],
                            ),
                          ),
                        )
                      ]))),
                ],
              ),
            ),
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
                  print('Hello');
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DogWalkingReviewScreen(
                            a: widget.analytics,
                            o: widget.observer,
                          )));
                },
                child: Text(
                  "Book Now at 700 per day",
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
}
