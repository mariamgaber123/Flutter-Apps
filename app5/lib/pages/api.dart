import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:app5/main.dart';
import 'package:http/http.dart';

class Api extends StatefulWidget {
  const Api({super.key});

  @override
  State<Api> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Api> {
  List resBody=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Api'),
      ),
      body:
      Center(
        child: Column(
        children: [
        Image.network("https://tse2.mm.bing.net/th/id/OIP.9i37kmkcwzGQgBL7-yJ14wHaJQ?rs=1&pid=ImgDetMain&o=7&rm=3"),
          MaterialButton(
            color: Colors.black87,
            onPressed: () async {
              var res = await get(Uri.parse("https://api.github.com/users"));

              print(res.body[0]);

              setState(() {
                resBody = jsonDecode(res.body);
              });

              print(resBody.length);
            },
            child: const Text(
              "API call",
              style: TextStyle(fontSize: 40, color: Colors.white),
            ),
          ),
          SizedBox(height: 20),

          Expanded(
            child: ListView(
              children: resBody.map(
                    (u) => Center(
                      child: Text(
                        "name: ${u['login']} \nid: ${u['site_admin']}",
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),

        ] 

        ),
      )
    );

    
  }
}

