import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pet_user_app/models/apiHelper.dart';
import 'package:pet_user_app/models/api_utils.dart';
import 'package:pet_user_app/models/businessLayer/baseRoute.dart';
import 'package:pet_user_app/models/entites/products.dart';
import 'package:pet_user_app/screens/productDetailScreen.dart';
import 'package:pet_user_app/screens/productFilterScreen.dart';

class ProductStoreScreen extends BaseRoute {
  // ProductStoreScreen() : super();
  ProductStoreScreen({a, o}) : super(a: a, o: o, r: 'ProductStoreScreen');
  @override
  _ProductStoreScreenState createState() => new _ProductStoreScreenState();
}

class _ProductStoreScreenState extends BaseRouteState {
  _ProductStoreScreenState() : super();

  List<Products> product = [];

  ApiUtils _apiUtils = ApiUtils();

  void initState() {
    super.initState();

    _apiUtils.getAllProducts().then((value) => setState(() => product = value));
    print(product);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF34385A),
          ),
        ),
        title: Text(
          'Product Store',
          style: Theme.of(context).primaryTextTheme.headline1,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(
              Icons.shopping_cart_outlined,
              color: Color(0xFF34385A),
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            Container(
              height: 37,
              width: MediaQuery.of(context).size.width,
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Icon(Icons.search),
                  ),
                  hintText: 'Search',
                  contentPadding: EdgeInsets.only(top: 5, left: 10),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ProductFilterScreen(
                                    a: widget.analytics,
                                    o: widget.observer,
                                  )));
                        },
                        child: Icon(
                          FontAwesomeIcons.filter,
                          color: Color(0xFF8F8F8F),
                          size: 18,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Icon(
                          Icons.filter_3_outlined,
                          size: 18,
                          color: Color(0xFF8F8F8F),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                  itemCount: product.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 0.57),
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ProductDetailScreen(
                                    a: widget.analytics,
                                    o: widget.observer,
                                  )));
                        },
                        child: Container(
                          height: 285,
                          width: 160,
                          child: Card(
                            elevation: 3,
                            child: Container(
                              child: Column(
                                children: [
                                  Container(
                                    child: Stack(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 45),
                                          height: 125,
                                          width: 180,
                                          child:
                                              Image.asset('assets/prod1.png'),
                                        ),
                                        Positioned(
                                            top: 10,
                                            right: 0,
                                            child: Row(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.orange,
                                                      borderRadius:
                                                          BorderRadius.only(
                                                              topLeft: Radius
                                                                  .circular(10),
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      10))),
                                                  margin:
                                                      EdgeInsets.only(right: 0),
                                                  child: Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 5,
                                                                top: 2,
                                                                bottom: 2),
                                                        child: Icon(
                                                          Icons.star_outline,
                                                          color:
                                                              Theme.of(context)
                                                                  .primaryColor,
                                                          size: 20,
                                                        ),
                                                      ),
                                                      Text('5'),
                                                      SizedBox(
                                                        width: 5,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ))
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Divider(
                                      height: 1,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Flexible(
                                            child: Text(
                                          product[index].name,
                                          overflow: TextOverflow.ellipsis,
                                        )),
                                        Container(
                                          margin: EdgeInsets.only(right: 5),
                                          child: Icon(
                                            Icons.favorite,
                                            color:
                                                Theme.of(context).primaryColor,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          product[index].description,
                                          style: Theme.of(context)
                                              .primaryTextTheme
                                              .subtitle2,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          FontAwesomeIcons.rupeeSign,
                                          size: 15,
                                          color: Colors.black,
                                        ),
                                        Text(
                                          product[index].price.toString(),
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                      // margin: EdgeInsets.only(right: 15),
                                      // color: Colors.red,
                                      height: 42,
                                      // padding: EdgeInsets.only(left: 15, right: 15),
                                      width: 200,
                                      child: TextButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Theme.of(context)
                                                          .primaryColor),
                                              textStyle:
                                                  MaterialStateProperty.all(
                                                      TextStyle(fontSize: 13))),
                                          onPressed: () {
                                            // print('Hello');
                                            // Navigator.of(context).push(MaterialPageRoute(
                                            //     builder: (context) => LogInScreen2(
                                            //           a: widget.analytics,
                                            //           o: widget.observer,
                                            //         )));
                                          },
                                          child: Text(
                                            "Add to Cart",
                                          ))),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
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
}
