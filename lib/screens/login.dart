import 'package:complain_app/screens/home.dart';
import 'package:complain_app/screens/signup.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => LoginState();
}

class LoginState extends State<Login>{
  final _formKey = GlobalKey<FormState>();
  final _mailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/back.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            children: [Center(
              child: Column(
                children: [
                  const SizedBox(height: 100,),
                  Image.asset('assets/images/logo.png', width: 100, height: 100,),
                  const SizedBox(height: 80,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: _mailController,
                            keyboardType: TextInputType.name,
                            decoration: const InputDecoration(
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
                            height: 20.0,
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
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 50,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Row(
                      children: [
                        Text('Connexion', style: TextStyle(fontSize: 25),),
                        SizedBox(width: 100,),
                        FloatingActionButton.small(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));},
                        child: Icon(Icons.navigate_next),backgroundColor: Color.fromRGBO(79, 119, 223, 1.0),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 70.0),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUp()));
                          },
                          child: const Text('Inscription'),
                        ),
                        const SizedBox(width: 70,),
                        const InkWell(
                          onTap: null,
                          child: Text('Mot de passe oublié?'),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),]
          ),
        )
    );
  }

}