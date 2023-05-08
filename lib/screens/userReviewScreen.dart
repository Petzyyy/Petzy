import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:pet_user_app/models/baseRoute.dart';

class UserReviewScreen extends BaseRoute {
  // UserReviewScreen() : super();
  UserReviewScreen({a, o}) : super(a: a, o: o, r: 'UserReviewScreen');
  @override
  _UserReviewScreenState createState() => new _UserReviewScreenState();
}

class _UserReviewScreenState extends BaseRouteState {
  _UserReviewScreenState() : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios),
          title: Text(
            'My Reviews',
            style: Theme.of(context).primaryTextTheme.headline1,
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
            child: Container(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [
              Container(
                child: Card(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  elevation: 2,
                  child: Container(
                    child: ListTile(
                      horizontalTitleGap: 5,
                      contentPadding: EdgeInsets.all(0),
                      leading: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: CircleAvatar(
                              radius: 40,
                              // backgroundColor: Colors.red,
                              backgroundImage:
                                  AssetImage('assets/dogimage2.png')),
                        ),
                      ),
                      title: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Nupur Shetty',
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .bodyText1,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Row(
                              children: [
                                RatingBar.builder(
                                  initialRating: 4,
                                  minRating: 0,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemSize: 18,
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 0),
                                  itemBuilder: (context, _) => Icon(
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
                                  padding: const EdgeInsets.only(left: 7),
                                  child: Text(
                                    '4.0',
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .subtitle2,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Hello',
                            style: Theme.of(context).primaryTextTheme.subtitle2,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                child: Card(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  elevation: 2,
                  child: Container(
                    child: ListTile(
                      horizontalTitleGap: 5,
                      contentPadding: EdgeInsets.all(0),
                      leading: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: CircleAvatar(
                              radius: 40,
                              // backgroundColor: Colors.red,
                              backgroundImage:
                                  AssetImage('assets/catimage.png')),
                        ),
                      ),
                      title: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Bhavin Shetty',
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .bodyText1,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Row(
                              children: [
                                RatingBar.builder(
                                  initialRating: 4,
                                  minRating: 0,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemSize: 18,
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 0),
                                  itemBuilder: (context, _) => Icon(
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
                                  padding: const EdgeInsets.only(left: 7),
                                  child: Text(
                                    '3.0',
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .subtitle2,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Hello',
                            style: Theme.of(context).primaryTextTheme.subtitle2,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                child: Card(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  elevation: 2,
                  child: Container(
                    child: ListTile(
                      horizontalTitleGap: 5,
                      contentPadding: EdgeInsets.all(0),
                      leading: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: CircleAvatar(
                              radius: 40,
                              // backgroundColor: Colors.red,
                              backgroundImage:
                                  AssetImage('assets/catimage2.png')),
                        ),
                      ),
                      title: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Heta Seth',
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .bodyText1,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Row(
                              children: [
                                RatingBar.builder(
                                  initialRating: 4,
                                  minRating: 0,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemSize: 18,
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 0),
                                  itemBuilder: (context, _) => Icon(
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
                                  padding: const EdgeInsets.only(left: 7),
                                  child: Text(
                                    '4.0',
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .subtitle2,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'No problem',
                            style: Theme.of(context).primaryTextTheme.subtitle2,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )));
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
