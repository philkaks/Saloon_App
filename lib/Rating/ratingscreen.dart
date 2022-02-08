import 'package:flutter/material.dart';

import 'commentsection.dart';
import 'rating.dart';


class RatingScreen extends StatelessWidget {
  const RatingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rating'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            color: const Color.fromRGBO(9, 229, 235, 1).withOpacity(0.5),
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                  title: Rate(),
                  subtitle: Text('Leave a comment below'),
                  leading: const CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuHQM-ji-ne3x60sYbmIbTMEsrDUl5bjIbKg&usqp=CAU',
                    ),
                  ),
                  trailing: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Comments()));
                      },
                      icon: const Icon(Icons.comment))),
            ),
          ),
          //const SizedBox(height: 5),
          Card(
            color: const Color.fromRGBO(9, 229, 235, 1).withOpacity(0.5),
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                  title: Rate(),
                  subtitle: Text('Leave a comment below'),
                  leading: const CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5L5ayLN0_PiPmKi7AMtyoPMekAiZNhrpFKw&usqp=CAU'),
                  ),
                  trailing: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Comments()));
                      },
                      icon: const Icon(Icons.comment))),
            ),
          ),
          //const SizedBox(height: 5),
          Card(
            color: const Color.fromRGBO(9, 229, 235, 1).withOpacity(0.5),
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: const Rate(),
                subtitle: Text('Leave a comment below'),
                leading: const CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHIr1FrX_Ud9sIdzVUo7iFZFrl6H8rd-MjYQ&usqp=CAU'),
                ),
                trailing: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Comments()));
                    },
                    icon: Icon(Icons.comment)),
              ),
            ),
          ),
          // const SizedBox(height: 5),
          Card(
            color: const Color.fromRGBO(9, 229, 235, 1).withOpacity(0.5),
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                  title: const Rate(),
                  subtitle: const Text('Leave a comment below'),
                  leading: const CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7Xh9PifMRhzJfnv4DVRnhcFv1DsMB0RtcAQ&usqp=CAU'),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Comments()));
                    },
                    icon: const Icon(Icons.comment),
                  )),
            ),
          ),
          // const SizedBox(height: 5),
          // Card(
          //   color: const Color.fromRGBO(9, 229, 235, 1),
          //   elevation: 10,
          //   shape: RoundedRectangleBorder(
          //     borderRadius: BorderRadius.circular(20),
          //   ),
          //   child: const Padding(
          //     padding: EdgeInsets.all(8.0),
          //     child: ListTile(
          //       title: Rate(),
          //       subtitle: Text('James'),
          //       leading: CircleAvatar(
          //         radius: 50,
          //         backgroundImage: NetworkImage(image),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
