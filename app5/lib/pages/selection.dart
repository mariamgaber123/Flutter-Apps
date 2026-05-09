import 'package:flutter/material.dart';

class Selection extends StatefulWidget {
  const Selection({super.key});

  @override
  State<Selection> createState() => _SelectionState();
}

class _SelectionState extends State<Selection> {
  String gender="Male";
  bool dark=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Selection"),),
      body: Center(
        child: Column(
          children: [
           Radio(value: "Male",
                 groupValue: gender,
                 onChanged: (value) {
                  setState(() {
                    gender =value!;
                  });
                 },

           ),
           Text("Male"),
           Radio(value: "Female",
           groupValue: gender,
           onChanged: (value) {
             setState(() {
               gender =value!;
             });
           },
           ),
           Text("Female"),
             Spacer(),
             Switch(value: dark, onChanged: (value){
              setState(() {
                dark=value;
              });
             }

             ),
           
         IconButton(onPressed: (){
          showDialog(context: context, builder: (context)=>AlertDialog(
            title: Text("Alert Dialog"),
                  content: Text("Do you want to add?"),
                  actions: [
                    ElevatedButton(onPressed: (){}, child: Text("Done")),
                    ElevatedButton(onPressed: (){Navigator.pop(context);
                    }, child: Text("Cancel")),
                  ],
          )

          );
         }
         , icon: Icon(Icons.add)),
          GestureDetector(
            onTap: () {
              print('Delete');
              showModalBottomSheet(
                context: context,
                builder: (context) => SafeArea(
                  child: Container(
                    width: double.infinity,
                    child: Column(
                      children: [
                        SizedBox(height: 100),
                        Text("Bottom Sheet"),
                        SizedBox(height: 100),
                      ],
                    ),
                  ),
                ),
              );
            },
            child: Icon(Icons.delete, size: 32, color: const Color.fromARGB(255, 18, 18, 18)),
          ),
           InkWell(
            onTap: () {
              print('Close');
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    "This is Snackbar",
                    style: TextStyle(fontSize: 30),
                  ),
                  duration: Duration(seconds: 1),
                  backgroundColor: Colors.blue,
                ),
              );
            },
            child: Icon(Icons.close, size: 32, color: const Color.fromARGB(255, 210, 41, 41)),
          ),

          ],
         
         
        ),
      
      ),
      
      floatingActionButton:  FloatingActionButton(onPressed: (){
              print("Clicked");
              
            },child:Icon(Icons.add),),
            
    );
  }
}