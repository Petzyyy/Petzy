import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pet_user_app/models/businessLayer/baseRoute.dart';

class ChatScreen extends BaseRoute {
  ChatScreen({a, o}) : super(a: a, o: o, r: 'ChatScreen');
  @override
  _ChatScreenState createState() => new _ChatScreenState();
}

class _ChatScreenState extends BaseRouteState {
  _ChatScreenState() : super();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      
      child: WillPopScope(
        onWillPop: () {
          Navigator.of(context).pop();
          return null;
        },
        child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: (){
              Navigator.of(context).pop();
            },
            child: Icon(Icons.arrow_back_ios)),
          title: Text(
            'Sara Seth',
            style: Theme.of(context).primaryTextTheme.headline1,
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
          body: Column(
            children: [
         
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 15, top: 5),
                  child: ListView(
                    reverse: true,
                    physics: BouncingScrollPhysics(),
                    children: _listViewWidget(),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15, bottom: 15, left: 10, right: 10),
                width: MediaQuery.of(context).size.width,
                height: 40,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Type Something',
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 2),
                        child: Icon(
                          FontAwesomeIcons.camera,
                          size: 18,
                        ),
                      ),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.send,
                        size: 21,
                      ),
                      color: Theme.of(context).primaryColor,
                    ),
                    contentPadding: EdgeInsets.only(top: 5),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
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

  List<Widget> _listViewWidget() {
    List<Widget> _widgetList = [];
    try {
      for (int index = 0; index < 4; index++) {
     

        _widgetList.add(Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        decoration: BoxDecoration(color: Theme.of(context).primaryColor,borderRadius: BorderRadius.all(Radius.circular(10))),
                        margin: EdgeInsets.all(7),
                        padding: EdgeInsets.only(left: 12, right: 12, top: 08, bottom: 08),
                        child: Container(
                          width: MediaQuery.of(context).size.width/1.5,
                            margin: EdgeInsets.all(5),
                            child: Text(
                              'Hello Sara,Thank you for your message, We will drop them at 8:45 on 15th ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ))),
                              Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text('5:30pm', style: TextStyle(fontSize: 10)),
            )

                  ],
                ),
              ],
            ),
          
          ],
        ));
           _widgetList.add(Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        
            Row(
              children: [
            
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      decoration: BoxDecoration(color: Color(0xFFDDDFF5), borderRadius: BorderRadius.all(Radius.circular(10))),
                        margin: EdgeInsets.all(7),
                        padding: EdgeInsets.only(left: 12, right: 12, top: 08, bottom: 08),
                        child: Container(
                          width: MediaQuery.of(context).size.width/1.5,
                            margin: EdgeInsets.all(5),
                            child: Text(
                              'Hey, Mellisa looking forword to having Fluffy and Cookie with us!',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ))),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        '11:00 AM',
                        style: TextStyle(fontSize: 10),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ));
      }

      return _widgetList;
    } catch (e) {
      print("Exception - chatScreen.dart - _listViewWidget():" + e.toString());
      _widgetList.add(SizedBox());
      return _widgetList;
    }
  }
}
