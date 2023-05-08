import 'package:flutter/material.dart';
import 'package:pet_user_app/models/businessLayer/baseRoute.dart';

class PostScreen extends BaseRoute {
  // PostScreen() : super();
  PostScreen({a, o}) : super(a: a, o: o, r: 'PostScreen');
  @override
  _PostScreenState createState() => new _PostScreenState();
}

class _PostScreenState extends BaseRouteState {
  _PostScreenState() : super();

  @override
Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text('Post Screen will be shown here'),
        ),
      )
    
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
