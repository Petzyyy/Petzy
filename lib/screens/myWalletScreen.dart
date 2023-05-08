import 'package:flutter/material.dart';
import 'package:pet_user_app/models/baseRoute.dart';

class MyWalletScreen extends BaseRoute {
  // MyWalletScreen() : super();
  MyWalletScreen({a, o}) : super(a: a, o: o, r: 'MyWalletScreen');
  @override
  _MyWalletScreenState createState() => new _MyWalletScreenState();
}

class _MyWalletScreenState extends BaseRouteState {
  _MyWalletScreenState() : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios),
          title: Text(
            'My Wallet',
            style: Theme.of(context).primaryTextTheme.headline1,
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Container(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: GridView.custom(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            childrenDelegate: SliverChildListDelegate(
              [
                Container(
                  child: Card(
                    color: Color(0xffdddff5),
                    child: Center(
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Totla Earning',
                              textAlign: TextAlign.center,
                              style:
                                  Theme.of(context).primaryTextTheme.headline1,
                            ),
                            Container(
                                padding: EdgeInsets.only(top: 5),
                                child: Text('Rs500'))
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Card(
                    color: Color(0xffdddff5),
                    child: Center(
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Admin Share spent by Admin',
                              textAlign: TextAlign.center,
                              style:
                                  Theme.of(context).primaryTextTheme.headline1,
                            ),
                            Container(
                                padding: EdgeInsets.only(top: 5),
                                child: Text('Rs200'))
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Card(
                    color: Color(0xffdddff5),
                    child: Center(
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Admin Share pending at vendor',
                              textAlign: TextAlign.center,
                              style:
                                  Theme.of(context).primaryTextTheme.headline1,
                            ),
                            Container(
                                padding: EdgeInsets.only(top: 5),
                                child: Text('Rs500'))
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Card(
                    color: Color(0xffdddff5),
                    child: Center(
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Total Vendor share given by Admin',
                              textAlign: TextAlign.center,
                              style:
                                  Theme.of(context).primaryTextTheme.headline1,
                            ),
                            Container(
                                padding: EdgeInsets.only(top: 5),
                                child: Text('Rs800'))
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Card(
                    color: Color(0xffdddff5),
                    child: Center(
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Total Vendor share pending at Admin',
                              textAlign: TextAlign.center,
                              style:
                                  Theme.of(context).primaryTextTheme.headline1,
                            ),
                            Container(
                                padding: EdgeInsets.only(top: 5),
                                child: Text('Rs800'))
                          ],
                        ),
                      ),
                    ),
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
