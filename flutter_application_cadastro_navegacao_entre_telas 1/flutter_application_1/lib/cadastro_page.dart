import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page.dart';
import 'package:flutter_application_1/login_page.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPage();
}

class _CadastroPage extends State<CadastroPage> {

  String email = '';
  String senha = '';

  Widget _body(){
    return SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  height: 100,
                  child: Image.asset(
                    'assets/imgs/It.png'
                    ),
                ),
                TextField(
                  onChanged: (text){
                    email = text;
                  },
      
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Nome',
                    border: OutlineInputBorder(),
                    ),
                   ),

                    SizedBox(height: 10),

                    
                    TextField(
                       onChanged: (text){
                    senha = text;
                  },
                     // obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'CPF',
                    border: OutlineInputBorder(),
                    ),
                   ),

                   SizedBox(height: 10),
                    TextField(
                       onChanged: (text){
                    senha = text;
                  },
                      obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Endereço',
                    border: OutlineInputBorder(),
                    ),
                   ),
                   
                   SizedBox(height: 10),

                   SizedBox(height: 10),
                    TextField(
                       onChanged: (text){
                    senha = text;
                  },
                      obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Email de Login',
                    border: OutlineInputBorder(),
                    ),
                   ),
                    TextField(
                       onChanged: (text){
                    senha = text;
                  },
                      obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    border: OutlineInputBorder(),
                    ),
                   ),

                   SizedBox(height: 10),
                    TextField(
                       onChanged: (text){
                    senha = text;
                  },
                      obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Confirme sua senha',
                    border: OutlineInputBorder(),
                    ),
                   ),

                   SizedBox(height: 15),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => LoginPage()),
                          );
                      
                       
                      },
                      
      
                       child:Text('Cadastrar'),
                     ),
                    
                   ],
                  ),
                ),
              ),
      );
  }

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Center(
          child: Text('It - Cadastro'),
          ),
      ),
      body: Stack(
        children: [
          //const Text('na palma da sua mão'),
          _body(),
        ],
      ) 
          );
         
  }
}