import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Seller extends StatefulWidget {
  Seller({super.key});

  @override
  State<Seller> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Seller> {
  List<Item> products = [
    Item(
        name: 'Jhon',
        form: 'AAK form',
        phone: 9894132569,
        image: 'asset/men.jpg'),
    Item(
        name: 'Peter',
        form: 'AAK form',
        phone: 983256789,
        image: 'asset/men.jpg'),
    Item(
        name: 'Luther',
        form: 'Meera form',
        phone: 8940117763,
        image: 'asset/men.jpg'),
    Item(
        name: 'Peter',
        form: 'Kairali form',
        phone: 7200025031,
        image: 'asset/men.jpg'),
    Item(
        name: 'Hifi',
        form: 'ALsifa form',
        phone: 9400147555,
        image: 'asset/men.jpg'),
    Item(
        name: 'William',
        form: 'ABC form',
        phone: 9003630267,
        image: 'asset/men.jpg'),
    Item(
        name: 'Menon',
        form: 'KKK form',
        phone: 9600232478,
        image: 'asset/men.jpg'),
    Item(
        name: 'Jeeva',
        form: 'Kavi form',
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
            'Sellers',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: Color.fromARGB(255, 224, 219, 219)),
            child: ListView.builder(
                padding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                shrinkWrap: true,
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.white,
                    elevation: 5.0,
                    shadowColor: Colors.amber,
                    margin: EdgeInsets.all(20),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage(products[index].image.toString()),
                            radius: 30,
                          ),
                          SizedBox(
                            width: 100,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  width: 20,
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
                                              '${products[index].form.toString()}\n',
                                        ),
                                      ]),
                                ),
                                RichText(
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  text: TextSpan(
                                      text: 'Name: ',
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
        bottomNavigationBar: CurvedNavigationBar(
          items: <Widget>[
            Icon(
              Icons.home,
              size: 20,
              color: Colors.white,
            ),
            Icon(
              Icons.notifications,
              size: 20,
              color: Colors.white,
            ),
            Icon(
              Icons.person,
              size: 20,
              color: Colors.white,
            ),
          ],
        ));
  }
}

class Item {
  final String name;
  final String form;
  final int phone;
  final String image;

  Item(
      {required this.name,
      required this.phone,
      required this.form,
      required this.image});

  // ignore: non_constant_identifier_names
  Map List() {
    return {
      'name': name,
      'form': form,
      'price': phone,
      'image': image,
    };
  }
}
