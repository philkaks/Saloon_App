import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Productitem.dart';
import 'booklogic.dart';

class DisplayProduct extends StatelessWidget {
  DisplayProduct({
    Key? key,
    required this.serviceitem,
  }) : super(key: key);
  final ServiceItem serviceitem;

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<Controller2>(context, listen: false);
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 8),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xffFFF0EB),
      ),
      child: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 40, left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  serviceitem.service.title.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  serviceitem.service.price.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.attach_money,
                      size: 16,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      serviceitem.service.price.toString(),
                      style: TextStyle(
                        color: Color(0xff4E295B),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                // MaterialButton(
                //   onPressed: () {
                //     // Navigator.push(
                //     //     context,
                //     //     MaterialPageRoute(
                //     //         builder: (context) =>
                //     //             StylistDetailScreen(stylist)));
                //   },
                //   color: Color(0xff4E295B),
                //   shape: RoundedRectangleBorder(
                //     borderRadius: BorderRadius.circular(20),
                //   ),
                //   child: Text(
                //     'Description',
                //     style: TextStyle(
                //       color: Colors.white,
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
          Positioned(
            bottom: 40,
            left: 60,
            child: TextButton(
              onPressed: () {
                if (serviceitem.quantity > 1) {
                  controller.reduceqty(serviceitem);
                } else {
                  controller.removeProductFromCart(serviceitem);
                }
              },
              child: Text(
                'Remove Booking',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
          ),
          // Positioned(
          //   bottom: 40,
          //   child: IconButton(
          //     onPressed: () {
          //       controller.increaseqty(productitem);
          //     },
          //     icon: Icon(Icons.add_circle),
          //   ),
          // ),
          // Positioned(
          //   bottom: 40,
          //   right: 40,
          //   child: CircleAvatar(
          //     backgroundColor: Colors.white,
          //     radius: 15,
          //     child: Text(serviceitem.quantity.toString()),
          //   ),
          // ),
          // Positioned(
          //   right: 10,
          //   bottom: 10,
          //   child: Image.network(
          //       'https://media.istockphoto.com/photos/african-mid-woman-using-smartphone-at-home-picture-id1319763415?b=1&k=20&m=1319763415&s=170667a&w=0&h=J9vN7w33elL-hY1CogyTB2BzzKpiEbmPqTdsQ6fBbuI='),
          // ),
        ],
      ),
    );
  }
}
// Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//           padding: EdgeInsets.all(20),
//           decoration: BoxDecoration(
//             color: Colors.grey,
//             borderRadius: BorderRadius.circular(50),
//           ),
//           child: Stack(
//             children: [
//               Center(
//                 child: Image.asset(productitem.product.image),
//               ),
              // IconButton(
              //   onPressed: () {           
                        
              //       if (productitem.quantity > 1) {
              //         controller.reduceqty(productitem);
                         
              //       } else {
              //         controller.removeProductFromCart(productitem);
              //       }
                 
              //   },
              //   icon: Icon(Icons.remove_circle),
              // ),
              // Positioned(
              //   bottom: 40,
              //   child: IconButton(
              //     onPressed: () {
              //       controller.increaseqty(productitem);
              //     },
              //     icon: Icon(Icons.add_circle),
              //   ),
              // ),
              // Positioned(
              //   right: 40,
              //   child: CircleAvatar(
              //     backgroundColor: Colors.white,
              //     radius: 15,
              //     child: Text(productitem.quantity.toString()),
              //   ),
//               ),
//             ],
//           ),
//         ),
//         Text(productitem.product.title.toString(),
//             style: TextStyle(
//               fontSize: 30,
//               fontWeight: FontWeight.bold,
//             )),
//         Row(
//           children: [
//             Flexible(
//               child: Text(productitem.product.id.toString(),
//                   style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   )),
//             ),
//             Divider(
//               indent: 30,
//             ),
//             Text(
//               productitem.product.price.toString(),
//               style: TextStyle(
//                 fontSize: 15,
//                 fontWeight: FontWeight.w200,
//               ),
//             ),
//           ],
//         )
//       ],
//     );
