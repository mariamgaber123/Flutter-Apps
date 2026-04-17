import 'package:flutter/material.dart';
import 'service.dart';
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cars",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 30 )),
        backgroundColor: Color.fromARGB(205, 147, 45, 45),
        centerTitle: true,
        
    ),
    body: Center(child: ElevatedButton( onPressed : (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Service()));} ,child: Text("press on")),),
    );
  }
}
