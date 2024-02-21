import 'package:flutter/material.dart';
import 'package:orgami/buyer.dart';
import 'package:orgami/order.dart';
import 'package:orgami/request.dart';
import 'package:orgami/seller.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: AlignmentDirectional.center,
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      width: 120.0,
                      height: 100.0,
                      child: Image.asset('asset/shopping man2.jpg')),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Request()),
                        );
                      },
                      child: Text(
                        'New Request',
                        style: TextStyle(color: Colors.white),
                      )),
                  Container(
                      width: 100.0,
                      height: 100.0,
                      child: Image.asset('asset/shopping.jpg')),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Seller()),
                        );
                      },
                      child: Text(
                        'View Sellers',
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      width: 120.0,
                      height: 100.0,
                      child: Image.asset('asset/shopping man2.jpg')),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Buyer()),
                        );
                      },
                      child: Text(
                        'View Buyers',
                        style: TextStyle(color: Colors.white),
                      )),
                  Container(
                      width: 100.0,
                      height: 100.0,
                      child: Image.asset('asset/shopping.jpg')),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Order()),
                        );
                      },
                      child: Text(
                        'Daily Updates',
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
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
