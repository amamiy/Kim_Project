import 'package:flutter/material.dart';

import 'allproducts.dart';
import 'category.dart';


class HomeBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
          children: <Widget>[
            Center(child: Text('카테고리', style: TextStyle(fontSize:20, fontWeight:FontWeight.bold),)),
            SizedBox(height: 10,),
            Category(),
            Center(child: Text('제품들', style: TextStyle(fontSize:20, fontWeight:FontWeight.bold),)),
            AllProducts()
          ],
    );
  }
}