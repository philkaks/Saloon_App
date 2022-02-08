import 'package:flutter/material.dart';

import 'Modules/search_form.dart';
import 'kids/kids_builder.dart';
import 'men/men_builder.dart';
import 'saleProducts/products_builder.dart';
import 'services/service_builder.dart';
import 'stylist/stylists_builder.dart';
import 'women/trend_design_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //Color(0xffedfdc7)
      //Color.fromRGBO(9, 29, 35, 1),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
             
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://media.istockphoto.com/photos/beautiful-ethnic-woman-with-yellow-flower-picture-id1285138747?k=20&m=1285138747&s=612x612&w=0&h=RwbmJg9Xo7Y8NyKHj5Zl9RqScgWK6s09TTGzuxlHH9s=',
                        ),
                        fit: BoxFit.cover,
                      ),
                     
                    ),
                    
                  ),
                ),
               
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: SearchForm(),
            ),
            const Stylists(),
            const Services(),
            const PopularProducts(),
            const TrendingDesigns(),
            const WomenDesigns(),
            const Kids(),
          ],
        ),
      ),
    );
  }
}
