import 'package:flutter/material.dart';

class Profile extends StatefulWidget{
  const Profile({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => ProfileState();
}

class ProfileState extends State<Profile>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: const Color.fromRGBO(79, 119, 223, 1.0),
        actions: [
          TextButton(onPressed: null, child: Row(
            children: const [
              Icon(Icons.edit_outlined, color: Colors.white,),
              Text('Modifier', style: TextStyle(color: Colors.white),)
            ],
          ))
        ],
      ),
      body: SingleChildScrollView(
        //scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 50,),
              Image.asset('assets/images/profil.png'),
              const SizedBox(height: 10,),
              Row(
                children: const [
                  Text('Nom et Prénom: '),
                  SizedBox(width: 15,),
                  Text(' ')
                ],
              ),
              const SizedBox(height: 20,),
              const Text('Informations personnelles', style: TextStyle(fontWeight: FontWeight.bold),),
              const  SizedBox(height: 20,),
              Row(
                children: const [
                  Text('Email: '),
                  SizedBox(width: 15,),
                  Text(' ')
                ],
              ),
              const  SizedBox(height: 10,),
              Row(
                children: const [
                  Text('Tél: '),
                  SizedBox(width: 15,),
                  Text(' ')
                ],
              ),
              const  SizedBox(height: 10,),
              Row(
                children: const [
                  Text('Sexe: '),
                  SizedBox(width: 15,),
                  Text(' ')
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }


}