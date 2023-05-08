import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pet_user_app/models/api_utils.dart';
import 'package:pet_user_app/models/businessLayer/baseRoute.dart';
import 'package:pet_user_app/models/entites/vets.dart';
import 'package:pet_user_app/screens/dogWalkingDetailScreen.dart';
import 'package:pet_user_app/models/apiHelper.dart';
import 'package:pet_user_app/screens/veterinaryBookingProcessFilterScreeen.dart';
import 'package:pet_user_app/screens/veterinaryDetailScreen.dart';

class VeterinaryScreen extends BaseRoute {
  // VeterinaryScreen() : super();
  VeterinaryScreen({a, o}) : super(a: a, o: o, r: 'VeterinaryScreen');
  @override
  _VeterinaryScreenState createState() => new _VeterinaryScreenState();
}

class _VeterinaryScreenState extends BaseRouteState {
  _VeterinaryScreenState() : super();

  List<Vets> vets = [];
  ApiUtils _apiUtils = ApiUtils();

  @override
  void initState() {
    super.initState();

    _apiUtils.getAllVets().then((value) => setState(() => vets = value));
    print(vets);
  }

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
            ),
          ),
          title: Text(
            'Veterinary',
            style: Theme.of(context).primaryTextTheme.headline1,
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Icon(
                Icons.shopping_cart_outlined,
              ),
            )
          ],
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: SingleChildScrollView(
            child: Column(children: [
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
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Veterinary near you...',
                      style: Theme.of(context).primaryTextTheme.bodyText1,
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    VeterinaryBookingProccessFilterScreen(
                                      a: widget.analytics,
                                      o: widget.observer,
                                    )));
                          },
                          child: Icon(
                            FontAwesomeIcons.filter,
                            color: Color(0xFF8F8F8F),
                            size: 18,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Icon(
                            Icons.filter_3_outlined,
                            size: 18,
                            color: Color(0xFF8F8F8F),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.8,
                child: ListView.builder(
                    itemCount: vets.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.only(),
                        child: Card(
                          elevation: 3,
                          child: Container(
                            height: 175,
                            width: MediaQuery.of(context).size.width,
                            // color: Colors.red,
                            child: Column(
                              children: [
                                Container(
                                  // color: Colors.green,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, left: 10),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 38,
                                          backgroundImage: AssetImage(
                                              'assets/catimage2.png'),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                vets[index].name,
                                                style: Theme.of(context)
                                                    .primaryTextTheme
                                                    .headline1,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 5),
                                                child: Row(
                                                  children: [
                                                    RatingBar.builder(
                                                      initialRating: 4,
                                                      minRating: 0,
                                                      direction:
                                                          Axis.horizontal,
                                                      allowHalfRating: true,
                                                      itemCount: 5,
                                                      itemSize: 20,
                                                      itemPadding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 0),
                                                      itemBuilder:
                                                          (context, _) => Icon(
                                                        Icons.star,
                                                        color: Colors.amber,
                                                      ),
                                                      ignoreGestures: true,
                                                      updateOnDrag: false,
                                                      onRatingUpdate: (rating) {
                                                        // ratingVal= rating;
                                                        // setState(() { });
                                                      },
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 7),
                                                      child: Text(
                                                        '15 reviews',
                                                        style: Theme.of(context)
                                                            .primaryTextTheme
                                                            .subtitle2,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(top: 10),
                                                child: Text(vets[index].address,
                                                    style: Theme.of(context)
                                                        .primaryTextTheme
                                                        .subtitle2),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 110,
                                          // color: Colors.yellow,
                                          padding: EdgeInsets.only(),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(
                                                    FontAwesomeIcons
                                                        .checkCircle,
                                                    size: 12,
                                                    color: Color(0xFFF0900C),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 5),
                                                    child: Text(
                                                      'Verified',
                                                      style: TextStyle(
                                                        fontSize: 11.5,
                                                        color:
                                                            Color(0xFFF0900C),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Container(
                                                  child: Text('Rs700/visit'))
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      VeterinaryDetailScreen(
                                                        a: widget.analytics,
                                                        o: widget.observer,
                                                      )));
                                        },
                                        child: Container(
                                          margin: EdgeInsets.only(left: 15),
                                          //  padding: EdgeInsets.all(6),
                                          width: 125,
                                          height: 36,
                                          child: Center(
                                            child: Text(
                                              'View profile',
                                              style: TextStyle(
                                                  color: Theme.of(context)
                                                      .primaryColor),
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 1,
                                                  color: Theme.of(context)
                                                      .primaryColor),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5))),
                                        ),
                                      ),
                                      Container(
                                          margin: EdgeInsets.only(right: 15),
                                          // color: Colors.red,
                                          height: 36,
                                          // padding: EdgeInsets.only(left: 15, right: 15),
                                          width: 125,
                                          child: TextButton(
                                              style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                          Theme.of(context)
                                                              .primaryColor),
                                                  textStyle:
                                                      MaterialStateProperty.all(
                                                          TextStyle(
                                                              fontSize: 13))),
                                              onPressed: () {
                                                // print('Hello');
                                                // Navigator.of(context).push(MaterialPageRoute(
                                                //     builder: (context) => LogInScreen2(
                                                //           a: widget.analytics,
                                                //           o: widget.observer,
                                                //         )));
                                              },
                                              child: Text(
                                                "Book Now",
                                              ))),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ]),
          ),
        ));
  }

  @override
  void dispose() {
    super.dispose();
  }

  bool isloading = true;
}
