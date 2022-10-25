import 'package:flutter/material.dart';
class CategoryCard extends StatelessWidget {
  final Icon icon;
  final String name;
  CategoryCard(this.icon, this.name);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(11.0),
      child: Container(
        width:75,
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: Column(
                  children: <Widget>[
                    icon,
                    Text(name, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))
                  ],
                ),
         ),
        
      ),
    );
  }
}