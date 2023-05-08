import 'package:flutter/material.dart';
import 'package:pet_user_app/models/businessLayer/baseRoute.dart';

class CommentScreen extends BaseRoute {
  // CommentScreen() : super();
  CommentScreen({a, o}) : super(a: a, o: o, r: 'CommentScreen');
  @override
  _CommentScreenState createState() => new _CommentScreenState();
}

class _CommentScreenState extends BaseRouteState {
  _CommentScreenState() : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Navigator.of(context).pop();
          },
          child: Icon(Icons.arrow_back_ios)),
        title: Text('Comments',style: Theme.of(context).primaryTextTheme.headline1,),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
       
      ),
      body: Padding(padding: EdgeInsets.only(),
      child: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Be the First to talk',style: Theme.of(context).primaryTextTheme.headline1 ,),
            ],
          ),
        ),
      ),
      )
      ,
      bottomNavigationBar:  Container(
                  margin: EdgeInsets.only(top: 15, bottom: 15, left: 10, right: 10),
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: '   Type your Comment',
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
    
    );
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
