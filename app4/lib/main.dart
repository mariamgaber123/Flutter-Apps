import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: providerBage()
     
    );
  }
}
class providerBage extends StatefulWidget {
  const providerBage({super.key});

  @override
  State<providerBage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<providerBage> {
 String data="Happy";
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:(context)=>Mymodel(),
      child:Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            " Bage",
            style: TextStyle(color: Colors.black54, fontSize: 33),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 15, 8, 139),
      ),
      body: Consumer<Mymodel>(builder: (context,model,child){
        return Center(
          child: Column(mainAxisAlignment:MainAxisAlignment.center
          , children: [
        Text(model.change3(),style: TextStyle(fontSize: 40),),
        SizedBox(height: 10,),
        ElevatedButton(onPressed: (){
          model.change1();
        },style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
         child: Text("Happy ${model.i}",style:TextStyle(fontSize: 40),)),
        SizedBox(height: 10,),
        ElevatedButton(onPressed: (){
          model.change2();
        }, child: Text("Sad  ${model.j}",style:TextStyle(fontSize: 40))),
          ],
          ),
        );
      },
      ),
      ),
      );
    
   
  }
}



class Mymodel extends ChangeNotifier{
  String data = "Happy";
  int i=0;
  int j=0;
   change1(){
    
    i++;
    notifyListeners();
  }

  change2(){
    j++;
    notifyListeners();
  }

  change3(){
    if(i>j){
    return  data="Happy";
    }
    else if(i<j){
    return  data="Sad";
    }
    else{
      return data="Try";
    }
    
  
  }
  
}
