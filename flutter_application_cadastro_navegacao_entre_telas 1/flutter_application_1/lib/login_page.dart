import 'package:flutter/material.dart';
import 'package:flutter_application_1/cadastro_page.dart';
import 'package:flutter_application_1/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

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
                  width: 400,
                  height: 200,
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
                    labelText: 'Email',
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
                    labelText: 'Senha',
                    border: OutlineInputBorder(),
                    ),
                   ),
                   SizedBox(height: 15),
                    ElevatedButton(
                      onPressed: () {
                        if (email== 'elisantos13@it.com.br' && senha=='123'){
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => HomePage()),
                          );
                      
                       }else {
                        print('email ou senha inválido');
                      }
                      },
      
                       child:Text('Entrar'),
                     ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                       children: 
                         [ElevatedButton(
                          onPressed: () {
                            {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (context) => CadastroPage()),
                              );
                          
                           
                          }
                          },
                             
                           child:Text('Cadastre-se'),
                         ),
                       ],
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
          child: Text('It - Serviços Itinerantes'),
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