import 'package:flutter/material.dart';
import 'package:helper/models/orders.dart';
import 'package:provider/provider.dart';
import '../models/cart.dart';
import '../widgets/cart_item.dart';

class CartScreen extends StatelessWidget {
  static const routeName = '/cart';
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '장바구니',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      body: Column(children: <Widget>[
        Expanded(
          child: ListView.builder(
            itemCount: cart.items.length,
            itemBuilder:(ctx,i)=>CartPdt(
              cart.items.values.toList()[i].id,
              cart.items.keys.toList()[i],
              cart.items.values.toList()[i].price,
              cart.items.values.toList()[i].quantity,
              cart.items.values.toList()[i].name
            )),
        ),
        CheckoutButton(cart: cart,)
//        FlatButton(
//          onPressed: () {
//          },
//          child: Text(
//            '결제하기',
//          ))
      ]),
    );
  }
}

class CheckoutButton extends StatefulWidget {
  final Cart cart;
  const CheckoutButton({@required this.cart});

  @override
  _CheckoutButtonState createState() => _CheckoutButtonState();
}

class _CheckoutButtonState extends State<CheckoutButton> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text('결제하기'),
      onPressed: widget.cart.totalAmount <= 0
          ? null
          : () async {
              await Provider.of<Orders>(context, listen: false).addOrder(
                  widget.cart.items.values.toList(), widget.cart.totalAmount);
              widget.cart.clear();
            },
    );
  }
}
