import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'cartlogic.dart';
import 'imagedescription.dart';
import 'product_list.dart';

class ProductsCard extends StatelessWidget {
  const ProductsCard({
    Key? key,
    required this.image,
    required this.name,
    required this.press,
    required this.price,
    required this.product,
    //required this.bgColor,
  }) : super(key: key);
  final String image, name;
  final VoidCallback press;
  final int price;
  final Product product;
  //final Color bgColor;

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<HomeController>(context, listen: false);
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Desription(product: product)));
      },
      child: Container(
        width: 154,
        //padding: const EdgeInsets.all(defaultPadding / 2),
        decoration: const BoxDecoration(
          color: Colors.transparent,

          // borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 200,
              height: 200,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.pink,
                  width: 1,
                ),
                color: Colors.white12,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                children: [
                  Center(
                    child: CachedNetworkImage(
              imageUrl: image,
              fit:BoxFit.cover,
              ),
                  ),
                  IconButton(
                    onPressed: () {
                      controller.addProductToCart(product);
                    },
                    icon: const Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.pink,
                    ),
                  ),
                ],
              ),
            ),

            // Column(
            //   children: [
            //     Image.network(
            //       image,
            //       fit: BoxFit.cover,
            //     ),
            //   ],
            // ),
            // Column(
            //   children: [
            //     CircleAvatar(
            //       backgroundImage: Image.network(image).image,
            //       radius: 40,
            //       // width: 130,
            //       // height: 130,
            //       //fit: BoxFit.fill,
            //       //height: 132,
            //     ),
            //   ],
            // ),
            const SizedBox(height: 20 / 2),
            Row(
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      name,
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                const SizedBox(width: 20 / 5),
                Text(
                  "\$" + price.toString(),
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
// Container(
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 //make container boundaries as circle
//                 shape: BoxShape.rectangle,
//                 border: Border.all(
//               color: Colors.grey,
//               width: 1,
//             ),
//                 color: bgColor,
//                 borderRadius: const BorderRadius.all(Radius.circular(80)),
//               ),
