import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:pet_user_app/models/businessLayer/baseRoute.dart';
import 'package:pet_user_app/screens/logInScreen1.dart';

class IntroScreen extends BaseRoute {
  IntroScreen({a, o}) : super(a: a, o: o, r: 'IntroScreen');
  @override
  _IntroScreenState createState() => new _IntroScreenState();
}

class _IntroScreenState extends BaseRouteState {
  int selectedPage;
  _IntroScreenState() : super();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return exitAppDialog();
      },
      child: Scaffold(
          body: Stack(children: [
        IntroductionScreen(
          onChange: (index) {
            setState(() {
              selectedPage = index;
            });
          },

          dotsDecorator: DotsDecorator(
            spacing: EdgeInsets.only(bottom: 75),
            activeSize: const Size(15, 06),
            size: const Size(13, 06),
            activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50.0))),
            activeColor: Theme.of(context).primaryColor,
            color: Theme.of(context).primaryColorLight,
          ),
          showDoneButton: false,
          // done: Container(
          //   height: 50,
          //   color: Colors.red,
          //   margin: EdgeInsets.only(right: 45),
          //   child: TextButton(onPressed: () {}, child: Text('hey')),
          // ),
          // onDone: () {},
          showNextButton: false,
          showSkipButton: false,

          pages: [
            PageViewModel(
                decoration: PageDecoration(titleTextStyle: Theme.of(context).primaryTextTheme.headline5, descriptionPadding: EdgeInsets.only(left: 28, right: 28), titlePadding: EdgeInsets.only(top: 15, bottom: 10, right: 35, left: 35), contentMargin: EdgeInsets.only(bottom: 35), imageFlex: 2, bodyTextStyle: Theme.of(context).primaryTextTheme.caption),
                image: Container(
                  // padding: EdgeInsets.all(50),
                  // height: 300,
                  // color: Colors.red,
                  // margin: EdgeInsets.only(top: 50),
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    'assets/introScreen_1.png',
                    fit: BoxFit.cover,
                  ),
                ),
                title: 'Pet Boarding',
                body: 'Hire verified pet lovers to watch your furry friends when you are away'),
            PageViewModel(
                decoration: PageDecoration(titleTextStyle: Theme.of(context).primaryTextTheme.headline5, descriptionPadding: EdgeInsets.only(left: 28, right: 28), titlePadding: EdgeInsets.only(top: 15, bottom: 10, right: 35, left: 35), contentMargin: EdgeInsets.only(bottom: 35), imageFlex: 2, bodyTextStyle: Theme.of(context).primaryTextTheme.caption),
                image: Container(
                  // padding: EdgeInsets.all(50),
                  // height: 300,
                  // color: Colors.red,
                  // margin: EdgeInsets.only(top: 50),
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    'assets/intro_2.png',
                    fit: BoxFit.cover,
                  ),
                ),
                title: 'Dog Walking',
                body: 'Hire verified pet lovers to watch your furry friends when you are away'),
            PageViewModel(
                decoration: PageDecoration(titleTextStyle: Theme.of(context).primaryTextTheme.headline5, descriptionPadding: EdgeInsets.only(left: 28, right: 28), titlePadding: EdgeInsets.only(top: 15, bottom: 10, right: 35, left: 35), contentMargin: EdgeInsets.only(bottom: 35), imageFlex: 2, bodyTextStyle: Theme.of(context).primaryTextTheme.caption),
                image: Container(
                  // padding: EdgeInsets.all(50),
                  // height: 300,
                  // color: Colors.red,
                  // margin: EdgeInsets.only(top: 50),
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    'assets/intro3.png',
                    fit: BoxFit.cover,
                  ),
                ),
                title: 'Veterinary',
                body: 'Hire verified pet lovers to watch your furry friends when you are away'),
            PageViewModel(
                decoration: PageDecoration(titleTextStyle: Theme.of(context).primaryTextTheme.headline5, descriptionPadding: EdgeInsets.only(left: 28, right: 28), titlePadding: EdgeInsets.only(top: 15, bottom: 15, right: 35, left: 35), contentMargin: EdgeInsets.only(bottom: 35), imageFlex: 2, bodyTextStyle: Theme.of(context).primaryTextTheme.caption),
                image: Container(
                  // padding: EdgeInsets.all(50),
                  // height: 300,
                  // color: Colors.red,
                  // margin: EdgeInsets.only(top: 50),
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    'assets/introScreen_1.png',
                    fit: BoxFit.cover,
                  ),
                ),
                title: 'Store',
                body: 'Hire verified pet lovers to watch your furry friends when you are away'),
          ],
        ),
        selectedPage == 0 || selectedPage == 1 || selectedPage == 2
            ? Positioned(
                right: 15,
                top: 50,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => LogInScreen1(
                              a: widget.analytics,
                              o: widget.observer,
                            )));
                  },
                  child: Text(
                    'Skip',
                    style: Theme.of(context).primaryTextTheme.caption,
                  ),
                ))
            : SizedBox(),
        selectedPage == 3
            ? Positioned(
                bottom: 0,
                child: Container(
                    // color: Colors.red,
                    height: 45,
                    padding: EdgeInsets.only(left: 20, right: 20),
                    width: MediaQuery.of(context).size.width,
                    child: TextButton(
                        // style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor)),
                        onPressed: () {
                          // print('Hello');
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LogInScreen1(
                                    a: widget.analytics,
                                    o: widget.observer,
                                  )));
                        },
                        child: Text(
                          "Let's Start!",
                        ))),
              )
            : SizedBox()
      ])),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }
}
