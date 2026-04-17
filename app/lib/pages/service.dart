import 'package:flutter/material.dart';
import 'home.dart';

class Service extends StatelessWidget {
  const Service({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Service",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 30 )),
        backgroundColor: Color.fromARGB(205, 111, 157, 204),
        centerTitle: true,
        
    ),
    body: Center(child: Text("Service Page",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 40 )),),
    );
  }
}
