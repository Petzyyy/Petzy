import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:pet_user_app/models/baseRoute.dart';

class AddRatingScreen extends BaseRoute {
  // AddRatingScreen() : super();
  AddRatingScreen({a, o}) : super(a: a, o: o, r: 'AddRatingScreen');
  @override
  _AddRatingScreenState createState() => new _AddRatingScreenState();
}

class _AddRatingScreenState extends BaseRouteState {
  _AddRatingScreenState() : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text(
          'Rate Your Experience',
          style: Theme.of(context).primaryTextTheme.headline1,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
          child: Container(
        child: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 100),
                child: Text(
                  'Rate Service Experience',
                  style: Theme.of(context).primaryTextTheme.headline5,
                ),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 50),
                child: RatingBar.builder(
                  initialRating: 4,
                  minRating: 0,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 30,
                  itemPadding: EdgeInsets.symmetric(horizontal: 0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  ignoreGestures: false,
                  updateOnDrag: false,
                  onRatingUpdate: (rating) {
                    // ratingVal= rating;
                    // setState(() { });
                  },
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Comment',
                    contentPadding: EdgeInsets.only(top: 5, left: 10),
                  ),
                  maxLines: 5,
                ),
              ),
            )
          ],
        ),
      )),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Container(
            // color: Colors.red,
            height: 50,
            padding: EdgeInsets.only(
              left: 15,
              right: 15,
              top: 10,
            ),
            width: MediaQuery.of(context).size.width,
            child: TextButton(
                // style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor)),
                onPressed: () {
                  print('Hello');
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (context) => LogInScreen2(
                  //           a: widget.analytics,
                  //           o: widget.observer,
                  //         )));
                },
                child: Text(
                  "Submit",
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
