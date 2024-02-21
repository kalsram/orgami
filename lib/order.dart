import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  Order({super.key});

  @override
  State<Order> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Order> {
  List<Map<String, dynamic>> Grid = [
    {"Name": "Jhon Parsons"},
    {"Name": "Peter"},
    {"Name": "Jobin"},
    {"Name": "Robin"},
    {"Name": "Jhon"},
    {"Name": "Luther"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text('Daily Update',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
          centerTitle: true,
        ),
        body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: const Color.fromARGB(255, 223, 221, 221)),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        style:
                            ButtonStyle(iconSize: MaterialStatePropertyAll(20)),
                        onPressed: () {},
                        child: Text(
                          'ORDERS',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        )),
                    SizedBox(height: 16.0),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 8,
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                              color: Colors.white,
                              elevation: 5.0,
                              shadowColor: Colors.amber,
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: ListTile(
                                  leading: Column(
                                    children: [
                                      CircleAvatar(
                                        backgroundImage:
                                            AssetImage('asset/men.jpg'),
                                      )
                                    ],
                                  ),
                                  title: Text('Millk Quantity: '),
                                  subtitle: Text('Milk Rate: Rs 30 1 Ltr'),
                                  trailing: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            primary: Color.fromARGB(
                                                255, 242, 159, 35),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20))),
                                        onPressed: () {},
                                        child: Text('Accept',
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ),
                                      SizedBox(width: 8.0),
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            primary: Color.fromARGB(
                                                255, 174, 26, 15),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20))),
                                        onPressed: () {},
                                        child: Text('Reject',
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ),
                                    ],
                                  ),
                                ),
                              ));
                        },
                      ),
                    ),
                  ]),
            )),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.white,
          color: const Color.fromARGB(255, 74, 73, 73),
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
