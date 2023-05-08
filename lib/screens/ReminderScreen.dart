import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pet_user_app/models/businessLayer/baseRoute.dart';

class RemindeScreen extends BaseRoute {
  // RemindeScreen() : super();
  RemindeScreen({a, o}) : super(a: a, o: o, r: 'RemindeScreen');
  @override
  _RemindeScreenState createState() => new _RemindeScreenState();
}

class _RemindeScreenState extends BaseRouteState {
  _RemindeScreenState() : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: (){
              Navigator.of(context).pop();
            },
            child: Icon(Icons.arrow_back_ios)),
          title: Text(
            'Reminders',
            style: Theme.of(context).primaryTextTheme.headline1,
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 115,
                  child: Card(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  'Pet Bording with Sara',
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .bodyText1,
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    FontAwesomeIcons.clock,
                                    color: Color(0xFFF0900C),
                                    size: 15,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 2, left: 5, right: 5),
                                    child: Text(
                                      '30 min',
                                      style: Theme.of(context)
                                          .primaryTextTheme
                                          .subtitle2,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10, top: 5),
                          child: Row(
                            children: [
                              Text('9:00 pm',
                                  style: Theme.of(context).textTheme.headline3),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 2, right: 2),
                                child: Icon(
                                  Icons.circle,
                                  size: 10,
                                  color: Colors.black,
                                ),
                              ),
                              Text('Monday',
                                  style: Theme.of(context).textTheme.headline3),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 2, right: 2),
                                child: Icon(
                                  Icons.circle,
                                  size: 10,
                                  color: Colors.black,
                                ),
                              ),
                              Text('15 Feb',
                                  style: Theme.of(context).textTheme.headline3)
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 08),
                          child: Divider(
                            indent: 10,
                            endIndent: 10,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                // height: 30,
                                // color: Colors.red,
                                // width: MediaQuery.of(context).size.width/2,
                                child: Row(
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.close,
                                      color: Color(0xFF8F8F8F),
                                    ),
                                    Text(
                                      'Cancel',
                                      style:
                                          Theme.of(context).textTheme.headline2,
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: 10,
                                height: 30,
                                child: VerticalDivider(
                                    // color: Colors.red,
                                    // width: 2,

                                    ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 3),
                                // height: 30,
                                // color: Colors.yellow,
                                // width: MediaQuery.of(context).size.width/2 -30,
                                child: Row(
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(FontAwesomeIcons.edit),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5, top: 3),
                                      child: Text(
                                        'Edit',
                                        style: Theme.of(context)
                                            .primaryTextTheme
                                            .headline6,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  width: MediaQuery.of(context).size.width,
                  height: 115,
                  child: Card(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  'Pet Bording with Sara',
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .bodyText1,
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    FontAwesomeIcons.clock,
                                    color: Color(0xFFF0900C),
                                    size: 15,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 2, left: 5, right: 5),
                                    child: Text(
                                      '30 min',
                                      style: Theme.of(context)
                                          .primaryTextTheme
                                          .subtitle2,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10, top: 5),
                          child: Row(
                            children: [
                              Text('9:00 pm',
                                  style: Theme.of(context).textTheme.headline3),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 2, right: 2),
                                child: Icon(
                                  Icons.circle,
                                  size: 10,
                                  color: Colors.black,
                                ),
                              ),
                              Text('Monday',
                                  style: Theme.of(context).textTheme.headline3),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 2, right: 2),
                                child: Icon(
                                  Icons.circle,
                                  size: 10,
                                  color: Colors.black,
                                ),
                              ),
                              Text('15 Feb',
                                  style: Theme.of(context).textTheme.headline3)
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 08),
                          child: Divider(
                            indent: 10,
                            endIndent: 10,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                // height: 30,
                                // color: Colors.red,
                                // width: MediaQuery.of(context).size.width/2,
                                child: Row(
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.close,
                                      color: Color(0xFF8F8F8F),
                                    ),
                                    Text(
                                      'Cancel',
                                      style:
                                          Theme.of(context).textTheme.headline2,
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: 10,
                                height: 30,
                                child: VerticalDivider(
                                    // color: Colors.red,
                                    // width: 2,

                                    ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 3),
                                // height: 30,
                                // color: Colors.yellow,
                                // width: MediaQuery.of(context).size.width/2 -30,
                                child: Row(
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(FontAwesomeIcons.edit),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5, top: 3),
                                      child: Text(
                                        'Edit',
                                        style: Theme.of(context)
                                            .primaryTextTheme
                                            .headline6,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                padding: EdgeInsets.all(20),
                    margin: EdgeInsets.only(top: 15),
                    height: 236,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Theme.of(context).primaryColor, width: 2),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(),
                        child: Text('Activety', style: Theme.of(context)
                                            .primaryTextTheme
                                            .headline6,),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 35,
                          color: Color(0xFFDDDFF5),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10,left: 10),
                            child: Text("Fluffy's vaccination",style: Theme.of(context).textTheme.headline2,),
                          ),

                        ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Container(
                                 margin: EdgeInsets.only(top: 15),
                          width: MediaQuery.of(context).size.width - 105,
                          height: 35,
                          color: Color(0xFFF5F5F5),
                          child: Padding(
                                padding: const EdgeInsets.only(top: 10,left: 10),
                                child: Text("Date & Time",style: Theme.of(context).textTheme.headline2,),
                          ),

                        ),
                        Padding(
padding: EdgeInsets.only(top: 5),
                          child: Icon(FontAwesomeIcons.calendar,size: 23,color: Color(0xFF8F8F8F),))


                             ],
                           ),
                                Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Row(
                                 children: [
                                   Container(
                                     margin: EdgeInsets.only(top: 15),
                          width: 40,
                          height: 35,
                          color: Color(0xFFF5F5F5),
                          child: Padding(
                                    padding: const EdgeInsets.only(top: 10,left: 10),
                                    child: Text("30",style: Theme.of(context).textTheme.headline2,),
                          ),

                        ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10,left: 10),
                              child: Text('Minutes periods',style:  Theme.of(context).textTheme.headline2,),
                            ),
                                 ],
                               ),
                    
                        Padding(
padding: EdgeInsets.only(top: 5),
                          child: Icon(FontAwesomeIcons.clock,size: 23,color:Color(0xFFF0900C),))


                             ],
                           ),
                           Padding(padding: EdgeInsets.only(top: 15),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text('Add Reminder',style : Theme.of(context).textTheme.subtitle2),
                             ],
                           ),
                           )


                      ],

                    ),
                    )
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
