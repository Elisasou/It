import 'package:flutter/material.dart';
import 'package:flutter_application_1/cadastro_page.dart';
import 'package:flutter_application_1/login_page.dart';

import 'home_controller.dart';


// class HomePage extends StatelessWidget{
//    const HomePage({Key? key}) : super(key: key);
    
//   @override
//   Widget build(BuildContext context) {
//     var controller = HomeController.of(context);
//     final size = MediaQuery.of(context).size;
//     final navigation= Navigator.of(context);
//     final theme = Theme.of(context);
//     return Scaffold(
//       appBar: AppBar(
//         title:Text('Home'),
//       ),
//       body: Center(
//           child: Text('Flutterando 4 ${controller.value}'),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add),
//         onPressed:(){
//           controller.increment();
//           print('clicou');
//         } ,
//         ) ,
//     );
//   }
//   }

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final list = <String>[];
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {

    //final names = ['Joao', 'Maria', 'Joaquina','Elisa'];
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
              'assets/imgs/Elisa.jpg'
              ),
              ),
              accountName: Text('Elisa Souza'),
              accountEmail: Text('elisantos13@it.com.br'),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Início'),
              subtitle: Text('Tela de início'),
              onTap: () {
                //print('home');
                
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Perfil'),
              subtitle: Text('Cadastro'),
              onTap: () {  Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => CadastroPage()
                          ),
                          );
                //print('home');
                
              },
            ),
                ListTile(
              leading: Icon(Icons.home),
              title: Text('Logout'),
              subtitle: Text('Finalizar sessão'),
              onTap: () {
                Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => LoginPage()
                          ),
                          );
                //print('home');
                
              },
            ),

          ],
        )
      ),
      appBar: AppBar(
        title:const Center(
          child: Text('It - Serviços Itinerantes'),
          ),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: 200,
              width: 600,
              child: Image.asset(
                'assets/imgs/It.png',
              fit: BoxFit.cover,
            ),
              ),
              //Container(
              //color: Colors.blue,
              //height:80,
              //width:80,
              //),
              
          ],
        ),
      ),
    );
  }
}