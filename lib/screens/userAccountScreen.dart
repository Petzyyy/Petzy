import 'package:flutter/material.dart';
import 'package:pet_user_app/models/baseRoute.dart';

class UserAccountScreen extends BaseRoute {
  // UserAccountScreen() : super();
  UserAccountScreen({a, o}) : super(a: a, o: o, r: 'UserAccountScreen');
  @override
  _UserAccountScreenState createState() => new _UserAccountScreenState();
}

class _UserAccountScreenState extends BaseRouteState {
  _UserAccountScreenState() : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text(
          'Account Settings',
          style: Theme.of(context).primaryTextTheme.headline1,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.height * 0.19,
                  child: Stack(
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.17,
                            width: MediaQuery.of(context).size.height * 0.17,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Theme.of(context).cardTheme.color,
                              borderRadius: new BorderRadius.all(
                                new Radius.circular(
                                    MediaQuery.of(context).size.height * 0.17),
                              ),
                              image: DecorationImage(
                                  image: AssetImage('assets/catimage2.png'),
                                  fit: BoxFit.cover),
                              border: new Border.all(
                                color: Theme.of(context).primaryColor,
                                width: 1.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                      Positioned(
                          top: 86,
                          right: 15,
                          child: IconButton(
                              padding: EdgeInsets.all(0),
                              onPressed: () {
                                setState(() {});
                              },
                              icon: Container(
                                  padding: EdgeInsets.all(0),
                                  margin: EdgeInsets.all(0),
                                  decoration: BoxDecoration(
                                      color: Theme.of(context).primaryColor,
                                      borderRadius: BorderRadius.circular(34)),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 30,
                                  ))))
                    ],
                  ),
                ),
              ),
              Center(
                  child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  'Tanki K.',
                  style: Theme.of(context).primaryTextTheme.headline5,
                ),
              )),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                    child: Text(
                      'Name',
                      style: Theme.of(context).primaryTextTheme.bodyText1,
                    ),
                  )),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                  child: TextFormField(
                    // controller: _cForgotEmail,
                    decoration: InputDecoration(
                      hintText: 'Tanki K.',
                      // prefixIcon: Icon(Icons.mail),
                      
                      contentPadding: EdgeInsets.only(top: 5, left: 10),
                    ),
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                    child: Text(
                      'Email',
                      style: Theme.of(context).primaryTextTheme.bodyText1,
                    ),
                  )),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                  child: TextFormField(
                    // controller: _cForgotEmail,
                    decoration: InputDecoration(
                      hintText: 'Email address',
                      // prefixIcon: Icon(Icons.mail),

                      contentPadding: EdgeInsets.only(top: 5, left: 10),
                    ),
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                    child: Text(
                      'Mobile Number',
                      style: Theme.of(context).primaryTextTheme.bodyText1,
                    ),
                  )),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                  child: TextFormField(
                    // controller: _cForgotEmail,
                    decoration: InputDecoration(
                      hintText: 'Mobile number',
                      // prefixIcon: Icon(Icons.mail),

                      contentPadding: EdgeInsets.only(top: 5, left: 10),
                    ),
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                    child: Text(
                      'Change Password',
                      style: Theme.of(context).primaryTextTheme.bodyText1,
                    ),
                  )),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      contentPadding: EdgeInsets.only(top: 5, left: 10),
                    ),
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                    child: Text(
                      'Confirm Password',
                      style: Theme.of(context).primaryTextTheme.bodyText1,
                    ),
                  )),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      contentPadding: EdgeInsets.only(top: 5, left: 10),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Container(
            // color: Colors.red,
            height: 45,
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
                  "Save",
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
