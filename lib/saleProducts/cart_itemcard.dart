import 'package:flutter/material.dart';
import 'package:indianyoutubefirebase/Modules/constants.dart';
import 'package:provider/provider.dart';
import 'Productitem.dart';
import 'cartlogic.dart';

class DisplayProduct extends StatelessWidget {
  const DisplayProduct({
    Key? key,
    required this.productitem,
  }) : super(key: key);
  final ProductItem productitem;

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<HomeController>(context, listen: false);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 300,
          width: 350,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 0.5,
            ),
            color: mycolor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Stack(
            children: [
              Center(
                child: Image.network(productitem.product.image),
              ),
              IconButton(
                onPressed: () {
                  if (productitem.quantity > 1) {
                    controller.reduceqty(productitem);
                  } else {
                    controller.removeProductFromCart(productitem);
                  }
                },
                icon: Icon(Icons.remove, color: mycolor),
              ),
              Positioned(
                bottom: 40,
                child: IconButton(
                  onPressed: () {
                    controller.increaseqty(productitem);
                  },
                  icon: Icon(Icons.add, color: mycolor),
                ),
              ),
              Positioned(
                right: 40,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 15,
                  child: Text(productitem.quantity.toString()),
                ),
              ),
            ],
          ),
        ),
        Text(productitem.product.title.toString(),
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Text(productitem.product.id.toString(),
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.black,
                  )),
            ),
            Divider(
              indent: 30,
            ),
            Text(
              '\$ ' + productitem.product.price.toString(),
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w200,
                color: Colors.black,
              ),
            ),
          ],
        )
      ],
    );
  }
}
