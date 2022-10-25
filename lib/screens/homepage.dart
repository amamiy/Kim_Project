import 'package:flutter/material.dart';
import 'package:helper/screens/cart_view.dart';
import 'package:helper/widgets/home_body.dart';

class  MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
    padding: EdgeInsets.zero,
    children: <Widget>[
      UserAccountsDrawerHeader(
        accountName: Text('Taeil'),
        accountEmail: Text('writeline@daum.net'),
        onDetailsPressed: () {
          print('Hello, My Hope World!');
        },
        decoration: BoxDecoration(
          color: Colors.blue[200],
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40.0),
            bottomRight: Radius.circular(40.0),
          ),
        ),
      ),
      ListTile(
        leading: Icon(
          Icons.home,
          color: Colors.grey[850],
        ),
        title: Text('Home'),
        onTap: () {
          print('Home button is clicked!');
        },
        trailing: Icon(Icons.add),
      ),
      ListTile(
        leading: Icon(
          Icons.settings,
          color: Colors.grey[850],
        ),
        title: Text('settings'),
        onTap: () {
          print('settings button is clicked!');
        },
        trailing: Icon(Icons.add),
      ),
      ListTile(
        leading: Icon(
          Icons.question_answer,
          color: Colors.grey[850],
        ),
        title: Text('Q&A'),
        onTap: () {
          print('Q&A button is clicked!');
        },
        trailing: Icon(Icons.add),
      ),
    ],
  ),
),

      appBar: AppBar(
        title: Text('StepUpHelper'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.shopping_cart, size: 30,), onPressed: ()=> Navigator.of(context).pushNamed(CartScreen.routeName))
        ],
        ),      
        body:HomeBody()
    );
  }
}