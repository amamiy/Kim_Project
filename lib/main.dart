import 'package:flutter/material.dart';
import 'package:helper/models/cart.dart';
import 'package:helper/models/orders.dart';
import 'package:helper/screens/cart_view.dart';
import 'package:helper/screens/homepage.dart';
import 'package:provider/provider.dart';
import 'package:helper/screens/product_detail.dart';

import 'models/products.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Products(),
        ),
       ChangeNotifierProvider.value(
          value: Cart(),),
       ChangeNotifierProvider.value(
          value: Orders(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Shopping Mail',
        theme: ThemeData(
               ),
        home: MyHomePage(),
        routes: {
          DetailPage.routeName: (ctx) => DetailPage(),
          CartScreen.routeName: (ctx) => CartScreen(),
        },
      ),
    );
  }
}
