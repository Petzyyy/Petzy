import 'package:flutter/material.dart';
import 'package:pet_user_app/models/businessLayer/baseRoute.dart';

class ChangeEmailDialog extends BaseRoute {
  // ChangeEmailDialog() : super();
  ChangeEmailDialog({a, o}) : super(a: a, o: o, r: 'ChangeEmailDialog');
  @override
  _ChangeEmailDialogState createState() => new _ChangeEmailDialogState();
}

class _ChangeEmailDialogState extends BaseRouteState {
  TextEditingController _cEmail = new TextEditingController();
  int _selectedEmail = 2;
  _ChangeEmailDialogState() : super();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.only(left: 0, right: 0),
      content: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Select Email',
              style: Theme.of(context).primaryTextTheme.displayLarge,
            ),
            Row(
              children: [
                Radio(
                    value: 1,
                    groupValue: _selectedEmail,
                    onChanged: (val) {
                      setState(() {
                        _selectedEmail = val;
                      });
                    }),
                Text('tanvik@gmail.com')
              ],
            ),
            Padding(
                padding: EdgeInsets.only(),
                child: Row(
                  children: [
                    Radio(
                        value: 2,
                        groupValue: _selectedEmail,
                        onChanged: (val) {
                          setState(() {
                            _selectedEmail = val;
                          });
                        }),
                    Text('demo@gmail.com')
                  ],
                )),
            Padding(
                padding: EdgeInsets.only(),
                child: Row(
                  children: [
                    Radio(
                        value: 3,
                        groupValue: _selectedEmail,
                        onChanged: (val) {
                          setState(() {
                            _selectedEmail = val;
                          });
                        }),
                    Text('Add New Email')
                  ],
                )),
            _selectedEmail == 3
                ? Padding(
                    padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: TextFormField(
                      keyboardType:TextInputType.emailAddress,
                       controller: _cEmail,
                      decoration: InputDecoration(
                        hintText: 'Enter New Number',
                        // prefixIcon: Icon(Icons.mail),
                        contentPadding: EdgeInsets.only(top: 5, left: 10),
                      ),
                    ),
                  )
                : SizedBox(),
            Padding(
              padding: EdgeInsets.only(top: 70),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).primaryColor),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.only(top: 15, bottom: 15))),
                  onPressed: () {
                    var val;
                    if (_selectedEmail == 1) {
                      setState(() {
                        val = 'tanvik@gmail.com';
                      });
                    }
                    else if(_selectedEmail == 2)
                    {
                         setState(() {
                        val = 'demo@gmail.com';
                      });

                    }
                    else
                    {
                      setState(() {
                        val = _cEmail.text;
                      });
                    }

                    Navigator.of(context).pop('$val');
                  },
                  child: Text('Ok'),
                ),
              ),
            )
          ],
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
