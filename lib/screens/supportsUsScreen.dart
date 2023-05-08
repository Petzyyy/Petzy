import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_user_app/models/businessLayer/baseRoute.dart';

class SupportsUsScreen extends BaseRoute {
  // SupportsUsScreen() : super();
  SupportsUsScreen({a, o}) : super(a: a, o: o, r: 'SupportsUsScreen');
  @override
  _SupportsUsScreenState createState() => new _SupportsUsScreenState();
}

class _SupportsUsScreenState extends BaseRouteState {
  File _tImage;
  _SupportsUsScreenState() : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text(
          'Support Us',
          style: Theme.of(context).primaryTextTheme.headline1,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 15, right: 15),
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(top: 30, left: 15, right: 15),
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
                _tImage == null
                    ? GestureDetector(
                        onTap: () {
                          _showCupertinoModalSheet();
                        },
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.all(10),
                            child: Chip(
                              backgroundColor: Theme.of(context).primaryColor,
                              labelPadding: EdgeInsets.all(2.0),
                              label: Container(
                                margin: EdgeInsets.all(1),
                                child: Text(
                                  'Attechments',
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .headline3,
                                ),
                              ),
                            ),
                            padding: EdgeInsets.all(8.0),
                          ),
                        ),
                      )
                    : Container(
                        height: 250,
                        width: double.infinity,
                        child: Image.file(
                          _tImage,
                          fit: BoxFit.cover,
                        ),
                      )
              ],
            ),
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

  _showCupertinoModalSheet() {
    try {
      FocusScope.of(context).unfocus();
      showCupertinoModalPopup(
        context: context,
        builder: (BuildContext context) => CupertinoActionSheet(
          title: Text('Actions'),
          actions: [
            CupertinoActionSheetAction(
              child: Text('Take Picture',
                  style: TextStyle(color: Color(0xFF171D2C))),
              onPressed: () async {
                Navigator.pop(context);
                showOnlyLoaderDialog();
                _tImage = await br.openCamera();
                hideLoader();

                print('Image Path : ${_tImage.path}');
                setState(() {});
              },
            ),
            CupertinoActionSheetAction(
              child: Text('Choose from gallery',
                  style: TextStyle(color: Color(0xFF171D2C))),
              onPressed: () async {
                Navigator.pop(context);
                showOnlyLoaderDialog();
                _tImage = await br.selectImageFromGallery();
                hideLoader();
                print('Image Path : ${_tImage.path}');
                setState(() {});
              },
            )
          ],
          cancelButton: CupertinoActionSheetAction(
            child: Text('Cancel', style: TextStyle(color: Color(0xFFFA692C))),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      );
    } catch (e) {
      print("Exception - addServicesScreen.dart - _showCupertinoModalSheet():" +
          e.toString());
    }
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
