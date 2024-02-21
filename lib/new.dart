import 'package:flutter/material.dart';

class New extends StatefulWidget {
  New({super.key});

  @override
  State<New> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<New> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.all(16.0),
            height: 900,
            width: 1000,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 232, 230, 230),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            child: Column(
              children: [
                Text('New Request'),
                SizedBox(height: 20),
                Center(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            color: Colors.grey,
                            width: 200,
                            height: 200,
                            child: Center(
                              child: Text('1,1'),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                            width: 30,
                          ),
                          Container(
                            color: Colors.grey,
                            width: 200,
                            height: 200,
                            child: Center(
                              child: Text('1,2'),
                            ),
                          ),
                          Expanded(
                              child: Container(
                            color: Colors.white,
                          )),
                          SizedBox(
                            height: 30,
                            width: 30,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                        width: 30,
                      ),
                      Row(
                        children: [
                          Container(
                            color: Colors.grey,
                            width: 200,
                            height: 200,
                            child: Center(
                              child: Text('2,1'),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                            width: 30,
                          ),
                          Container(
                            color: Colors.grey,
                            width: 200,
                            height: 200,
                            child: Center(
                              child: Text('2,2'),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                            width: 30,
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )),
      ),
    ));
  }
}
