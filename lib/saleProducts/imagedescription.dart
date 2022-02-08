import 'package:flutter/material.dart';

import 'product_list.dart';
//import 'package:shopping_cart_side_example/product.dart';

class Desription extends StatelessWidget {
  const Desription({
    Key? key,
    required this.product,
  }) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Description'),
      ),
      body: Stack(children: [
        Center(
          child: Image.network(
            'https://images.unsplash.com/photo-1522390108011-5f8667fd551d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDl8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
            colorBlendMode: BlendMode.hardLight,
          ),
        ),
        Center(
          child: Card(
            margin: const EdgeInsets.all(20),
            elevation: 10,
            child: ListTile(
              leading: Image.network(product.image),
              title: Text(
                product.title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                product.description,
                style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
              focusColor: Colors.black,
              contentPadding: const EdgeInsets.all(18),
            ),
          ),
        ),
      ]),
    );
  }
}
