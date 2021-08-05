import 'package:flutter/material.dart';

class FormPesquisar extends StatefulWidget {
  @override
  _FormPesquisarState createState() => _FormPesquisarState();
}

class _FormPesquisarState extends State<FormPesquisar> {

  final _formKey = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
    
    final firstDate = DateTime(DateTime.now().year - 120);
    final lastDate = DateTime.now();

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
        title: Text('Pesquisa', style: const TextStyle(fontSize: 18)),
        backgroundColor: Colors.pink,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 10,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Nº do pedido",
                          fillColor: Colors.white,
                          hintStyle: TextStyle(color: Colors.purple),
                          labelStyle: TextStyle(color: Colors.purple),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                              color: Colors.purple,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                              color: Colors.purple,
                              width: 2.0,
                            ),
                          ),
                        ),
      
                        style: const TextStyle(color: Colors.black),
                      ),
                      
                      SizedBox(height: 10,),

                      TextFormField(
                        keyboardType: TextInputType.datetime,
                        onTap: (){
                          showDatePicker(
                            context: context,
                            initialDate: new DateTime.now(),
                            firstDate: DateTime(2019),
                            lastDate: DateTime(2030)
                          ).then((date) {
                              print(date);
                          });
                        },
                        decoration: InputDecoration(
                          labelText: "Data inicial",
                          hintStyle: TextStyle(color: Colors.purple),
                          labelStyle: TextStyle(color: Colors.purple),
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                              color: Colors.purple,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                              color: Colors.purple,
                              width: 2.0,
                            ),
                          ),
                        ),
                        style: const TextStyle(color: Colors.black),
                      ),

                      SizedBox(height: 10,),

                      TextFormField(
                        keyboardType: TextInputType.datetime,
                        decoration: InputDecoration(
                          
                          labelText: "Data final",
                          hintStyle: TextStyle(color: Colors.purple),
                          labelStyle: TextStyle(color: Colors.purple),
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                              color: Colors.purple,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                              color: Colors.purple,
                              width: 2.0,
                            ),
                          ),
                        ),
                        style: const TextStyle(color: Colors.black),
                      ),
      
                      SizedBox(height: 10,),

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacementNamed('/home');
                          },
                          child: const Text('Pesquisar'),
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

getData(){
  final firstDate = DateTime(DateTime.now().year - 120);
    final lastDate = DateTime.now();

    return InputDatePickerFormField(
      firstDate: firstDate,
      lastDate: lastDate,

      onDateSubmitted: (date) {
        print(date);
      
      },
      onDateSaved: (date) {
        print(date);
      },
    );
  }
