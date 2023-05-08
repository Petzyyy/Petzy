import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:pet_user_app/models/businessLayer/baseRoute.dart';

class ProductDetailScreen extends BaseRoute {
  // ProductDetailScreen() : super();
  ProductDetailScreen({a, o}) : super(a: a, o: o, r: 'ProductDetailScreen');
  @override
  _ProductDetailScreenState createState() => new _ProductDetailScreenState();
}

class _ProductDetailScreenState extends BaseRouteState {
  _ProductDetailScreenState() : super();
  int selectedValue = 0;
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
          'Product Page',
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
                child: Stack(
                  children: [
                    Container(
                      child: Padding(
                        padding: EdgeInsets.only(top: 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 250,
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
                                  Container(
                                    margin: EdgeInsets.only(top: 0),
                                    height: 250,
                                    width: 180,
                                    child: Image.asset('assets/prod1.png'),
                                  ),
                                  Positioned(
                                    left: 150,
                                    bottom: 10,
                                    child: DotsIndicator(
                                      dotsCount: 3,
                                      position: double.parse(
                                          selectedValue.toString()),
                                      decorator: DotsDecorator(
                                        color: Colors.grey, // Inactive color
                                        activeColor: Color(0xFFF0900C),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 10,
                                    top: 10,
                                    child: Card(
                                      elevation: 3,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50.0)),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        child: Icon(
                                          Icons.favorite,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        radius: 20,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 10,
                                    top: 70,
                                    child: Card(
                                      elevation: 3,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50.0)),
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
                              );
                            },
                          ),
                          decoration: BoxDecoration(
                              // color: Theme.of(context).primaryColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Kennel Kitchen',
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .bodyText1,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 0),
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Icon(
                                            FontAwesomeIcons.minus,
                                            color: Colors.grey,
                                            size: 15,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Card(
                                          elevation: 3,
                                          child: Container(
                                            width: 20,
                                            height: 20,
                                            child: Center(
                                                child: Text('1',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .subtitle1)),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          child: Icon(
                                            FontAwesomeIcons.plus,
                                            color: Colors.grey,
                                            size: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Row(
                                children: [
                                  Text(
                                    'Chiken & Tune Gourmet Loaf',
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    FontAwesomeIcons.rupeeSign,
                                    size: 15,
                                    color: Colors.black,
                                  ),
                                  Text(
                                    '185',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        RatingBar.builder(
                                          initialRating: ratingVal,
                                          minRating: 0,
                                          // direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemSize: 20,
                                          itemPadding: EdgeInsets.symmetric(
                                              horizontal: 0),
                                          itemBuilder: (context, _) => Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          ignoreGestures: true,
                                          updateOnDrag: false,
                                          onRatingUpdate: (val) {},
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 7),
                                          child: Text(
                                            '15 reviews',
                                            style: Theme.of(context)
                                                .primaryTextTheme
                                                .headline6,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Card(
                                          color: Theme.of(context).primaryColor,
                                          elevation: 3,
                                          child: Container(
                                            width: 40,
                                            height: 30,
                                            child: Center(
                                                child: Text('185g',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .subtitle1)),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 1,
                                        ),
                                        Card(
                                          elevation: 3,
                                          child: Container(
                                            width: 40,
                                            height: 30,
                                            child: Center(
                                                child: Text('500g',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .subtitle1)),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 1,
                                        ),
                                        Card(
                                          elevation: 3,
                                          child: Container(
                                            width: 40,
                                            height: 30,
                                            child: Center(
                                                child: Text('1kg',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .subtitle1)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Row(
                                children: [
                                  Text(
                                    'Product Description',
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .bodyText1,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Kennael kitchen chiken and Tuna Gourmet Loaf is a Grain free, Preservative Free; complete and balance dog food that contain leading levels of chiken and tuna that provide lean protine ',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 35),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Reviews',
                                      style: Theme.of(context)
                                          .primaryTextTheme
                                          .bodyText1),
                                  Text(
                                    'View All',
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .headline6,
                                  )
                                ],
                              ),
                            ),
                            Container(
                                child: Card(
                                    child: Stack(children: [
                              ListTile(
                                contentPadding: EdgeInsets.all(2),
                                horizontalTitleGap: 1,
                                leading: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 0),
                                    child: CircleAvatar(
                                        radius: 40,
                                        // backgroundColor: Colors.red,
                                        backgroundImage:
                                            AssetImage('assets/home4.png')),
                                  ),
                                ),
                                title: Text('Karan Mehta',
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .bodyText1),
                                subtitle: Text(
                                    'One of the best products I have purchased '),
                              ),
                              Positioned(
                                right: 0,
                                top: 0,
                                child: Container(
                                  child: Row(
                                    children: [
                                      RatingBar.builder(
                                        initialRating: ratingVal,
                                        minRating: 0,
                                        // direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 5,
                                        itemSize: 20,
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
                              )
                            ]))),

                            //second card
                            Container(
                                child: Card(
                                    child: Stack(children: [
                              ListTile(
                                contentPadding: EdgeInsets.all(2),
                                horizontalTitleGap: 1,
                                leading: Padding(
                                  padding: const EdgeInsets.only(right: 0),
                                  child: CircleAvatar(
                                      radius: 40,
                                      // backgroundColor: Colors.red,
                                      backgroundImage:
                                          AssetImage('assets/home4.png')),
                                ),
                                title: Text('Karan Mehta',
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .bodyText1),
                                subtitle: Text(
                                    'One of the best products I have purchased '),
                              ),
                              Positioned(
                                right: 0,
                                top: 0,
                                child: Container(
                                  child: Row(
                                    children: [
                                      RatingBar.builder(
                                        initialRating: ratingVal,
                                        minRating: 0,
                                        // direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 5,
                                        itemSize: 20,
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
                              )
                            ])))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
          // color: Colors.red,
          height: 45,
          padding: EdgeInsets.only(left: 15, right: 15),
          width: MediaQuery.of(context).size.width,
          child: TextButton(
              onPressed: () {
                print('Hello');
                addToCartDialogBox(context);
              },
              child: Text(
                "Add to Cart",
              ))),
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

  addToCartDialogBox(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0))),
              content: Stack(
            //    overflow: Overflow.visible,
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
