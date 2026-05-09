import 'package:flutter/material.dart';
import 'package:app5/main.dart';
import 'package:provider/provider.dart';

class Provider extends StatefulWidget {
  const Provider({super.key});

  @override
  State<Provider> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Provider> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:(context)=>Model(),
      child: Scaffold(
          appBar: AppBar(
        title: Text('Provider'),
      ),
      body:Consumer<Model>(builder: (context,model,child){
            return Center(
              child: Column(
                children: [

                ],
              ),
       );
      },),
      ),
    );

  }
}

class Model extends ChangeNotifier{
  
}

