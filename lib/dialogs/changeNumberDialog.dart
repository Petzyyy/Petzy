import 'package:flutter/material.dart';
import 'package:pet_user_app/models/businessLayer/baseRoute.dart';

class ChangeNumberDialog extends BaseRoute {
  // ChangeNumberDialog() : super();
  ChangeNumberDialog({a, o}) : super(a: a, o: o, r: 'ChangeNumberDialog');
  @override
  _ChangeNumberDialogState createState() => new _ChangeNumberDialogState();
}

class _ChangeNumberDialogState extends BaseRouteState {
  TextEditingController _cNumber = new TextEditingController();
  int _selectedNumber = 2;
  _ChangeNumberDialogState() : super();

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
              'Select Phone Number',
              style: Theme.of(context).primaryTextTheme.displayLarge,
            ),
            Row(
              children: [
                Radio(
                    value: 1,
                    groupValue: _selectedNumber,
                    onChanged: (val) {
                      setState(() {
                        _selectedNumber = val;
                      });
                    }),
                Text('9913125780')
              ],
            ),
            Padding(
                padding: EdgeInsets.only(),
                child: Row(
                  children: [
                    Radio(
                        value: 2,
                        groupValue: _selectedNumber,
                        onChanged: (val) {
                          setState(() {
                            _selectedNumber = val;
                          });
                        }),
                    Text('9726458531')
                  ],
                )),
            Padding(
                padding: EdgeInsets.only(),
                child: Row(
                  children: [
                    Radio(
                        value: 3,
                        groupValue: _selectedNumber,
                        onChanged: (val) {
                          setState(() {
                            _selectedNumber = val;
                          });
                        }),
                    Text('Add New Number')
                  ],
                )),
            _selectedNumber == 3
                ? Padding(
                    padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: TextFormField(
                      keyboardType: TextInputType.numberWithOptions(
                          signed: true, decimal: true),
                       controller: _cNumber,
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
                    if (_selectedNumber == 1) {
                      setState(() {
                        val = '9913125780';
                      });
                    }
                    else if(_selectedNumber == 2)
                    {
                         setState(() {
                        val = '9726458531';
                      });

                    }
                    else
                    {
                      setState(() {
                        val = _cNumber.text;
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
