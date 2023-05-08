import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pet_user_app/dialogs/changeEmailDialog.dart';
import 'package:pet_user_app/dialogs/changeNumberDialog.dart';
import 'package:pet_user_app/models/businessLayer/baseRoute.dart';
import 'package:pet_user_app/screens/addressSelectScreen.dart';
import 'package:pet_user_app/widgets/bottomNavigationBarWidget.dart';

class ChekoutScreen extends BaseRoute {
  ChekoutScreen({a, o}) : super(a: a, o: o, r: 'ChekoutScreen');
  @override
  _ChekoutScreenState createState() => new _ChekoutScreenState();
}

class _ChekoutScreenState extends BaseRouteState {
  String valueForNumber = '9726458531';
  String valueForEmail = 'tanvik@gmail.com';
  bool thirdText = false;
  bool _payWithCash = false;
  bool done2 = false;
  bool secondText = false;
  bool done1 = false;
  bool _isCheckedForDeliveryAddress = false;
  bool _isicicichecked = false;
  bool _ishdfcChecked = false;
  GlobalKey<ScaffoldState> _scaffoldKey;
  bool _isCouponDataLoaded = false;
  String selectedCouponCode;

  String selectedTimeSlot = '';
  String barberName;
  int selectedStaffId = 0;
  bool _isDataLoaded = false;
  int _currentIndex = 0;
  int selectedCoupon;
  PageController _pageController;
  ScrollController _scrollController;
  TabController _tabController;
  DateTime selectedDate;
  int _initialIndex = 0;
  bool step1Done = false;
  bool step2Done = false;
  bool step3Done = false;
  bool step4Done = false;
  TextEditingController textController1 = TextEditingController();
  TextEditingController textController2 = TextEditingController();

