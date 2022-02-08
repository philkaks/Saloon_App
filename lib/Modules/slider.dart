import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:indianyoutubefirebase/Modules/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CarouselSlider(
          items: [
            //1st Image of Slider
            Container(
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: const DecorationImage(
                  image: NetworkImage(
                      "https://images.unsplash.com/flagged/photo-1580820258381-20c91a156841?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8aGFpciUyMHNhbG9vbiUyMGFkdmVydHN8ZW58MHx8MHx8&auto=format&fit=crop&w=700&q=60"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            //2nd Image of Slider
            Container(
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: const DecorationImage(
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1505033852907-44fe8ec1e170?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8aGFpciUyMHNhbG9vbiUyMGFkdmVydHN8ZW58MHx8MHx8&auto=format&fit=crop&w=700&q=60"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            //3rd Image of Slider
            Container(
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: const DecorationImage(
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1512084747998-038941f49b84?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGhhaXIlMjBzYWxvb24lMjBhZHZlcnRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            //4th Image of Slider
            Container(
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: const DecorationImage(
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1532171875345-9712d9d4f65a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fGhhaXIlMjBzYWxvb24lMjBhZHZlcnRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            //5th Image of Slider
            Container(
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: const DecorationImage(
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1523260578934-e9318da58c8d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGhhaXIlMjBzYWxvb24lMjBhZHZlcnRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],

          //Slider Container properties
          options: CarouselOptions(
            height: 350.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            viewportFraction: 0.8,
          ),
        ),
        const Center(
            child: Text(
          'Available Promotions',
          style: TextStyle(
              color: mycolor, fontWeight: FontWeight.bold, fontSize: 30),
        )),
        Image.network(
            'https://storage.googleapis.com/dev-blog-images/2020/07/cebd66c8-image6-1024x600.jpg'),
        const Center(
            child: Text(
          'Score Points for Every Haircut',
          style: TextStyle(
              color: kTextColor, fontWeight: FontWeight.bold, fontSize: 20),

        ),),
      
      ],
    );
  }
}
