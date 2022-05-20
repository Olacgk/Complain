import 'package:flutter/material.dart';

import 'login.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  final _mailController = TextEditingController();
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/back.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 80,),
                const Text('Creer  un compte', style: TextStyle(fontSize: 50), textAlign: TextAlign.center,),
                const SizedBox(height: 50,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _mailController,
                          keyboardType: TextInputType.text,
                          decoration:  const InputDecoration(
                            icon: Icon(Icons.mail_outline, color: Colors.lightBlueAccent),
                            hintText: 'Email address...',
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 8.0),
                          ),
                          validator: (String? v) {
                            return (v == null || v == "")
                                ? "This field is required !"
                                : null;
                          },
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        TextFormField(
                          controller: _nameController,
                          keyboardType: TextInputType.text,
                          decoration:  const InputDecoration(
                            icon: Icon(Icons.person_pin_outlined, color: Colors.lightBlueAccent),
                            hintText: 'Email address...',
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 8.0),
                          ),
                          validator: (String? v) {
                            return (v == null || v == "")
                                ? "This field is required !"
                                : null;
                          },
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        TextFormField(
                          controller: _passwordController,
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          decoration: const InputDecoration(
                            icon: Icon(Icons.lock_outline, color: Colors.lightBlueAccent,),
                            hintText: 'password...',
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 8.0),
                          ),
                          validator: (String? v) {
                            return (v == null || v == "")
                                ? "This field is required !"
                                : null;
                          },
                        ),
                        const SizedBox(height: 15,),
                        TextFormField(
                          controller: _confirmPasswordController,
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          decoration: const InputDecoration(
                            icon: Icon(Icons.lock_outline, color: Colors.lightBlueAccent),
                            hintText: ' confirm the password...',
                            contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
                          ),
                          validator:(String? v) {
                            if(_passwordController.text != _confirmPasswordController.text){
                              return 'Please re-enter the password';
                            }else{
                              return null;
                            }
                          },
                        ),
                        const SizedBox(height: 30,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Row(
                            children: const [
                              Text('Inscription', style: TextStyle(fontSize: 25),),
                              SizedBox(width: 50,),
                              FloatingActionButton.small(onPressed: null,
                                child: Icon(Icons.navigate_next),backgroundColor: Color.fromRGBO(79, 119, 223, 1.0),)
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 30.0),
                          child: Row(
                            children: [
                              const Text('Vous avez un compte?'),
                              const SizedBox(width: 40,),
                              InkWell(
                                onTap: ()=>{
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Login()))
                                },
                                child: const Text('Connexion'),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ) ,
    );
  }

}