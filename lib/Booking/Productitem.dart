import 'package:indianyoutubefirebase/Booking/product.dart';

class ServiceItem {
  int quantity= 1;
 
  
  final Service service;

  //num price;
  
  ServiceItem({
  
    required this.service,
    
  });

  void increment() {
    quantity++;
  }

  void add() {

  }

  void substract() {
    quantity--;
  }
}
