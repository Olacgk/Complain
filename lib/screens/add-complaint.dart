import 'package:flutter/material.dart';

class NewComplain extends StatefulWidget{
  const NewComplain({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => NewComplainState();
}

class NewComplainState extends State<NewComplain>{
  String? _categorie;
  final _formkey = GlobalKey<FormState>();
  final messageController = TextEditingController();
  bool? _anonyme = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(79, 119, 223, 1.0),
        title: const Text('Nouvelle plainte'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formkey,
          child: ListView(
            children: [
              const Text('Catégorie', style: TextStyle(fontSize: 25, color: Color.fromRGBO(79, 119, 223, 1.0),),),
              DropdownButtonFormField(
                decoration: const InputDecoration(
                  hintText: 'Quel est le sujet de la plainte?',
                ),
                value: _categorie,
                onChanged: (String? v) async {
                  setState((){
                    _categorie = v;
                  });
                },
                items: <String>['Produit', 'Personnel', 'Livraison', 'Cadre', 'Autres'].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value, child: Text(value, style: const TextStyle(color: Colors.black),)
                  );
                }).toList(),
                validator: (str) => str == null ? "Ce champ est obligatoire" : null,
              ),
              const SizedBox(height: 30,),
              const Text('Message de plainte', style: TextStyle(fontSize: 25, color: Color.fromRGBO(79, 119, 223, 1.0),),),
              const SizedBox(height: 30,),
              TextFormField(
                controller: messageController,
                decoration: const InputDecoration(
                  labelText: 'Entrez votre message',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.zero
                  ),
                ),
                keyboardType: TextInputType.multiline,
                minLines: 3,
                maxLines: 10,
                validator: (String? value){
                  return (value == null || value == "") ? 'Ce champ est obligatoire' : null;
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Checkbox(
                      focusColor: const Color.fromRGBO(79, 119, 223, 1.0),
                      value: _anonyme,
                      onChanged: (bool? change){
                        setState((){
                          _anonyme = change;
                        });
                      }),
                    const Text('Publier anonynement')
                  ],
                ),
              ),
              ElevatedButton(onPressed: null, child: const Text('Envoyer'), style: ElevatedButton.styleFrom(onSurface: const Color.fromRGBO(79, 119, 223, 1.0)),)
            ],
          ),
        ),
      ),
    );
  }
}