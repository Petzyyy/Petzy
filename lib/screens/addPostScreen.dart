import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_user_app/models/businessLayer/baseRoute.dart';
import 'package:pet_user_app/screens/logInScreen1.dart';
import 'package:pet_user_app/widgets/bottomNavigationBarWidget.dart';
import 'package:textfield_tags/textfield_tags.dart';

class AddPostScreen extends BaseRoute {
  // AddPostScreen() : super();
  AddPostScreen({a, o}) : super(a: a, o: o, r: 'AddPostScreen');
  @override
  _AddPostScreenState createState() => new _AddPostScreenState();
}

class _AddPostScreenState extends BaseRouteState {
  File _tImage;
  _AddPostScreenState() : super();

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
          centerTitle: true,
          title: Text(
            'Add Post',
            style: Theme.of(context).primaryTextTheme.headline1,
          )),
      body: Padding(
        padding: EdgeInsets.only(left: 15, right: 15),
        child: SingleChildScrollView(
            child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  'Post Title',
                  style: Theme.of(context).primaryTextTheme.headline4,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Post Title',
                    contentPadding: EdgeInsets.only(top: 5, left: 10),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  'Upload Image',
                  style: Theme.of(context).primaryTextTheme.headline4,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Container(
                    child: DottedBorder(
                  color: Theme.of(context)
                      .primaryColor, //color of dotted/dash line
                  strokeWidth: 1, //thickness of dash/dots
                  dashPattern: [10, 6],
                  child: _tImage == null
                      ? GestureDetector(
                          onTap: () {
                            _showCupertinoModalSheet();
                          },
                          child: Container(
                            //inner container
                            height: 250, //height of inner container
                            width: double
                                .infinity, //width to 100% match to parent container.
                            child: Center(child: Text('Tap to add image')),
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            _showCupertinoModalSheet();
                          },
                          child: Container(
                            height: 250,
                            width: double.infinity,
                            child: Image.file(
                              _tImage,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                )),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text('Tag Here',
                    style: Theme.of(context).primaryTextTheme.headline4),
              ),
              Container(
                // color: Colors.yellow,
                margin: EdgeInsets.only(top: 5),
                width: MediaQuery.of(context).size.width,
                height: 80,
                child: TextFieldTags(
                    tagsStyler: TagsStyler(
                        showHashtag: true,
                        tagTextStyle: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.normal),
                        tagDecoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        tagCancelIcon:
                            Icon(Icons.cancel, size: 18.0, color: Colors.white),
                        tagPadding: const EdgeInsets.all(8.0)),
                    textFieldStyler: TextFieldStyler(
                        helperText: '', hintText: 'Tag someone'),
                    onTag: (tag) {
                      print('$tag');
                    },
                    onDelete: (tag) {},
                    validator: (tag) {
                      if (tag.length == 0) {
                        return '';
                      }
                      return null;
                    }),
              )
            ],
          ),
        )),
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
