import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child :Container(
            color: Colors.green,
            child: Center(child: Text('Flex 2')),
          ) // Container
          ), 
          Expanded(
            flex: 1,
            child: Container(
            color: Colors.orange,
            child: Center(child: Text('Flex 1')),
          ),
          )  // Container,
        ],
      ), // Column
    ); // Scaffold
  }
}
