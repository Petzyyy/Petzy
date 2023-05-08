import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pet_user_app/models/businessLayer/baseRoute.dart';

class PetProfileScreen extends BaseRoute {
  // PetProfileScreen() : super();
  PetProfileScreen({a, o}) : super(a: a, o: o, r: 'PetProfileScreen');
  @override
  _PetProfileScreenState createState() => new _PetProfileScreenState();
}

class _PetProfileScreenState extends BaseRouteState {
    int selectedValue = 0;
  _PetProfileScreenState() : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Navigator.of(context).pop();
          },
          child: Icon(Icons.arrow_back_ios)),
        title: Text('pet Profile',style: Theme.of(context).primaryTextTheme.headline1,),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
       
      ),
      body: Padding(padding: EdgeInsets.only(left: 10,right: 10),
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
backgroundImage: AssetImage('assets/catimage.png')
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 25),
                child: Column(
mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text('Cookie ',style: Theme.of(context).primaryTextTheme.headline5,),
                        Icon(FontAwesomeIcons.venus,)
                    ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5,bottom: 10),
                      child: Text('3 years 3 months',style: Theme.of(context).primaryTextTheme.subtitle2,),
                    ),
                   Container(
                     padding: EdgeInsets.all(6),
                     width: 85,
                     height: 30,
                     child: Text('Edit Profile',style: TextStyle(
                       color: Theme.of(context).primaryColor
                     ),),
                     decoration: BoxDecoration(
                       border: Border.all(width: 1,color: Theme.of(context).primaryColor),
                       borderRadius: BorderRadius.all(Radius.circular(5))
                     ),
                   )
                  ],
                ),
                )
              ],
            ),

            // padding: const EdgeInsets.
           
          ),

          Container(
            // color: Colors.red,
            margin: EdgeInsets.only(bottom: 10,top: 35),
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Row(

                  children: [
                    Padding(padding: EdgeInsets.only(),
                    child: Icon(FontAwesomeIcons.briefcaseMedical,
                  
                    ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 15),
                    child: Text('Blood Presure',style: Theme.of(context).primaryTextTheme.bodyText1,),
                    )

                  ],
                ),
                Padding(padding: EdgeInsets.only(),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 3),
                      child: Text('124/130mnhn',style: Theme.of(context).textTheme.headline2,),
                    ),

                    Icon(Icons.arrow_forward_ios_outlined,
              
                    color: Color(0xFF8F8F8F)
                    ),
                  ],
                ),
                
                )
              ],
            )
          ),
           Container(
             margin: EdgeInsets.only(top: 10,bottom: 10),
            // color: Colors.red,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Row(

                  children: [
                    Padding(padding: EdgeInsets.only(),
                    child: Icon(FontAwesomeIcons.bone,
                    ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 15),
                    child: Text('Bone Density',style: Theme.of(context).primaryTextTheme.bodyText1,),
                    )

                  ],
                ),
                Padding(padding: EdgeInsets.only(),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 3),
                      child: Text('3.5 u/mg',style: Theme.of(context).textTheme.headline2,),
                    ),

                    Icon(Icons.arrow_forward_ios_outlined,
              
                    color: Color(0xFF8F8F8F)
                    ),
                  ],
                ),
                
                )
              ],
            )
          ),
           Container(
              margin: EdgeInsets.only(top: 10,bottom: 10),
            // color: Colors.red,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Row(

                  children: [
                    Padding(padding: EdgeInsets.only(),
                    child: Icon(FontAwesomeIcons.weight,
                    ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 15),
                    child: Text('Weight',style: Theme.of(context).primaryTextTheme.bodyText1,),
                    )

                  ],
                ),
                Padding(padding: EdgeInsets.only(),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 3),
                      child: Text('20 kg',style: Theme.of(context).textTheme.headline2,),
                    ),

                    Icon(Icons.arrow_forward_ios_outlined,
              
                    color: Color(0xFF8F8F8F)
                    ),
                  ],
                ),
                
                )
              ],
            )
          ),
       

          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Orders',style: Theme.of(context).primaryTextTheme.bodyText1,),
              ],
            ),
          ),
           Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 90,
                    child: PageView.builder(
                      onPageChanged: (val) {
                        selectedValue = val;
                        setState(() {});
                      },
                      itemCount: 3,
                      itemBuilder: (context, position) {
                        return Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width - 100,
                                  // color: Colors.red,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 15, left: 10, bottom: 10),
                                        child: Text(
                                            'Dog Walking with Sara',
                                            style: Theme.of(context)
                                                .primaryTextTheme
                                                .headline3),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 10,
                                        ),
                                        child: Row(
                                          children: [
                                            Text('9:00pm',
                                                style: Theme.of(context)
                                                    .primaryTextTheme
                                                    .headline2),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 2, right: 2),
                                              child: Icon(
                                                Icons.circle,
                                                size: 10,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Text(
                                              'Monday',
                                              style: Theme.of(context)
                                                  .primaryTextTheme
                                                  .headline2,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 2, right: 2),
                                              child: Icon(
                                                Icons.circle,
                                                size: 10,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Text('15 Feb',
                                                style: Theme.of(context)
                                                    .primaryTextTheme
                                                    .headline2)
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: CircleAvatar(
                                      radius: 30,
                                      // backgroundColor: Colors.red,
                                      backgroundImage:
                                          AssetImage('assets/home4.png')),
                                )
                              ],
                            ),
                            DotsIndicator(
                              dotsCount: 3,
                              position: double.parse(selectedValue.toString()),
                              decorator: DotsDecorator(
                                color: Colors.black87, // Inactive color
                                activeColor: Color(0xFFF0900C),
                              ),
                            )
                          ],
                        );
                      },
                    ),
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
                Padding(

            padding: const EdgeInsets.only(top: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Pets favourites',style: Theme.of(context).primaryTextTheme.bodyText1,),
                Text('+ Add New',style: Theme.of(context).textTheme.subtitle2,)
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            //  color: Colors.red,
            width: MediaQuery.of(context).size.width,
            height: 350,
            child: ListView.builder(
              itemCount: 5,
              
              itemBuilder: (BuildContext context,int index)
            {
              return    Padding(
              padding: EdgeInsets.only(bottom: 5),
              child: Container(
                height: 75,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 7,top: 7),
                        height: 75,
                        width: 80,
                       
                        decoration: BoxDecoration( 
                          image: DecorationImage(
                            image: AssetImage('assets/prod1.png')
                          )
                        ),
                      ),

                      Container(
                        // color: Colors.red,
                        width: MediaQuery.of(context).size.width- 167,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Kennel Kitchen Wet Food',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style:Theme.of(context).primaryTextTheme.bodyText1,),
                            Expanded(
                              child: Text('Chiken and Tuna Gaurmnet Loaf 180 g',
                               style: Theme.of(context).primaryTextTheme.subtitle2,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              
                              ),
                            )
                          ],
                        ),
                      ),

                      Container(
                        // color: Colors.yellow,
                        margin: EdgeInsets.only(right: 0),
                        width: MediaQuery.of(context).size.width-310,
                        padding: EdgeInsets.only(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(Icons.close,color: Color(0xFF8F8F8F),),
                          Text('Rs.180',style: Theme.of(context).textTheme.headline1,)

                        ],
                      ),
                      ) 
                    ],
                  ),
                ),
              )
              ,
            );
            }),
          )
       

     


            
          ],
        ),
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
