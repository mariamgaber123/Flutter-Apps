import 'package:flutter/material.dart';
import 'package:app5/pages/about.dart';
import 'package:app5/pages/api.dart';
import 'package:app5/pages/provider.dart';
import 'package:app5/pages/product.dart';
import 'package:app5/pages/contact.dart';
import 'package:app5/pages/selection.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/about': (context) => About(),
        '/product': (context) => Product(),
        '/provider': (context) => Provider(),
        '/contact': (context) => Contact(),
        '/selection': (context) => Selection(),
        '/api': (context) => Api(),
      },
      theme: ThemeData(
        primarySwatch: Colors.teal,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.brown,
          titleTextStyle: TextStyle(fontSize: 34,fontWeight: FontWeight.bold),
          centerTitle: true,
        ),
        scaffoldBackgroundColor: const Color.fromARGB(255, 248, 247, 244),
        textTheme: TextTheme(bodyMedium: TextStyle(fontSize: 16)),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/about');
              }, child: Text('Go to About',style: TextStyle(fontSize: 24)),
            ),
            SizedBox(height: 15,),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/product');
            }, child: Text('Go to Product',style: TextStyle(fontSize: 24))),
             SizedBox(height: 15,),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/provider');
            }, child: Text('Go to Provider',style: TextStyle(fontSize: 24))),
             SizedBox(height: 15,),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/api');
            }, child: Text('Go to Api',style: TextStyle(fontSize: 24))), 
            SizedBox(height: 15,),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/contact');
            }, child: Text('Go to Contacts',style: TextStyle(fontSize: 24))),
             SizedBox(height: 15,),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/selection');
            }, child: Text('Go to Selections',style: TextStyle(fontSize: 24))),
          ],
        ),
      ),
      )
    
    );
  }
}
