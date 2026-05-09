import 'package:flutter/material.dart';
import 'package:app5/main.dart';
import 'package:app5/pages/api.dart';
import 'package:shared_preferences/shared_preferences.dart'; 


class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('About')),
      body: Center(
        child: Column(
          children: [
             SizedBox(height: 200,),
            Container(
              width: 250,
              height: 250,
              // padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color.fromARGB(136, 121, 85, 72),
                border: Border.all(
                  color: const Color.fromARGB(234, 27, 21, 6),
                  width: 4,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(50),
                shape: BoxShape.rectangle,
              ),
              child: Center(
                child: Text(
                  "Commonly used for positioning or styling",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            // SizedBox(height: 50,),///equal padding
            Padding(padding: EdgeInsets.all(50)),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/api');
              },
              child: Text("Go to Api"),
            ),
            CircleAvatar(
              radius: 50,
              backgroundColor: const Color.fromARGB(228, 51, 24, 17),
              child: Icon(
                Icons.api,
                size: 50,
                color: Colors.white,
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                prefs.setString("my_name", "Mariam");
                print("1");
              },
              child: Text("Save My Name"),
            ),
            ElevatedButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                String? myName = prefs.getString("my_name");
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      "My Name is $myName",
                      style: TextStyle(fontSize: 30),
                    ),
                    duration: Duration(seconds: 1),
                    backgroundColor: const Color.fromARGB(255, 7, 85, 149),
                  ),
                );
              },
              child: Text("Get My Name"),
            ),
          ],
          
        ),
        
      ),
      
    );
  }
}
