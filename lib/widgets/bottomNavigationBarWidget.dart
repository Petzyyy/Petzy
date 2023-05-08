import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pet_user_app/models/businessLayer/baseRoute.dart';
import 'package:pet_user_app/screens/homeScreen.dart';
import 'package:pet_user_app/screens/ordersScreen.dart';
import 'package:pet_user_app/screens/postListScreen.dart';
import 'package:pet_user_app/screens/profileScreen.dart';

class BottomNavigationWidget extends BaseRoute {
  final int screenId;
  BottomNavigationWidget({a, o, this.screenId})
      : super(a: a, o: o, r: 'BottomNavigationWidget');
  @override
  _BottomNavigationWidgetState createState() =>
      new _BottomNavigationWidgetState(screenId: screenId);
}

class _BottomNavigationWidgetState extends BaseRouteState {
  int screenId = 0;
  int _currentIndex = 0;
  int locationIndex = 0;
  _BottomNavigationWidgetState({this.screenId}) : super();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _currentIndex = screenId != null ? screenId : 0;
    if (screenId != null && screenId == 1) {
      locationIndex = screenId;
      screenId = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return null;
      },
      child: SafeArea(
          child: Scaffold(
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: SizedBox(
          height: 55,
          child: BottomNavigationBar(
            unselectedIconTheme: IconThemeData(color: Color(0xFF727272)),
            selectedIconTheme:
                IconThemeData(color: Theme.of(context).primaryColor),
            selectedItemColor: Theme.of(context).primaryColor,
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            unselectedFontSize: 13,
            selectedFontSize: 13,
            onTap: (index) {
              _currentIndex = index;
              locationIndex = 0;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                label: 'Home',
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 3),
                  child: Icon(
                    Icons.home_filled,
                    size: 20,
                  ),
                ),
                tooltip: 'Home',
              ),
              BottomNavigationBarItem(
                label: 'Orders',
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 3),
                  child: Icon(
                    FontAwesomeIcons.layerGroup,
                    size: 20,
                  ),
                ),
                tooltip: 'Orders',
              ),
              BottomNavigationBarItem(
                label: 'Post',
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 3),
                  child: Icon(
                    FontAwesomeIcons.stickyNote,
                    size: 20,
                  ),
                ),
                tooltip: 'Post',
              ),
              BottomNavigationBarItem(
                label: 'Profile',
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 3),
                  child: Icon(
                    Icons.person_outline_rounded,
                    size: 20,
                  ),
                ),
                tooltip: 'Profile',
              ),
            ],
          ),
        ),
        body: screens().elementAt(_currentIndex),
      )),
    );
  }

  List<Widget> screens() => [
        HomeScreen(a: widget.analytics, o: widget.observer),
        OrdersScreen(
          a: widget.analytics,
          o: widget.observer,
        ),
        PostListScreen(
          a: widget.analytics,
          o: widget.observer,
        ),
        ProfileScreen(a: widget.analytics, o: widget.observer),
      ];
}
