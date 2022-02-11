class Service {
  final String title;
  int price, duration;

  Service({required this.title, required this.price, required this.duration});
}

// ignore: non_constant_identifier_names
List<Service> demo_products = [
  Service(
    title: "men cut",
    duration: 45,
    price: 200,
  ),
  Service(
    title: "woman cut",
    price: 125,
    duration: 20,
  ),
  Service(
    title: "hair blow",
    price: 300,
    duration: 90,
  ),
  Service(
    title: "Plainting",
    price: 500,
    duration: 60,
  ),
  Service(
    title: "manicure",
    price: 700,
    duration: 30,
  ),
];
