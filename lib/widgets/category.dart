import 'package:flutter/material.dart';
import 'package:helper/widgets/category_card.dart';

class Category extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 117,
      child:ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CategoryCard(
            Icon(
              Icons.book,
              size: 40,
              ),
            '전공서적'),
            CategoryCard(
            Icon(
              Icons.edit,
              size: 40,
              ),
            '필기구'),
            CategoryCard(
            Icon(
              Icons.laptop,
              size: 40,
              ),
            '노트북'),
            CategoryCard(
            Icon(
              Icons.developer_board,
              size: 40,
              ),
            '보드'),
            CategoryCard(
            Icon(
              Icons.smart_display,
              size: 40,
              ),
            '강의'),
            CategoryCard(
            Icon(
              Icons.android,
              size: 40,
              ),
            '행사')
              ],
            ));
  }
}