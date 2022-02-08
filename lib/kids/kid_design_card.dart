import 'package:flutter/material.dart';

class kidsCard extends StatelessWidget {
  const kidsCard({
    Key? key,
    required this.image,
    required this.name,
    required this.press,
    required this.price,

    //required this.bgColor,
  }) : super(key: key);
  final String image, name;
  final VoidCallback press;
  final int price;

  @override
  Widget build(BuildContext context) {
    //final controller = Provider.of<HomeController>(context, listen: false);
    return GestureDetector(
      onTap: () {
        //Navigator.push(context, MaterialPageRoute(builder: (context) => Desription(product: product)));
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
                  color: Colors.black,
                  width: 1,
                ),
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.network(
                image,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
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
