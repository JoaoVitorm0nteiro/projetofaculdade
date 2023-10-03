import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Projeto Conexão',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      // A widget which will be started on application startup
      home: const HomePage(title: 'CONEXÃO 2023'),
    );
  }
}

//PAGINA INICIAL
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

//SEGUNDO WIDGET
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

//3 widget
class QuizStart extends StatefulWidget {
  final String titulo;
  final nome;
  const QuizStart({Key? key, required this.titulo, required this.nome})
      : super(key: key);

  @override
  State<QuizStart> createState() => QuizStartStart();
}

class QuizStartStart extends State<QuizStart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.titulo),
        ),
        body: Center(
            child: Text(
          widget.nome.text,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        )));
  }
}
