import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:helper/models/cart.dart';

class CartPdt extends StatelessWidget {

  final String id;
  final String productId;
  final String name;
  final int quantity;
  final double price;

  CartPdt(this.id, this.productId, this.price, this.quantity, this.name);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(id),
      direction: DismissDirection.endToStart,
      background: Container(
        color: Colors.red,
      ),
      onDismissed: (direction) {
        Provider.of<Cart>(context).removeItem(productId);
      },
      child: Card(
          child: ListTile(
        leading: CircleAvatar(
          child: FittedBox(child: Text('\$$price')),
        ),
        title: Text(name),
        subtitle: Text('Total: \$${(price * quantity)}'),
        trailing: Text('$quantity x'),
      )),
    );
  }
}
