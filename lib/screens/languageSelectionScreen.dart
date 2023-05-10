import 'package:flutter/material.dart';
import 'package:pet_user_app/models/baseRoute.dart';

class LanguageSelectionScreen extends BaseRoute {
  // LanguageSelectionScreen() : super();
  LanguageSelectionScreen({a, o})
      : super(a: a, o: o, r: 'LanguageSelectionScreen');
  @override
  _LanguageSelectionScreenState createState() =>
      new _LanguageSelectionScreenState();
}

class _LanguageSelectionScreenState extends BaseRouteState {
  int selectedvalue = 2;

  _LanguageSelectionScreenState() : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading:
              GestureDetector(onTap: () {}, child: Icon(Icons.arrow_back_ios)),
          title: Text(
            'Select Language',
            style: Theme.of(context).primaryTextTheme.headline1,
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                  //height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Radio(
                                  activeColor: Theme.of(context).primaryColor,
                                  value: 1,
                                  groupValue: selectedvalue,
                                  onChanged: (val) {
                                    setState(() {
                                      selectedvalue = val;
                                    });
                                  }),
                              Text('English',
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .bodyText1)
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                  activeColor: Theme.of(context).primaryColor,
                                  value: 2,
                                  groupValue: selectedvalue,
                                  onChanged: (val) {
                                    setState(() {
                                      selectedvalue = val;
                                    });
                                  }),
                              Text('Hindi',
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .bodyText1)
                            ],
                          )
                        ],
                      )
                    ],
                  )),
            ],
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
