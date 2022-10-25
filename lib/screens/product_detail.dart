import 'package:flutter/material.dart';
import 'package:helper/models/products.dart';
import 'package:helper/models/cart.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatelessWidget {
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    final loadedPdt = Provider.of<Products>(context).findById(productId);
    final cart = Provider.of<Cart>(context);

    return Scaffold(
      appBar: AppBar(
        title:Text(loadedPdt.name),
      ),
      body: Column(children:<Widget> [
        Container(
          height: 350,
          width: double.infinity,      
          child: Padding(
          padding: const EdgeInsets.all(11),
          child: Image.network(loadedPdt.imgUrl),
          ),
        ),
         Text(' ${loadedPdt.price} ₩',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold)
          ),
          Padding(
            padding: const EdgeInsets.all(11.0),
            child: Text(' ${loadedPdt.description}',
            style: TextStyle(
              fontSize: 17,)
            ),
          ),
      ],),
      floatingActionButton: FloatingActionButton(
        onPressed: () {cart.addItem(productId, loadedPdt.name, loadedPdt.price);
        },
        child: Icon(
          Icons.shopping_cart,
          size: 25,
        ),
        backgroundColor: Colors.red,
      ),
    );  
  }
}