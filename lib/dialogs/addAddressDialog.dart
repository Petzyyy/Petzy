import 'package:flutter/material.dart';
import 'package:pet_user_app/models/businessLayer/baseRoute.dart';

class AddAddressDialog extends BaseRoute {
  // AddAddressDialog() : super();
  AddAddressDialog({a, o}) : super(a: a, o: o, r: 'AddAddressDialog');
  @override
  _AddAddressDialogState createState() => new _AddAddressDialogState();
}

class _AddAddressDialogState extends BaseRouteState {
  TextEditingController _cNumber = new TextEditingController();
  int _selectedNumber = 2;
  _AddAddressDialogState() : super();

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
              'Add New Address',
              style: Theme.of(context).primaryTextTheme.headline1,
            ),
        
         
           
          
        
            Padding(
                    padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: TextFormField(
                      maxLines: 3,
                      // keyboardType: TextInputType.numberWithOptions(
                      //     signed: true,),
                       controller: _cNumber,
                      decoration: InputDecoration(
                        hintText: 'Enter New Address',
                        // prefixIcon: Icon(Icons.mail),
                        contentPadding: EdgeInsets.only(top: 5, left: 10),
                      ),
                    ),
                  ),
              
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
