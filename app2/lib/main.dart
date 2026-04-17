import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
   runApp(
    const MaterialApp(
      home: Home(),
    ),
  );
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context)=>model()),
      ChangeNotifierProvider(create: (context)=>model2())
    ],
     child: Scaffold(
     appBar:AppBar(title:Center(child:Text("State",style: TextStyle(fontSize: 50,color:Color.fromARGB(255, 37, 40, 230)),),) ,),
     body :Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Consumer<model>(builder: (context,model,child){

          return Text(model.data,style: TextStyle(fontSize: 24,color:Color.fromARGB(255, 204, 52, 22)),);
          
        },
        
        ),
         SizedBox(height: 10),
        Consumer<model2>(builder: (context,model2,child){
          return Text(model2.data,style: TextStyle(fontSize: 24,color:Color.fromARGB(255, 236, 5, 240)),);
        },), SizedBox(height: 10),
        Consumer<model>(builder: (context,model,child){
          return ElevatedButton( child: Text("Change 1",style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 15, 15, 15)),),onPressed: ()=>{model.changedata()},);
        },), SizedBox(height: 10),
        Consumer<model2>(builder: (context,model2,child){
          return ElevatedButton( child: Text("Change 2",style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 0, 0, 0)),),onPressed: ()=>{model2.changedata()},);
        },), SizedBox(height: 10),
      ],), 
     ),),); }}
     
  

class model extends ChangeNotifier{
  String data="mariam";
  get getData1 => data;
  changedata(){
     if (data == "home") {
      data = "mariam";
    } else {
      data = "home";
    }
      notifyListeners();
  }
 
}
class model2 extends ChangeNotifier{
  String data="home";
  get getData2 => data;
  changedata(){
     if (data == "home") {
      data = "mariam";
    } else {
      data = "home";
    }
      notifyListeners();
  }
 
}