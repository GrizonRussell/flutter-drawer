import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class  MyApp extends StatelessWidget {
  const  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green,
      // leading: Icon(Icons.store_mall_directory),
      title: Text("Grizon Store",),
      centerTitle: true,
      //actions: [IconButton.outlined(onPressed: (){}, icon: Icon(Icons.shopping_cart),),]
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){print("Grizon Russell B. Sacay");},child: Icon(Icons.touch_app_rounded),backgroundColor: Colors.green,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.add_a_photo_outlined, size: 300.0,),
          Text("Blythe", style: TextStyle(color: Colors.red, fontSize: 50),)
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green[200],
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: "History"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: "Account"),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.green[400],
        child: Column(children: [
          DrawerHeader(child: Icon(Icons.camera_enhance_rounded,size: 55.0,),
          ),
          ListTile(
            title: Text("Mel Angelo Macario"),
            onTap: (){
              print("Mel Angelo Macario");
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text("Jecham Wook"),
            onTap: (){
              print("Jecham Wook");
              Navigator.pop(context);
            }
          ),
                    ListTile(
            title: Text("Ralph Gallegos"),
            onTap: (){
              print("Raplh Gallegos");
              Navigator.pop(context);
            }
          ),
                    ListTile(
            title: Text("David Gabonada"),
            onTap: (){
              print("David Gabonada");
              Navigator.pop(context);
            }
          ),
                    ListTile(
            title: Text("John Nathaniel Jaso"),
            onTap: (){
              print("John Nathaniel Jaso");
              Navigator.pop(context);
            }
          ),
        ]),
      ),
    );
  }
}