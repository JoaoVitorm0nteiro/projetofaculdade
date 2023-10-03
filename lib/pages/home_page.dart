//PAGINA INICIAL
import 'package:flutter/material.dart';
import 'package:projeto_faculdade/pages/insert_name_page.dart';

class HomePage extends StatelessWidget {
  final String title;
  const HomePage({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    double sizeWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
          //container pai
          child: SizedBox(
        width: sizeWidth,
        //por a logo da faculdade
        //decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              //por a logo da faculdade
              width: 300,
              height: 100,
              margin: const EdgeInsets.all(57),
              decoration: const BoxDecoration(
                  //border: Border.all(color: Colors.black),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://www.unifametro.edu.br/cvtt/wp-content/uploads/2019/07/logo-unifametro-01.png"),
                      fit: BoxFit.contain)),
            ),
            SizedBox(
              //para armazenar o container com o Texto
              width: sizeWidth,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    //container para poder dar margem ao botão começar
                    margin: const EdgeInsets.all(40),
                    child: const Text(
                      'QUIZ CONEXÃO',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    child: ElevatedButton(
                      child: const Text('COMEÇAR'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => InsertName(
                                    title: 'CONEXÃO 2023',
                                  )),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
