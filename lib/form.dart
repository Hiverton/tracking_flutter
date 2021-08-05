import 'package:flutter/material.dart';

class FormReclamacao extends StatefulWidget {
  @override
  _FormReclamacaoState createState() => _FormReclamacaoState();
}

class _FormReclamacaoState extends State<FormReclamacao> {

  final _formKey = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.pink.shade800,
                Colors.purple.shade800,
              ],
            )
          ),
        ),
        title: Text('Informe a reclamação', style: const TextStyle(fontSize: 18)),
        backgroundColor: Colors.pink,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 50,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        style: const TextStyle(color: Colors.black),
                        
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: ElevatedButton(
                          onPressed: () {
                                
                            if (_formKey.currentState!.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('Processing Data')),
                              );  

                              showDialog<String>(
                                  
                                  barrierDismissible: true,
                                  context: context,
                                  builder: (BuildContext context) => AlertDialog(
                                    backgroundColor: Colors.white,
                                    title: const Text('Reclamação registrada com sucesso!', style: TextStyle(color: Colors.black),),
                                    content: const Text('Em breve entraremos em contato', style: TextStyle(color: Colors.black),),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () => Navigator.pop(context, 'Cancelar'),
                                        child: const Text('Cancelar', style: TextStyle(color: Colors.black),),
                                      ),
                                      TextButton(
                                        onPressed: () => Navigator.of(context).pushReplacementNamed('/home'),
                                        child: const Text('OK', style: TextStyle(color: Colors.black),),
                                      ),
                                    ],
                                  ),
                                );

                            }
                          },
                          child: const Text('Enviar'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('AlertDialog Title'),
          content: const Text('AlertDialog description'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      ),
      child: const Text('Show Dialog'),
    );
  }
}