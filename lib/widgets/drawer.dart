import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget{
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Drawer(
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
               const SizedBox(height: 40.0,),
               Image.asset('assets/images/profil.png',),

             ],
           ),
         ),
         const ListTile(
           leading: Icon(Icons.home_outlined, color: Color.fromRGBO(79, 119, 223, 1.0),),
           title: Text('Home'),
         ),
         const ListTile(
           leading: Icon(Icons.person_outline, color: Color.fromRGBO(79, 119, 223, 1.0),),
           title: Text('Profile'),
         ),
         const ListTile(
           leading: Icon(Icons.settings, color: Color.fromRGBO(79, 119, 223, 1.0),),
           title: Text('Paramètre'),
         ),
         const ListTile(
           leading: Icon(Icons.info_outline, color: Color.fromRGBO(79, 119, 223, 1.0),),
           title: Text('A propos  de nous'),
         ),
       ],
     ),
   );
  }

}