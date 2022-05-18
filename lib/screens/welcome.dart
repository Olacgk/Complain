import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/back.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 200.0,),
              Image.asset('assets/images/logo.png', fit: BoxFit.cover,),
              const SizedBox(height: 200.0,),
              Container(
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
                    border: Border.all(color: Colors.grey, style: BorderStyle.solid, width: 1.0)
                  ),
                  child: const MaterialButton(
                    onPressed: null,
                    child: Text('Connexion',
                        style: TextStyle(color: Colors.black, fontSize: 15.0)),
                  )
              ),
              const SizedBox(height: 20,),
              Container(
                  width: 160,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
                      border: Border.all(color: Colors.grey, style: BorderStyle.solid, width: 1.0)
                  ),
                  child: const MaterialButton(
                    onPressed: null,
                    child: Text('Inscription',
                        style: TextStyle(color: Colors.black, fontSize: 15.0)),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }

}