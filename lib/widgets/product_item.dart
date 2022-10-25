import 'package:flutter/material.dart';
import 'package:helper/models/cart.dart';
import 'package:helper/models/products.dart';
import 'package:helper/screens/product_detail.dart';
import 'package:provider/provider.dart';

class PdtItem extends StatelessWidget {
  final String name;
  final String imageUrl;

  PdtItem({this.name, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final pdt = Provider.of<Product>(context);
    final cart = Provider.of<Cart>(context);
    return GestureDetector(
      onTap: () {Navigator.of(context)
      .pushNamed(DetailPage.routeName, arguments: pdt.id);
      },
      child: Padding(
        padding: const EdgeInsets.all(13.0),
        child: GridTile(
          child: Image.network(imageUrl),
          footer: GridTileBar(
            title: Text(name),
            backgroundColor: Colors.blue[200],
            trailing: IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  Scaffold.of(context).showSnackBar(SnackBar(
                    duration: Duration(seconds: 3),
                    content: Text('장바구니에 추가 되었습니다!'),
                  ));
            cart.addItem(pdt.id, pdt.name, pdt.price);
          }),
         )
        ),
      ),
    );
  }
}