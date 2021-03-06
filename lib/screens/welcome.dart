import 'package:complain_app/screens/signup.dart';
import 'package:flutter/material.dart';
import 'login.dart';

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
                    borderRadius: const BorderRadius.all(Radius.elliptical(10, 10)),
                    border: Border.all(color: Colors.grey, style: BorderStyle.solid, width: 1.0)
                  ),
                  child: MaterialButton(
                    onPressed: ()=>{
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Login()))
                    },
                    child: const Text('Connexion',
                        style: TextStyle(color: Colors.black, fontSize: 15.0)),
                  )
              ),
              const SizedBox(height: 10,),
              Container(
                  width: 160,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.elliptical(10, 10)),
                      border: Border.all(color: Colors.grey, style: BorderStyle.solid, width: 1.0)
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUp()));
                    },
                    child: const Text('Inscription',
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