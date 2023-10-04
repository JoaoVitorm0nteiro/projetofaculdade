//SEGUNDO WIDGET
import 'package:flutter/material.dart';
import 'package:projeto_faculdade/pages/quiz_start_page.dart';

class InsertName extends StatelessWidget {
  final nomeInput = TextEditingController();

  final String title;
  InsertName({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Container(
            //container pai
            //BACKGROUND E OPACIDADE ABAIXO
            margin: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const NetworkImage(
                    'https://mir-s3-cdn-cf.behance.net/projects/404/990b03137098095.Y3JvcCwxMDgwLDg0NCwwLDExNw.png'),
                fit: BoxFit.contain,
                colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.1),
                  BlendMode.dstATop,
                ),
              ),
            ),
            child: Column(
              //column onde ficarão os widgets
              children: <Widget>[
                Container(
                  //por a logo da faculdade
                  width: 300,
                  height: 100,
                  margin: const EdgeInsets.all(40),
                  decoration: const BoxDecoration(
                      //border: Border.all(color: Colors.black),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://www.unifametro.edu.br/cvtt/wp-content/uploads/2019/07/logo-unifametro-01.png"),
                          fit: BoxFit.contain)),
                ),
                const Text(
                  'Quiz UniFametro',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                Container(
                  //Container do textField
                  //decoration:
                  //BoxDecoration(border: Border.all(color: Colors.black)),
                  margin: const EdgeInsets.all(20),
                  //CAMPO PARA INSERIR SEU NOME
                  child: SizedBox(
                      height: 50,
                      width: 170,
                      child: TextField(
                          controller: nomeInput,
                          decoration: InputDecoration(
                              hintText: 'Insira seu nome',
                              suffixIcon: IconButton(
                                  onPressed: nomeInput.clear,
                                  icon: const Icon(Icons.clear)),
                              border: const OutlineInputBorder()))),
                ),
                Center(
                    child: SizedBox(
                  width: 150,
                  child: ElevatedButton(
                    child: const Text('ENVIAR'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => QuizStart(
                                titulo: 'CONEXÃO 2023', nome: nomeInput)),
                      );
                    },
                  ),
                ))
              ],
            ),
          ),
        ));
  }
}