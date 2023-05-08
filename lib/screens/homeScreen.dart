import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:pet_user_app/models/api_utils.dart';
import 'package:pet_user_app/models/businessLayer/baseRoute.dart';
import 'package:pet_user_app/models/entites/products.dart';
import 'package:pet_user_app/screens/CartScreen.dart';
import 'package:pet_user_app/screens/dogWalkingScreen.dart';
import 'package:pet_user_app/screens/petBoardingScreen.dart';
import 'package:pet_user_app/screens/productstoreScreen.dart';
import 'package:pet_user_app/screens/veterinaryScreen.dart';

class HomeScreen extends BaseRoute {
  // HomeScreen() : super();
  HomeScreen({a, o}) : super(a: a, o: o, r: 'HomeScreen');
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends BaseRouteState {
  int selectedValue = 0;
  _HomeScreenState() : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leadingWidth: 300,
          backgroundColor: Colors.transparent,
          leading: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Icon(
                  Icons.location_on,
                  color: Color(0xFF34385A),
                  size: 28,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 5),
                // color: Colors.red,
                child: Column(
                  children: [
                    Text(
                      'Mumbai',
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: Row(
                        children: [
                          Text('via Parle',
                              style:
                                  Theme.of(context).primaryTextTheme.subtitle2),
                          Icon(
                            Icons.arrow_back_ios_outlined,
                            color: Colors.black,
                            size: 15,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => CartScreen(
                            a: widget.analytics,
                            o: widget.observer,
                          )));
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
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: SingleChildScrollView(
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
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 25),
                        child: Text(
                          'What are you looking for?',
                          style: Theme.of(context).primaryTextTheme.bodyText1,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  height: 110,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => PetBoardingScreen(
                                    a: widget.analytics,
                                    o: widget.observer,
                                  )));
                        },
                        child: Container(
                          // color: Colors.red,
                          width: 90,
                          height: 75,
                          child: Card(
                            elevation: 5,
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/homepetboarding2.png',
                                  fit: BoxFit.contain,
                                ),
                                Text(
                                  'Pet boarding',
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .headline6,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => DogWalkingScreen(
                                    a: widget.analytics,
                                    o: widget.observer,
                                  )));
                        },
                        child: Container(
                          width: 90,
                          height: 95,
                          child: Card(
                            elevation: 5,
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/homepetboarding3.png',
                                  fit: BoxFit.contain,
                                ),
                                Text(
                                  'Dog Walking',
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .headline6,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => VeterinaryScreen(
                                    a: widget.analytics,
                                    o: widget.observer,
                                  )));
                        },
                        child: Container(
                          width: 90,
                          height: 95,
                          child: Card(
                            elevation: 5,
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/homepetboarding4.png',
                                  fit: BoxFit.contain,
                                ),
                                Text(
                                  'Veterinary',
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .headline6,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ProductStoreScreen(
                                    a: widget.analytics,
                                    o: widget.observer,
                                  )));
                        },
                        child: Container(
                          width: 90,
                          height: 95,
                          child: Card(
                            elevation: 5,
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/homepetboarding2.png',
                                  fit: BoxFit.contain,
                                ),
                                Text(
                                  'Product Store',
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .headline6,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Booking Updates',
                          style: Theme.of(context).primaryTextTheme.bodyText1),
                      Text(
                        'View All',
                        style: Theme.of(context).primaryTextTheme.headline6,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 90,
                    child: PageView.builder(
                      onPageChanged: (val) {
                        selectedValue = val;
                        setState(() {});
                      },
                      itemCount: 3,
                      itemBuilder: (context, position) {
                        return Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width - 100,
                                  // color: Colors.red,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 15, left: 10, bottom: 10),
                                        child: Text(
                                            'Pet Appointment with Dr.Arti',
                                            style: Theme.of(context)
                                                .primaryTextTheme
                                                .headline3),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 10,
                                        ),
                                        child: Row(
                                          children: [
                                            Text('9:00pm',
                                                style: Theme.of(context)
                                                    .primaryTextTheme
                                                    .headline2),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 2, right: 2),
                                              child: Icon(
                                                Icons.circle,
                                                size: 10,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Text(
                                              'Monday',
                                              style: Theme.of(context)
                                                  .primaryTextTheme
                                                  .headline2,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 2, right: 2),
                                              child: Icon(
                                                Icons.circle,
                                                size: 10,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Text('15 Feb',
                                                style: Theme.of(context)
                                                    .primaryTextTheme
                                                    .headline2)
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: CircleAvatar(
                                      radius: 30,
                                      // backgroundColor: Colors.red,
                                      backgroundImage:
                                          AssetImage('assets/home4.png')),
                                )
                              ],
                            ),
                            DotsIndicator(
                              dotsCount: 3,
                              position: double.parse(selectedValue.toString()),
                              decorator: DotsDecorator(
                                color: Colors.black87, // Inactive color
                                activeColor: Color(0xFFF0900C),
                              ),
                            )
                          ],
                        );
                      },
                    ),
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Blogs',
                          style: Theme.of(context).primaryTextTheme.bodyText1),
                      Text('View All',
                          style: Theme.of(context).primaryTextTheme.headline6)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      Container(
                        height: 110,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          elevation: 5,
                          child: Container(
                              padding: EdgeInsets.all(3),
                              width: MediaQuery.of(context).size.width,
                              child: Row(
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
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
                                          height: 70,
                                          width: 80,
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(
                                              top: 2,
                                              bottom: 2,
                                              left: 7,
                                              right: 7),
                                          margin: EdgeInsets.only(top: 3),
                                          child: Text(
                                            'Behaviour',
                                            style: Theme.of(context)
                                                .primaryTextTheme
                                                .headline6,
                                          ),
                                          decoration: BoxDecoration(
                                              color: Color(0xFFc9d0f2),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(left: 10),
                                      // color: Colors.green,
                                      width: MediaQuery.of(context).size.width -
                                          134,
                                      height: 120,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text('Hello this is good news',
                                                  style: Theme.of(context)
                                                      .primaryTextTheme
                                                      .bodyText1),
                                              Icon(
                                                Icons.bookmark,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              )
                                            ],
                                          ),
                                          Text('@ 10th february 2021'),
                                          Expanded(
                                            child: Text(
                                              'In publishing and graphic design, Lorem ipsum is a placeholder text,Lorem ipsum is a placeholder text ',
                                              style: Theme.of(context)
                                                  .primaryTextTheme
                                                  .subtitle2,
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 3,
                                            ),
                                          ),
                                        ],
                                      ))
                                ],
                              )),
                        ),
                      ),
                      Container(
                        height: 110,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          elevation: 5,
                          child: Container(
                              padding: EdgeInsets.all(3),
                              width: MediaQuery.of(context).size.width,
                              child: Row(
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
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
                                          height: 70,
                                          width: 80,
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(
                                              top: 2,
                                              bottom: 2,
                                              left: 7,
                                              right: 7),
                                          margin: EdgeInsets.only(top: 3),
                                          child: Text('Behaviour',
                                              style: Theme.of(context)
                                                  .primaryTextTheme
                                                  .headline6),
                                          decoration: BoxDecoration(
                                              color: Color(0xFFc9d0f2),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(left: 10),
                                      // color: Colors.green,
                                      width: MediaQuery.of(context).size.width -
                                          134,
                                      height: 120,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text('Hello this is good news',
                                                  style: Theme.of(context)
                                                      .primaryTextTheme
                                                      .bodyText1),
                                              Icon(
                                                Icons.bookmark,
                                                color: Color(0xFF8F8F8F),
                                              )
                                            ],
                                          ),
                                          Text(
                                            '@ 10th february 2021',
                                            style: Theme.of(context)
                                                .primaryTextTheme
                                                .bodyText2,
                                          ),
                                          Expanded(
                                            child: Text(
                                              'In publishing and graphic design, Lorem ipsum is a placeholder text,Lorem ipsum is a placeholder text ',
                                              overflow: TextOverflow.ellipsis,
                                              style: Theme.of(context)
                                                  .primaryTextTheme
                                                  .subtitle2,
                                              maxLines: 3,
                                            ),
                                          ),
                                        ],
                                      ))
                                ],
                              )),
                        ),
                      ),
                      Container(
                        height: 110,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          elevation: 5,
                          child: Container(
                              padding: EdgeInsets.all(3),
                              width: MediaQuery.of(context).size.width,
                              child: Row(
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
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
                                          height: 70,
                                          width: 80,
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(
                                              top: 2,
                                              bottom: 2,
                                              left: 7,
                                              right: 7),
                                          margin: EdgeInsets.only(top: 3),
                                          child: Text('Behaviour',
                                              style: Theme.of(context)
                                                  .primaryTextTheme
                                                  .headline6),
                                          decoration: BoxDecoration(
                                              color: Color(0xFFc9d0f2),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(left: 10),
                                      // color: Colors.green,
                                      width: MediaQuery.of(context).size.width -
                                          134,
                                      height: 120,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Hello this is good news',
                                                style: Theme.of(context)
                                                    .primaryTextTheme
                                                    .bodyText1,
                                              ),
                                              Icon(
                                                Icons.bookmark,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              )
                                            ],
                                          ),
                                          Text('@ 10th february 2021'),
                                          Expanded(
                                            child: Text(
                                              'In publishing and graphic design, Lorem ipsum is a placeholder text,Lorem ipsum is a placeholder text ',
                                              overflow: TextOverflow.ellipsis,
                                              style: Theme.of(context)
                                                  .primaryTextTheme
                                                  .subtitle2,
                                              maxLines: 3,
                                            ),
                                          ),
                                        ],
                                      ))
                                ],
                              )),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  bool isloading = true;
}
