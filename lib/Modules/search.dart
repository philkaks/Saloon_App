// //using a search delegate
// import 'package:flutter/material.dart';
// import 'package:recessprojectgroup10/saleProducts/product_list.dart';
// //import 'package:shopping_cart_side_example/product.dart';

// class Search extends SearchDelegate<String> {
//   @override
//   List<Widget> buildActions(BuildContext context) {
//     return [
//       IconButton(
//         icon:  Icon(Icons.clear),
//         onPressed: () {
//           query = '';
//         },
//       ),
//     ];
//   }

//   @override
//   Widget buildLeading(BuildContext context) {
//     return IconButton(
//       icon:  Icon(Icons.arrow_back),
//       onPressed: () {
//         close(context, '');
        
//         },
//     );
//   }

//   @override
//   Widget buildResults(BuildContext context) {
//     return Container();
//   }

//   @override
//   Widget buildSuggestions(BuildContext context) {
//     final suggestionList = query.isEmpty
//         ? demo_products
//         : demo_products
//             .where((p) => p.title.toLowerCase().startsWith(query))
//             .toList();
//     return ListView.builder(
//       itemBuilder: (context, index) => ListTile(
//         leading:  Icon(Icons.shopping_cart),
//         title: Text(suggestionList[index].title),
//         subtitle: Text(suggestionList[index].price.toString()),
//         onTap: () {
//           query = suggestionList[index].title;
//         },
//       ),
//       itemCount: suggestionList.length,
//     );
//   }
// }
