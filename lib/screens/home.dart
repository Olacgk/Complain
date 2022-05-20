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
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/Nature-Quotes.png'),
                  fit: BoxFit.cover
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assets/images/profil.png',),
                  const SizedBox(width: 20.0,),
                  Column(
                    children: [
                      const SizedBox(height: 90.0,),
                      Text('name'),
                      Text('email')
                    ],
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home_outlined, color: Color.fromRGBO(79, 119, 223, 1.0),),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.person_outline, color: Color.fromRGBO(79, 119, 223, 1.0),),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Color.fromRGBO(79, 119, 223, 1.0),),
              title: Text('Paramètre'),
            ),
            ListTile(
              leading: Icon(Icons.info_outline, color: Color.fromRGBO(79, 119, 223, 1.0),),
              title: Text('A propos  de nous'),
            ),
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