import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:indianyoutubefirebase/Booking/home_screen.dart';
import 'package:indianyoutubefirebase/screens/login_page.dart';
import 'Modules/constants.dart';
import 'Rating/ratingscreen.dart';
import 'Sign_in/utils/authentication_client.dart';
import 'Sign_in/utils/firebase_options.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:provider/provider.dart';
import 'homescreen.dart';
import 'Modules/notifications.dart';
import 'saleProducts/cartlogic.dart';
import 'saleProducts/cartscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    ChangeNotifierProvider(
      create: (context) => HomeController(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GROUP 10',
      color: mycolor,
      home: LoginPage(),
    );
  }
}

//const MyHomePage(title: 'RECESS')
class MyHomePage extends StatefulWidget {
  final User user;
  const MyHomePage({Key? key, required this.title, required this.user})
      : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _authClient = AuthenticationClient();
  int selectedIndex = 0;
  bool _isProgress = false;
  List<Widget> listWidgets = [
    const HomeScreen(),
    const Bookings(),
    const CartScreen(),
    const Notifications(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //shape: ,
        backgroundColor: const Color.fromRGBO(11, 2, 28, 2),
        // shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      //backgroundColor: const Color(0xeff0dfe1),
      body: listWidgets[selectedIndex],
      bottomNavigationBar: ConvexAppBar.badge(
        {
          2: ' ${context.select((HomeController controller) => controller.totalCartItems)}'
        },
        items: const [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.calendar_today, title: 'Booking'),
          TabItem(icon: Icons.shopping_cart, title: 'Cart'),
          TabItem(icon: Icons.notifications, title: 'Notifications'),
          //TabItem(icon: Icons.person, title: 'Profile'),
        ],
        onTap: onItemTapped,
        activeColor: mycolor,
        backgroundColor: const Color.fromRGBO(11, 2, 28, 2),
      ),
      drawer: Drawer(
        backgroundColor: mycolor,
        elevation: 20,
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Color(0xeff0dfe1),
                    width: 1,
                  ),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  CircleAvatar(
                    radius: 65,
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1521572267360-ee0c2909d518?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHByb2ZpbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
                  ),
                ],
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.white,
              elevation: 5,
              child: ListTile(
                leading: const Icon(Icons.person, color: mycolor),
                title: Text(
                  '${widget.user.displayName}',
                  style: const TextStyle(
                    color: Colors.black,
                    //fontSize: 20,
                  ),
                ),

                onTap: () {},
                //trailing: Text('Name'),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.white,
              elevation: 5,
              child: ListTile(
                leading: const Icon(
                  Icons.email,
                  color: mycolor,
                ),
                title: Text('${widget.user.email}'),
                onTap: () {},
                // trailing: Text('Email'),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.white,
              elevation: 5,
              child: ListTile(
                leading: const Icon(
                  Icons.monetization_on,
                  color: Colors.green,
                ),
                title: Text(
                  '  ${context.select((HomeController controller) => controller.totalPrice)}                                             10% off',
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),

                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CartScreen()),
                  );
                },

                // trailing: Text('Email'),
              ),
            ),
            Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 5,
              child: ListTile(
                leading: const Icon(Icons.radar, color: mycolor),
                title: const Text('Rank Stylist'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RatingScreen()),
                  );
                },

                //trailing: Text('Name'),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  fixedSize: const Size(50, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
              onPressed: () async {
                setState(() {
                  _isProgress = true;
                });
                await _authClient.logoutUser();
                setState(() {
                  _isProgress = false;
                });
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                  (route) => false,
                );
              },
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Sign Out',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ),
            const SizedBox(
              height: 190,
            ),
            const Center(
              child: Text(
                'Terms and conditions Apply',
                style: TextStyle(color: Colors.blue),
              ),
            )
          ],
        ),
      ),
    );
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
  

////////////////////////////
///MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   title: 'The Recess Project',
    //   theme: ThemeData(
    //     scaffoldBackgroundColor: Colors.white,
    //     primarySwatch: Colors.blue,
    //     fontFamily: "Gordita",
    //     appBarTheme: const AppBarTheme(
    //       backgroundColor: Colors.transparent,
    //       elevation: 0,
    //     ),
    //     textTheme: const TextTheme(
    //       bodyText2: TextStyle(color: Colors.black54),
    //     ),
    //   ),
    //   home: const HomeScreen(),
    // );
// void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
//   runApp(const MyApp());
//}