  _ChekoutScreenState() : super();
  @override
  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    _tabController = new TabController(length: 2, vsync: this);
    _scrollController =
        new ScrollController(initialScrollOffset: _currentIndex.toDouble());
    _pageController = new PageController(initialPage: _currentIndex);
    // _datePickerController = new DatePickerController();
    _pageController.addListener(() {});
    // _init();
  }

  int _changeval = 7;
  @override
  Widget build(BuildContext context) {
    List<String> _appointmentList = [
      'Address',
      'Payment',
      'Confirm',
    ];

    return WillPopScope(
        onWillPop: () {
          Navigator.of(context).pop();
          return null;
        },
        child: Scaffold(
            appBar: AppBar(
              leading: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(Icons.arrow_back_ios)),
              title: Text(
                'Checkout',
                style: Theme.of(context).primaryTextTheme.headline1,
              ),
              centerTitle: true,
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            key: _scaffoldKey,
            //  key: _formKey,

            bottomNavigationBar: _currentIndex == 0
                ? Container(
                    // color: Colors.red,
                    height: 45,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    width: MediaQuery.of(context).size.width,
                    child: TextButton(
                        onPressed: () {
                          _pageController.animateToPage(_currentIndex + 1,
                              duration: Duration(seconds: 1),
                              curve: Curves.fastOutSlowIn);
                          done1 = true;
                          secondText = true;
                          setState(() {});
                        },
                        child: Text(
                          "Proceed to Payment",
                        )))
                : _currentIndex == 1
                    ? Container(
                        // color: Colors.red,
                        height: 45,
                        padding: EdgeInsets.only(left: 10, right: 10),
                        width: MediaQuery.of(context).size.width,
                        child: TextButton(
                            onPressed: () {
                              _pageController.animateToPage(_currentIndex + 1,
                                  duration: Duration(seconds: 1),
                                  curve: Curves.fastOutSlowIn);
                              done2 = true;
                              thirdText = true;
                              setState(() {});
                            },
                            child: Text(
                              "Pay Rs.6,400",
                            )))
                    : Container(
                        height: 110,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(FontAwesomeIcons.clock),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 5, top: 3),
                                  child: Text(
                                    'Add a Reminder',
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .headline4,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(),
                              child: Text(
                                  "We will remind you 30 min in advance",
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .subtitle2),
                            ),
                            Container(
                                // color: Colors.red,
                                height: 45,
                                padding: EdgeInsets.only(left: 15, right: 15),
                                width: MediaQuery.of(context).size.width,
                                child: TextButton(
                                    // style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor)),
                                    onPressed: () {
                                      print('Hello');
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  BottomNavigationWidget(
                                                    a: widget.analytics,
                                                    o: widget.observer,
                                                  )));
                                    },
                                    child: Text(
                                      "Go to Home",
                                    ))),
                          ],
                        ),
                      ),
            body: Column(
              children: [
                Container(
                  // color: Colors.yellow,
                  width: MediaQuery.of(context).size.width,
                  height: 20,
                  margin:
                      EdgeInsets.only(left: 10, right: 10, bottom: 0, top: 10),
                  child: Center(
                    child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        controller: _scrollController,
                        itemCount: _appointmentList.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int i) {
                          return Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    child: GestureDetector(
                                  onTap: () {
                                    // _isCheckedForDeliveryAddress = !_isCheckedForDeliveryAddress;
                                    // setState(() { });
                                  },
                                  child: Container(
                                      padding: EdgeInsets.all(2),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 1,
                                              color: i == 0 ||
                                                      (i == 1 && done1) ||
                                                      (i == 2 && done2)
                                                  ? Theme.of(context)
                                                      .primaryColor
                                                  : Color(0xFF8F8F8F)),
                                          shape: BoxShape.circle,
                                          color: (i == 0 && done1) ||
                                                  (i == 1 && done2)
                                              ? Theme.of(context).primaryColor
                                              : Colors.transparent),
                                      height: 18,
                                      width: 17,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 1,
                                                color: i == 0 ||
                                                        (i == 1 && done1) ||
                                                        (i == 2 && done2)
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Color(0xFF8F8F8F)),
                                            shape: BoxShape.circle,
                                            color: i == 0 ||
                                                    (i == 1 && done1) ||
                                                    (i == 2 && done2)
                                                ? Theme.of(context).primaryColor
                                                : Colors.transparent),
                                        height: 5,
                                        width: 5,
                                      )),
                                )),
                                i == 2
                                    ? SizedBox()
                                    : Container(
                                        height: 2,
                                        // color: (i == _currentIndex - 1) || (i == 1 - 1 && done1) ? Theme.of(context).primaryColor : Colors.black,
                                        width:
                                            MediaQuery.of(context).size.width /
                                                2.8,
                                        margin: EdgeInsets.all(0),
                                        child: DottedLine(
                                          direction: Axis.horizontal,
                                          lineLength: double.infinity,
                                          lineThickness: 1.5,
                                          dashLength: 2.0,
                                          dashColor: (i == _currentIndex - 1) ||
                                                  (i == 1 - 1 && done1)
                                              ? Theme.of(context).primaryColor
                                              : Color(0xFF8F8F8F),
                                          dashRadius: 0.0,
                                          dashGapLength: 1.0,
                                          dashGapColor: Colors.transparent,
                                          dashGapRadius: 0.0,
                                        ),
                                      ),
                              ]);
                        }),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 20,
                  // color: Colors.yellow,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        // color: Colors.blue,
                        width: 60,
                        height: 30,
                        child: Text(
                          'Address',
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                        ),
                      ),
                      Container(
                        // color: Colors.blue,
                        width: 60,
                        height: 30,
                        child: Text(
                          'Payment',
                          style: TextStyle(
                              color: secondText
                                  ? Theme.of(context).primaryColor
                                  : Color(0xFF8F8F8F)),
                        ),
                      ),
                      Container(
                        // color: Colors.blue,
                        width: 60,
                        height: 30,
                        child: Text(
                          'Confirm',
                          style: TextStyle(
                              color: thirdText
                                  ? Theme.of(context).primaryColor
                                  : Color(0xFF8F8F8F)),
                        ),
                      ),

                      // Container(
                      //   // color: Colors.blue,
                      //   width: MediaQuery.of(context).size.width-20,
                      //   height: 30,
                      //   margin: EdgeInsets.only(bottom: 10),
                      //   padding: EdgeInsets.all(0),
                      //   child: ListView.builder(
                      //     shrinkWrap: true,
                      //     scrollDirection: Axis.horizontal,
                      //     itemCount: 3,
                      //     itemBuilder: (BuildContext context, int j) {
                      //       return Container(
                      //         color: Colors.red,
                      //         // alignment: Alignment.center,
                      //          width: (MediaQuery.of(context).size.width) -20,
                      //         child: Padding(
                      //           padding: EdgeInsets.only(),
                      //           // padding: _currentIndex ==0 ?  EdgeInsets.only(right: 45) : _currentIndex == 1 || _currentIndex == 2 ? EdgeInsets.only(right: 15) : EdgeInsets.only()  ,
                      //           child: Text('${_appointmentList[j]}', style: TextStyle(fontSize: j == _currentIndex ? 10.5 : 9.5, color: j == _currentIndex ? Color(0xFF171D2C) : Color(0xFF898A8D), fontWeight: j == _currentIndex ? FontWeight.w600 : FontWeight.w400)),
                      //         ),
                      //       );
                      //     },
                      //   ),
                      // ),
                    ],
                  ),
                ),
                Expanded(
                  child: PageView(
                    physics: NeverScrollableScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (index) {
                      _currentIndex = index;
                      double currentIndex = _currentIndex.toDouble();
                      _scrollController.animateTo(currentIndex,
                          duration: Duration(seconds: 1),
                          curve: Curves.fastOutSlowIn);
                      setState(() {});
                    },
                    children: [address(), payment(), confirm()],
                  ),
                ),
              ],
            )
            //     : Center(
            //         child: Text(
            //           AppLocalizations.of(context).txt_nothing_is_yet_to_see_here,
            //           style: Theme.of(context).primaryTextTheme.subtitle1,
            //         ),
            //       )
            // : _shimmer())),
            ));
  }

  Widget address() {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Boarding Address',
                  style: Theme.of(context).primaryTextTheme.bodyText1,
                ),
                Row(
                  children: [
                    Icon(FontAwesomeIcons.paperPlane),
                    Padding(
                      padding: const EdgeInsets.only(left: 05),
                      child: Text(
                        'Get Directions',
                        style: Theme.of(context).primaryTextTheme.headline6,
                      ),
                    ),
                  ],
                )
              ],
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
                  padding:
                      EdgeInsets.only(top: 15, bottom: 15, left: 15, right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Alpa socie,St. francis Crossroad',
                        style: Theme.of(context).primaryTextTheme.headline6,
                      ),
                      Text(
                        'Via Parle West, Mumbai',
                        style: Theme.of(context).primaryTextTheme.headline6,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                          'Phone no. +91 25645 10256',
                          style: Theme.of(context).primaryTextTheme.headline6,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Delivery Address',
                    style: Theme.of(context).primaryTextTheme.bodyText1,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => AddressSelectScreen(
                                a: widget.analytics,
                                o: widget.observer,
                              )));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 05),
                      child: Text(
                        'Change',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),
                  )
                ],
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
                            'House No.3 14th Crossroad Khar West, Mumbai',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: Theme.of(context).primaryTextTheme.headline6,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            _isCheckedForDeliveryAddress =
                                !_isCheckedForDeliveryAddress;
                            setState(() {});
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1,
                                    color: Theme.of(context).primaryColor),
                                shape: BoxShape.circle,
                                color: _isCheckedForDeliveryAddress
                                    ? Theme.of(context).primaryColor
                                    : Colors.transparent),
                            height: 18,
                            width: 17,
                            child: Center(
                              child: Icon(
                                Icons.check,
                                color: _isCheckedForDeliveryAddress
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
              padding: EdgeInsets.only(top: 5),
              child: Text(
                'Standart delivery within 2 days',
                style: Theme.of(context).primaryTextTheme.headline6,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Contact details',
                    style: Theme.of(context).primaryTextTheme.bodyText1,
                  ),
                ],
              ),
            ),
            Container(
              // color: Colors.red,
              margin: EdgeInsets.only(top: 10),
              height: 100,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(),
              child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: index == 0
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.phone,
                                      color: Color(0xFF8F8F8F),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 25),
                                      child: Text(
                                        '$valueForNumber',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline5,
                                      ),
                                    )
                                  ],
                                ),
                                GestureDetector(
                                  onTap: () {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) =>
                                            ChangeNumberDialog(
                                              a: widget.analytics,
                                              o: widget.observer,
                                            )).then((value) {
                                      if (value != null) {
                                        valueForNumber = value;
                                        setState(() {});
                                      }
                                    });
                                  },
                                  child: Text(
                                    'Change',
                                    style:
                                        Theme.of(context).textTheme.headline4,
                                  ),
                                )
                              ],
                            )
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.mail,
                                      color: Color(0xFF8F8F8F),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 25),
                                      child: Text(
                                        '$valueForEmail',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline5,
                                      ),
                                    )
                                  ],
                                ),
                                GestureDetector(
                                  onTap: () {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) =>
                                            ChangeEmailDialog(
                                              a: widget.analytics,
                                              o: widget.observer,
                                            )).then((value) {
                                      if (value != null) {
                                        valueForEmail = value;
                                        setState(() {});
                                      }
                                    });
                                  },
                                  child: Text(
                                    'Change',
                                    style:
                                        Theme.of(context).textTheme.headline4,
                                  ),
                                )
                              ],
                            ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }

  Widget confirm() {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height / 5),
              child: CircleAvatar(
                backgroundColor: Color(0xFFF0900C),
                radius: 45,
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                'Payment Complete',
                style: Theme.of(context).primaryTextTheme.headline1,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 25),
              child: Text('Pet Boarding with Sara'),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Text('Kenneal kitchen Chicken and Tune Gourment Loaf'),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Text('ORDER ID:W6284'),
            )
          ],
        ),
      ),
    );
  }

  Widget payment() {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Get 10% cash back on all prepaid orders',
              style: Theme.of(context).textTheme.headline4,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Wallet Balance Rs.400',
                      style: Theme.of(context).primaryTextTheme.bodyText1),
                  GestureDetector(
                    onTap: () {
                      _isCheckedForDeliveryAddress =
                          !_isCheckedForDeliveryAddress;
                      setState(() {});
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 15),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1, color: Theme.of(context).primaryColor),
                          shape: BoxShape.circle,
                          color: _isCheckedForDeliveryAddress
                              ? Theme.of(context).primaryColor
                              : Colors.transparent),
                      height: 18,
                      width: 17,
                      child: Center(
                        child: Icon(
                          Icons.check,
                          color: _isCheckedForDeliveryAddress
                              ? Colors.white
                              : Colors.transparent,
                          size: 12,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(),
              child: Text(
                  'wallet balance will be automatically deducated from total amount',
                  style: Theme.of(context).primaryTextTheme.subtitle2),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Credit/Debit Card',
                    style: Theme.of(context).primaryTextTheme.bodyText1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 05),
                    child: Text(
                      '+Add New Card',
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 170,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 10),
              child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      elevation: 2,
                      child: ListTile(
                        minLeadingWidth: 60,
                        leading: Container(
                            margin: EdgeInsets.only(right: 5),
                            padding: EdgeInsets.only(right: 10),
                            // color: Colors.red,
                            height: 55,
                            width: 55,
                            child: Image.asset(index == 1
                                ? 'assets/visaimage.png'
                                : 'assets/mastercardlogo.png')),
                        title: Text(
                            index == 0
                                ? 'ICICI Bank Debit Card'
                                : 'HDFC Bank Credit Card',
                            style: Theme.of(context).textTheme.headline5),
                        subtitle: Text('**** **** **** 4584',
                            style: Theme.of(context).textTheme.headline5),
                        trailing: GestureDetector(
                          onTap: () {
                            // index == 0?
                            // _isicicichecked = !_isicicichecked : ;
                            // setState(() { });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1,
                                    color: Theme.of(context).primaryColor),
                                shape: BoxShape.circle,
                                color: Colors.transparent),
                            height: 18,
                            width: 17,
                            child: Center(
                              child: Icon(
                                Icons.check,
                                color: Colors.transparent,
                                size: 12,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Net Banking',
                    style: Theme.of(context).primaryTextTheme.bodyText1,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Container(
                margin: EdgeInsets.only(top: 15),
                height: 115,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (context) => PetBoardingScreen(
                        //           a: widget.analytics,
                        //           o: widget.observer,
                        //         )));
                      },
                      child: Container(
                        //  color: Colors.red,
                        width: 90,
                        height: 82,
                        child: Column(
                          children: [
                            Card(
                              elevation: 2,
                              child: Container(
                                padding: EdgeInsets.all(10),
                                height: 80,
                                width: 90,
                                child: Image.asset(
                                  'assets/sbilogo.png',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 3),
                              child: Text(
                                'SBI',
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .subtitle2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (context) => PetBoardingScreen(
                        //           a: widget.analytics,
                        //           o: widget.observer,
                        //         )));
                      },
                      child: Container(
                        //  color: Colors.red,
                        width: 90,
                        height: 82,
                        child: Column(
                          children: [
                            Card(
                              elevation: 2,
                              child: Container(
                                padding: EdgeInsets.all(15),
                                height: 80,
                                width: 90,
                                child: Image.asset(
                                  'assets/hdfclogo.png',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 3),
                              child: Text(
                                'HDFC',
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .subtitle2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (context) => PetBoardingScreen(
                        //           a: widget.analytics,
                        //           o: widget.observer,
                        //         )));
                      },
                      child: Container(
                        //  color: Colors.red,
                        width: 90,
                        height: 82,
                        child: Column(
                          children: [
                            Card(
                              elevation: 2,
                              child: Container(
                                padding: EdgeInsets.all(10),
                                height: 80,
                                width: 90,
                                child: Image.asset(
                                  'assets/icicilogo.png',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 3),
                              child: Text(
                                'ICICI',
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .subtitle2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (context) => PetBoardingScreen(
                        //           a: widget.analytics,
                        //           o: widget.observer,
                        //         )));
                      },
                      child: Container(
                        //  color: Colors.red,
                        width: 90,
                        height: 82,
                        child: Column(
                          children: [
                            Card(
                              elevation: 2,
                              child: Container(
                                  padding: EdgeInsets.all(10),
                                  height: 80,
                                  width: 90,
                                  child: Icon(
                                    FontAwesomeIcons.piggyBank,
                                    color: Color(0xFF8F8F8F),
                                    size: 35,
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 3),
                              child: Text(
                                'Other Banks',
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .subtitle2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Wallet/UPI',
                    style: Theme.of(context).primaryTextTheme.bodyText1,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Container(
                margin: EdgeInsets.only(top: 10),
                height: 115,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (context) => PetBoardingScreen(
                        //           a: widget.analytics,
                        //           o: widget.observer,
                        //         )));
                      },
                      child: Container(
                        //  color: Colors.red,
                        width: 90,
                        height: 82,
                        child: Column(
                          children: [
                            Card(
                              elevation: 2,
                              child: Container(
                                padding: EdgeInsets.all(15),
                                height: 80,
                                width: 90,
                                child: Image.asset(
                                  'assets/gpayimage.png',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 3),
                              child: Text(
                                'Google Pay',
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .subtitle2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (context) => PetBoardingScreen(
                        //           a: widget.analytics,
                        //           o: widget.observer,
                        //         )));
                      },
                      child: Container(
                        //  color: Colors.red,
                        width: 90,
                        height: 82,
                        child: Column(
                          children: [
                            Card(
                              elevation: 2,
                              child: Container(
                                padding: EdgeInsets.all(0),
                                height: 80,
                                width: 90,
                                child: Image.asset(
                                  'assets/applepayimage.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 3),
                              child: Text(
                                'Apple Pay',
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .subtitle2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (context) => PetBoardingScreen(
                        //           a: widget.analytics,
                        //           o: widget.observer,
                        //         )));
                      },
                      child: Container(
                        //  color: Colors.red,
                        width: 90,
                        height: 82,
                        child: Column(
                          children: [
                            Card(
                              elevation: 2,
                              child: Container(
                                padding: EdgeInsets.all(10),
                                height: 80,
                                width: 90,
                                child: Image.asset(
                                  'assets/phonepayimage.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 3),
                              child: Text(
                                'Phone Pay',
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .subtitle2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (context) => PetBoardingScreen(
                        //           a: widget.analytics,
                        //           o: widget.observer,
                        //         )));
                      },
                      child: Container(
                        //  color: Colors.red,
                        width: 90,
                        height: 82,
                        child: Column(
                          children: [
                            Card(
                              elevation: 2,
                              child: Container(
                                  padding: EdgeInsets.all(10),
                                  height: 80,
                                  width: 90,
                                  child: Center(
                                      child: Text('Others',
                                          style: Theme.of(context)
                                              .primaryTextTheme
                                              .subtitle2))),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Pay with Cash',
                    style: Theme.of(context).primaryTextTheme.bodyText1,
                  ),
                  GestureDetector(
                    onTap: () {
                      _payWithCash = !_payWithCash;
                      setState(() {});
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1, color: Theme.of(context).primaryColor),
                          shape: BoxShape.circle,
                          color: _payWithCash
                              ? Theme.of(context).primaryColor
                              : Colors.transparent),
                      height: 18,
                      width: 17,
                      child: Center(
                        child: Icon(
                          Icons.check,
                          color:
                              _payWithCash ? Colors.white : Colors.transparent,
                          size: 12,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // _init() async {
  //   try {
  //     // await _bookAppointment();
  //     _isDataLoaded = true;
  //     setState(() {});
  //   } catch (e) {
  //     print("Exception - ChekoutScreen.dart - _init():" + e.toString());
  //   }
  // }

}
