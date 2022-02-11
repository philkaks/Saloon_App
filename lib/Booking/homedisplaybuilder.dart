import 'package:flutter/material.dart';
import 'package:indianyoutubefirebase/Booking/bookedscreen.dart';
import 'package:indianyoutubefirebase/Booking/booklogic.dart';
import 'package:indianyoutubefirebase/Booking/product.dart';
import 'package:provider/provider.dart';
import 'CartScreen.dart';
import 'home_itemcard.dart';

class ServiceBuilder extends StatelessWidget {
  const ServiceBuilder({
    Key? key,
    required this.service,
  }) : super(key: key);
  final Service service;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: demo_products.length,
            itemBuilder: (context, index) => ServiceTile(
              service: demo_products[index],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          foregroundColor: Colors.white,
          onPressed: () {},
          child: Stack(
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const BookedScreen();
                      },
                    ),
                  );
                },
              ),
              Positioned(
                top: 0.0,
                left: 25.0,
                child: Text(
                  '${context.select((Controller2 controller) => controller.totalCartItems)}',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    ]);
  }
}
