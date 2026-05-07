import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Bage5(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: const Color.fromARGB(255, 241, 119, 13)),
      routes: {
        "home": (context) => Home(),
        "home": (context) => Bage4(),
        "about": (context) => about(),
      },
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(229, 7, 9, 45),
        title: const Text(
          "Home",
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 30,
            fontWeight: FontWeight.bold,
            backgroundColor: Color.fromARGB(19, 45, 126, 121),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Image.asset("images/生成-LoRA-调优照片.png", fit: BoxFit.cover),
          ),
          Center(
            child: Column(
              children: [
                MaterialButton(
                  onPressed: () {
                    Navigator.of(
                      context,
                    ).push(MaterialPageRoute(builder: (context) => bage1()));
                  },
                  child: Text("Bage1"),
                  color: Color.fromARGB(255, 96, 139, 112),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.of(
                      context,
                    ).push(MaterialPageRoute(builder: (context) => Bage2()));
                  },
                  child: Text("Bage2"),
                  color: Colors.amberAccent,
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.of(
                      context,
                    ).push(MaterialPageRoute(builder: (context) => Bage3()));
                  },
                  child: Text("Bage3"),
                  color: Color.fromARGB(255, 255, 64, 67),
                ),
                MaterialButton(onPressed: (){
                  
                 Navigator.of(context,).push(MaterialPageRoute(builder: (context)=>Bage4()));
                },child: Text("data"),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class about extends StatelessWidget {
  const about({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        title: const Text("About"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu, size: 33, color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.message, size: 33, color: Colors.black),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, size: 33, color: Colors.black),
          ),
        ],
      ),
      body: Center(child: Text("Mariam", style: TextStyle(fontSize: 33))),
    );
  }
}

class bage1 extends StatelessWidget {
  const bage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Bage1",
            style: TextStyle(color: Colors.black54, fontSize: 33),
          ),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("1", style: TextStyle(color: Colors.black54, fontSize: 33)),
            Text("1", style: TextStyle(color: Colors.black54, fontSize: 33)),
            Text("1", style: TextStyle(color: Colors.black54, fontSize: 33)),
            Text("1", style: TextStyle(color: Colors.black54, fontSize: 33)),
            Text("1", style: TextStyle(color: Colors.black54, fontSize: 33)),
          ],
        ),
      ),
    );
  }
}

class Bage2 extends StatelessWidget {
  const Bage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Bage2",
            style: TextStyle(color: Colors.black54, fontSize: 33),
          ),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  color: Colors.deepOrange,
                  onPressed: () {
                    print("mariam");
                  },
                  child: Text("data"),
                ),
                IconButton(
                  onPressed: () {
                    print("abdo");
                  },
                  icon: Icon(Icons.pages, size: 50),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
    );
  }
}

class Bage3 extends StatefulWidget {
  const Bage3({super.key});

  @override
  State<Bage3> createState() => _Bage3State();
}

int i = 0;

class _Bage3State extends State<Bage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Bage2",
            style: TextStyle(color: Colors.black54, fontSize: 33),
          ),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                i++;
              });

              print(i);
            },
            icon: Icon(Icons.add),
          ),
          Text("Counter $i"),
          IconButton(
            onPressed: () {
              setState(() {
                i--;
              });
              print(i);
            },
            icon: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}

int index = 0;

class Bage4 extends StatefulWidget {
  const Bage4({super.key});

  @override
  State<Bage4> createState() => _Bage4State();
}

class _Bage4State extends State<Bage4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (val) {
          setState(() {
            index = val;
          });
        },
        currentIndex: index,
        backgroundColor: Colors.deepOrange,
        selectedItemColor: CupertinoColors.tertiarySystemBackground,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
        ],
      ),
    );
  }
}

class Bage5 extends StatelessWidget {
  const Bage5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Bage5",
            style: TextStyle(color: Colors.black54, fontSize: 33),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 25, 116, 162),
      ),
      body: Center(
        child: Column(
          children: [
            MaterialButton(
              onPressed: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => Home()));
              },
              child: Text("Bage1"),
              color: const Color.fromARGB(255, 96, 139, 112),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => Bage2()));
              },
              child: Text("Bage2"),
              color: Colors.amberAccent,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => Bage3()));
              },
              child: Text("Bage3"),
              color: const Color.fromARGB(255, 255, 64, 67),
            ),
            MaterialButton(
              onPressed: () {},
              child: Text("Bage4"),
              color: const Color.fromARGB(255, 15, 31, 27),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pushNamed("about");
              },
              child: Text("Bage5"),
              color: const Color.fromARGB(255, 38, 113, 151),
            ),
            MaterialButton(
              onPressed: () {},
              child: Text("Bage6"),
              color: const Color.fromARGB(255, 59, 207, 153),
            ),
            MaterialButton(
              onPressed: () {},
              child: Text("Bage7"),
              color: const Color.fromARGB(255, 135, 18, 114),
            ),
            MaterialButton(
              onPressed: () {},
              child: Text("Bage8"),
              color: const Color.fromARGB(255, 136, 108, 6),
            ),
          ],
        ),
      ),
    );
  }
}

class finlaBage extends StatelessWidget {
  const finlaBage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "FinalBage",
            style: TextStyle(color: Colors.black54, fontSize: 33),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 210, 255, 95),
      ),
      body: Center(
       
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
            },
            child: Text("botton"),
          
          ),
           ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Bage5()));
        },child: Text("press"),style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),),
          ],
        ) 
      ,
        
      ),
    );
  }
}

class providerBage extends StatefulWidget {
  const providerBage({super.key});

  @override
  State<providerBage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<providerBage> {
  String data ="mariam";
  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create:(context)=>Mymodel(),
      child:Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "providerBage",
            style: TextStyle(color: Colors.black54, fontSize: 33),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 210, 255, 95),
      ),
      body: Consumer<Mymodel>(builder: (context,model,child){
        return Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(model.data,style: TextStyle(fontSize: 40),),
            SizedBox(height: 20),
            ElevatedButton(
           
              onPressed: (){
             
              model.change();
            }, child: Text("press Me",style: TextStyle(fontSize: 40))),
          ],
          ),
        );
      },
      ),
      ),
      );
    
   
  }
}


class Mymodel extends ChangeNotifier {
  String  data="mariam";
  change(){
      if (data == "home") {
      data = "mariam";
    } else {
      data = "home";
    }
    notifyListeners();
  }
  
}