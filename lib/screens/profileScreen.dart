import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pet_user_app/models/api_utils.dart';
import 'package:pet_user_app/models/businessLayer/baseRoute.dart';
import 'package:pet_user_app/models/entites/pets.dart';
import 'package:pet_user_app/screens/ReminderScreen.dart';
import 'package:pet_user_app/screens/myWalletScreen.dart';
import 'package:pet_user_app/screens/notificationScreen.dart';
import 'package:pet_user_app/screens/petProfileScreen.dart';
import 'package:pet_user_app/screens/settingScreen.dart';
import 'package:pet_user_app/screens/wishListScreen.dart';
import 'package:pet_user_app/screens/addPetScreen.dart';

class ProfileScreen extends BaseRoute {
  // ProfileScreen() : super();
  ProfileScreen({a, o}) : super(a: a, o: o, r: 'ProfileScreen');
  @override
  _ProfileScreenState createState() => new _ProfileScreenState();
}

class _ProfileScreenState extends BaseRouteState {
  _ProfileScreenState() : super();
  List<Pets> pets = [];
  ApiUtils _apiUtils = ApiUtils();
  @override
  void initState() {
    super.initState();
    _apiUtils.getAllPets().then((value) => setState(() => pets = value));
    print(pets);
    ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.add,
            size: 0,
          ),
          title: Text(
            'Profile',
            style: Theme.of(context).primaryTextTheme.headline1,
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SettingScreen(
                            a: widget.analytics,
                            o: widget.observer,
                          )));
                },
                child: Icon(
                  Icons.settings,
                  color: Color(0xFF34385A),
                ),
              ),
            )
          ],
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 0),
                  // color: Colors.red,
                  height: 180,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 28),
                        child: CircleAvatar(
                            radius: 80,
                            backgroundImage:
                                AssetImage('assets/catimage2.png')),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'majdiii',
                              style:
                                  Theme.of(context).primaryTextTheme.headline5,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 5, bottom: 10),
                              child: Text(
                                'tunis',
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .subtitle2,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(6),
                              width: 85,
                              height: 30,
                              child: Text(
                                'Edit Profile',
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor),
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1,
                                      color: Theme.of(context).primaryColor),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                            )
                          ],
                        ),
                      )
                    ],
                  ),

                  // padding: const EdgeInsets.
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => RemindeScreen(
                              a: widget.analytics,
                              o: widget.observer,
                            )));
                  },
                  child: Container(
                      // color: Colors.red,
                      margin: EdgeInsets.only(bottom: 10, top: 35),
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(),
                                child: Icon(
                                  FontAwesomeIcons.clock,
                                  color: Theme.of(context).primaryColor,
                                  size: 18,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Text(
                                  'Reminder',
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .bodyText1,
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(),
                            child: Icon(Icons.arrow_forward_ios_outlined,
                                size: 18, color: Color(0xFF8F8F8F)),
                          )
                        ],
                      )),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => NotificationScreen(
                              a: widget.analytics,
                              o: widget.observer,
                            )));
                  },
                  child: Container(
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      // color: Colors.red,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(),
                                child: Icon(
                                  Icons.notifications_none_outlined,
                                  size: 18,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Text(
                                  'Notifications',
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .bodyText1,
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(),
                            child: Icon(Icons.arrow_forward_ios_outlined,
                                size: 18, color: Color(0xFF8F8F8F)),
                          )
                        ],
                      )),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MyWalletScreen(
                              a: widget.analytics,
                              o: widget.observer,
                            )));
                  },
                  child: Container(
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      // color: Colors.red,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(),
                                child: Icon(
                                  FontAwesomeIcons.wallet,
                                  size: 18,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Text(
                                  'My Wallet',
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .bodyText1,
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(),
                            child: Icon(Icons.arrow_forward_ios_outlined,
                                size: 18, color: Color(0xFF8F8F8F)),
                          )
                        ],
                      )),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => WishListScreen(
                              a: widget.analytics,
                              o: widget.observer,
                            )));
                  },
                  child: Container(
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      // color: Colors.red,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(),
                                child: Icon(
                                  FontAwesomeIcons.heart,
                                  size: 18,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Text(
                                  'Wishlist',
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .bodyText1,
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(),
                            child: Icon(Icons.arrow_forward_ios_outlined,
                                size: 18, color: Color(0xFF8F8F8F)),
                          )
                        ],
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'My Pets',
                        style: Theme.of(context).primaryTextTheme.bodyText1,
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => AddPetScreen(
                                      a: widget.analytics,
                                      o: widget.observer,
                                    )));
                          },
                          child: Text(
                            '+ Add Pet',
                            style: Theme.of(context).textTheme.subtitle2,
                          ))
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 132,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: pets.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => PetProfileScreen(
                                      a: widget.analytics,
                                      o: widget.observer,
                                    )));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 10, left: 10, right: 10),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/home3.png'),
                                  radius: 45,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Text(pets[index].name),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
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
}
