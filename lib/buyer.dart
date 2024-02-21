import 'package:flutter/material.dart';

class Buyer extends StatefulWidget {
  Buyer({super.key});

  @override
  State<Buyer> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Buyer> {
  List<Item> products = [
    Item(
        name: 'Jhon',
        native: 'Alappy',
        phone: 9894132569,
        image: 'asset/men.jpg'),
    Item(
        name: 'Peter', native: 'goa', phone: 983256789, image: 'asset/men.jpg'),
    Item(
        name: 'Luther',
        native: 'mundur',
        phone: 8940117763,
        image: 'asset/men.jpg'),
    Item(
        name: 'Peter',
        native: 'kochi',
        phone: 7200025031,
        image: 'asset/men.jpg'),
    Item(
        name: 'Hifi',
        native: 'palakkad',
        phone: 9400147555,
        image: 'asset/men.jpg'),
    Item(
        name: 'William',
        native: 'Thrissur',
        phone: 9003630267,
        image: 'asset/men.jpg'),
    Item(
        name: 'Menon',
        native: 'Aluva',
        phone: 9600232478,
        image: 'asset/men.jpg'),
    Item(
        name: 'Jeeva',
        native: 'Kannur',
        phone: 9894132569,
        image: 'asset/men.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Buyers',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              color: Color.fromARGB(255, 224, 219, 219)),
          child: ListView.builder(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              shrinkWrap: true,
              itemCount: products.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.white,
                  elevation: 5,
                  shadowColor: Colors.amber,
                  margin: EdgeInsets.all(20),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage(products[index].image.toString()),
                          radius: 30,
                        ),
                        SizedBox(
                          width: 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 5,
                              ),
                              RichText(
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                text: TextSpan(
                                    style: TextStyle(
                                        color: Colors.blueGrey.shade800,
                                        fontSize: 16.0),
                                    children: [
                                      TextSpan(
                                          text:
                                              '${products[index].name.toString()}\n',
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold)),
                                    ]),
                              ),
                              RichText(
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                text: TextSpan(
                                    style: TextStyle(
                                        color: Colors.blueGrey.shade800,
                                        fontSize: 16.0),
                                    children: [
                                      TextSpan(
                                          text:
                                              '${products[index].native.toString()}\n',
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold)),
                                    ]),
                              ),
                              RichText(
                                maxLines: 1,
                                text: TextSpan(
                                    text: 'Phone: ',
                                    style: TextStyle(
                                        color: Colors.blueGrey.shade800,
                                        fontSize: 16.0),
                                    children: [
                                      TextSpan(
                                          text:
                                              '${products[index].phone.toString()}\n',
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold)),
                                    ]),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              })),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 73, 73, 73),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications, color: Colors.white),
            label: 'note',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.white),
            label: 'Person',
          ),
        ],
      ),
    );
  }
}

class Item {
  final String name;
  final String native;
  final int phone;
  final String image;

  Item(
      {required this.name,
      required this.phone,
      required this.native,
      required this.image});

  // ignore: non_constant_identifier_names
  Map List() {
    return {
      'name': name,
      'form': native,
      'price': phone,
      'image': image,
    };
  }
}
