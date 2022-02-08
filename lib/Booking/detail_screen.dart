import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

var serviceList = [
  {'title': "Men's Hair Cut", 'duration': 45, 'price': 330},
  {'title': "Women's Hair Cut", 'duration': 60, 'price': 500},
  {'title': 'Color & Blow Dry', 'duration': 90, 'price': 750},
  {'title': 'Oil Treatment', 'duration': 30, 'price': 200},
];

class StylistDetailScreen extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final stylist;
  const StylistDetailScreen(this.stylist, {Key? key}) : super(key: key);

  @override
  State<StylistDetailScreen> createState() => _StylistDetailScreenState();
}

class _StylistDetailScreenState extends State<StylistDetailScreen> {
  bool _isFavorited = true;

  int _favoriteCount = 70;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height / 3 + 30,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    CachedNetworkImage(
                      imageUrl:
                          'https://media.istockphoto.com/photos/hairdresser-female-making-hair-extensions-to-young-woman-with-blonde-picture-id1305808016?b=1&k=20&m=1305808016&s=170667a&w=0&h=vne7jlO5iobPPKoNgunB1a4yQZ_y0MYwv3NY3xUTpHo=',
                          fit:BoxFit.cover,
                    ),
                    // Image.network(
                    //   'https://media.istockphoto.com/photos/hairdresser-female-making-hair-extensions-to-young-woman-with-blonde-picture-id1305808016?b=1&k=20&m=1305808016&s=170667a&w=0&h=vne7jlO5iobPPKoNgunB1a4yQZ_y0MYwv3NY3xUTpHo=',
                    //   fit: BoxFit.fill,
                    // ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      color: Colors.purple.withOpacity(0.1),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 30,
                left: 20,
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 3 - 40,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const SizedBox(
                          height: 130,
                        ),
                        const Text(
                          'Service List',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ServiceTile(serviceList[0]),
                        ServiceTile(serviceList[1]),
                        ServiceTile(serviceList[2]),
                        ServiceTile(serviceList[3]),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height / 8,
                            color: const Color(0xff4E295B),
                            child: SingleChildScrollView(
                              child: Column(
                                children: const <Widget>[
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    "Cameron is the best colorist and stylish I’ve ever met. He has an amazing talent! He is ver...",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 3 - 120,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width / 3 - 20,
                        height: MediaQuery.of(context).size.height / 6 + 20,
                        decoration: BoxDecoration(
                          color: widget.stylist['bgColor'],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(
                          fit: StackFit.expand,
                          children: <Widget>[
                            Positioned(
                              top: 30,
                              right: -40,
                              child: Image.asset(
                                widget.stylist['imgUrl'],
                                scale: 3,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            widget.stylist['stylistName'],
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            widget.stylist['salonName'],
                            style: const TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: <Widget>[
                              const Icon(
                                Icons.star,
                                size: 16,
                                color: Color(0xffFF8573),
                              ),
                              const SizedBox(width: 5),
                              Text(
                                widget.stylist['rating'],
                                style: const TextStyle(
                                  color: Color(0xffFF8573),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                _favoriteCount.toString(),
                                style: const TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 10,
                top: MediaQuery.of(context).size.height / 3 - 55,
                child: MaterialButton(
                  onPressed: _toggleFavorite,

                  padding: const EdgeInsets.all(10),
                  shape: const CircleBorder(),
                  color: Colors.white,
                  child: IconButton(
                    padding: const EdgeInsets.all(0),
                    alignment: Alignment.centerRight,
                    icon: Center(
                      child: (_isFavorited
                          ? const Icon(Icons.favorite_border_outlined)
                          : const Icon(Icons.favorite)),
                    ),
                    color: Colors.red[500],
                    onPressed: _toggleFavorite,
                  ),

                  //Icon(OMIcons.favoriteBorder),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount += 1;
        _isFavorited = false;
      } else {
        _favoriteCount -= 1;
        _isFavorited = true;
      }
    });
  }
}

class ServiceTile extends StatefulWidget {
  final service;

  const ServiceTile(this.service, {Key? key}) : super(key: key);

  @override
  State<ServiceTile> createState() => _ServiceTileState();
}

class _ServiceTileState extends State<ServiceTile> {
  bool _isFavorite = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      child: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2 - 40,
                  child: Text(
                    widget.service['title'],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  '${widget.service['duration']} Min',
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Text(
              'Shs.${widget.service['price']}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            MaterialButton(
                onPressed: () {},
                color: const Color(0xffFF8573),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                // child: Icon(
                //   Icons.calendar_today,
                //   size: 15,
                // ),
                child: TextButton(
                  child: (_isFavorite
                      ? const Text('Book')
                      : const Icon(
                          Icons.check,
                          color: Colors.green,
                        )),
                  onPressed: _toggleTick,
                )),
          ],
        ),
      ),
    );
  }

  void _toggleTick() {
    setState(() {
      if (_isFavorite) {
        _isFavorite = false;
      } else {
        _isFavorite = true;
      }
    });
  }
}
