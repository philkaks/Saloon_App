import 'package:flutter/material.dart';
import 'package:indianyoutubefirebase/Modules/constants.dart';
import 'package:indianyoutubefirebase/kids/kids_deesignlist.dart';

import 'kid_design_card.dart';
import '../Modules/section_title.dart';

class Kids extends StatelessWidget {
  const Kids({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2),
          child: SectionTitle(
            title: "Kids Trends",
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
            color: cardColor1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: List.generate(
                  Kids_Trends.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: kidsCard(
                      name: Kids_Trends[index].name,
                      image: Kids_Trends[index].image,
                      price: Kids_Trends[index].price,

                      //bgColor: Kids_Trends[index].,
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
