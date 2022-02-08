import 'package:flutter/material.dart';
import 'package:indianyoutubefirebase/men/mens_list.dart';

//import 'package:recessprojectgroup10/saleProducts/product_list.dart';
import 'menCard.dart';
import '../Modules/section_title.dart';

class TrendingDesigns extends StatelessWidget {
  const TrendingDesigns({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2),
          child: SectionTitle(
            title: "Men",
            pressSeeAll: () {},
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Card(
            elevation: 10,
            margin: const EdgeInsets.symmetric(vertical: 5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: Color(0xffecc5a5),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: List.generate(
                  Trending_Designs.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: TrendsCard(
                      name: Trending_Designs[index].name,
                      image: Trending_Designs[index].image,
                      price: Trending_Designs[index].price,

                      //bgColor: Trending_Designs[index].,
                      press: () {},
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
