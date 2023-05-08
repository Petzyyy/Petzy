import 'package:flutter/material.dart';
import 'package:pet_user_app/dialogs/addAddressDialog.dart';
import 'package:pet_user_app/models/businessLayer/baseRoute.dart';

class AddressSelectScreen extends BaseRoute {
  // AddressSelectScreen() : super();
  AddressSelectScreen({a, o}) : super(a: a, o: o, r: 'AddressSelectScreen');
  @override
  _AddressSelectScreenState createState() => new _AddressSelectScreenState();
}

class _AddressSelectScreenState extends BaseRouteState {
  bool _firstAddressChecked = true;
  bool _secondAddressChecked = false;
  _AddressSelectScreenState() : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(Icons.arrow_back_ios)),
          title: Text(
            'Select Address',
            style: Theme.of(context).primaryTextTheme.headline1,
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) => AddAddressDialog(
                          a: widget.analytics,
                          o: widget.observer,
                        ));
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(Icons.add),
              ),
            )
          ],
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Container(
                    // height: 100,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Color(0xFFDDDFF5),
                        border: Border.all(
                            width: 1, color: Theme.of(context).primaryColor),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        )),
                    child: Padding(
                        padding: EdgeInsets.only(
                            top: 15, bottom: 15, left: 15, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              // color: Colors.red,
                              width: MediaQuery.of(context).size.width / 2 + 25,
                              child: Text(
                                'House No.3 14th Crossroad Khar West, Mumbai',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .headline6,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                _firstAddressChecked = !_firstAddressChecked;
                                setState(() {});
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1,
                                        color: Theme.of(context).primaryColor),
                                    shape: BoxShape.circle,
                                    color: _firstAddressChecked
                                        ? Theme.of(context).primaryColor
                                        : Colors.transparent),
                                height: 18,
                                width: 17,
                                child: Center(
                                  child: Icon(
                                    Icons.check,
                                    color: _firstAddressChecked
                                        ? Colors.white
                                        : Colors.transparent,
                                    size: 12,
                                  ),
                                ),
                              ),
                            )
                          ],
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Container(
                    // height: 100,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Color(0xFFDDDFF5),
                        border: Border.all(
                            width: 1, color: Theme.of(context).primaryColor),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        )),
                    child: Padding(
                        padding: EdgeInsets.only(
                            top: 15, bottom: 15, left: 15, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              // color: Colors.red,
                              width: MediaQuery.of(context).size.width / 2 + 25,
                              child: Text(
                                'New haweli,street 41 Dubai',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .headline6,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                _secondAddressChecked = !_secondAddressChecked;
                                setState(() {});
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1,
                                        color: Theme.of(context).primaryColor),
                                    shape: BoxShape.circle,
                                    color: _secondAddressChecked
                                        ? Theme.of(context).primaryColor
                                        : Colors.transparent),
                                height: 18,
                                width: 17,
                                child: Center(
                                  child: Icon(
                                    Icons.check,
                                    color: _firstAddressChecked
                                        ? Colors.white
                                        : Colors.transparent,
                                    size: 12,
                                  ),
                                ),
                              ),
                            )
                          ],
                        )),
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
