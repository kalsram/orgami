import 'package:flutter/material.dart';

class Request extends StatefulWidget {
  const Request({super.key});

  @override
  State<Request> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Request> {
  List<Map<String, dynamic>> Grid = [
    {"Name": "Jhon Parsons", "address": "Goa,Abc Form"},
    {"Name": "Peter", "address": "Pmna,Kovai Form"},
    {"Name": "Jobin", "address": "Kannur,Abc Form"},
    {"Name": "Robin", "address": "Kozhikode,Lkm form"},
    {"Name": "Jhon", "address": "Idukki,Pob Form"},
    {"Name": "Luther", "address": "Aluva,Abc Form"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('New Request'),
              SizedBox(height: 16.0),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                  ),
                  itemCount: 6, // Replace with your actual item count
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          gradient: LinearGradient(
                            colors: [
                              Colors.grey,
                              Colors.white
                            ], // Specify your colors here
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                        child: Column(children: [
                          const CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('asset/men.jpg'),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          ListTile(
                            leading: Text(Grid[index]["Name"]),
                            subtitle: Text(Grid[index]["address"]),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      primary:
                                          Color.fromARGB(255, 245, 162, 38)),
                                  onPressed: () {},
                                  child: Text(
                                    'Accept',
                                    style: TextStyle(color: Colors.white),
                                  )),
                              Spacer(),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      primary:
                                          Color.fromARGB(255, 152, 33, 24)),
                                  onPressed: () {},
                                  child: Text('Rejected',
                                      style: TextStyle(color: Colors.white))),
                            ],
                          )
                        ]));
                  },
                ),
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
