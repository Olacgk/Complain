import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  const Home({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() =>  HomeState();
}

class HomeState extends State<Home>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Historique des plaintes'),
        backgroundColor: const Color.fromRGBO(79, 119, 223, 1.0),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/Nature-Quotes.png'),
                fit: BoxFit.cover
              ),
              ),
              child:null,
            )
          ],
        )
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
        backgroundColor: Color.fromRGBO(79, 119, 223, 1.0),
      ),
    );
  }

}