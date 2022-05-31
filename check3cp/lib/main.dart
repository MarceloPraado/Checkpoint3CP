import 'package:flutter/material.dart';
import 'package:check3cp/controllers/cores_controller.dart';

 void main() => runApp(Cores());

 class Cores extends StatelessWidget {
  const Cores({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cores',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


@override
  void initState() {
    super.initState();
  }

  Color CorPrincipal = Colors.purple;
  Color CorFundo = Colors.white;
  String NomeCorPrincipal = 'Roxo';

  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    return new Scaffold(
      backgroundColor: CorFundo,
        appBar: AppBar(
          title: Text('Checkpoint 3 - Marcelo Prado'),
          backgroundColor: CorPrincipal,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(NomeCorPrincipal,
            style: TextStyle(
              fontSize: 50,
              color: CorPrincipal,
              ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
              ),
              ElevatedButton(

                onPressed: () {
                setState(() {
                  if (CorPrincipal == Colors.purple) {
                    CorPrincipal = Colors.yellow;
                  } else {
                    CorPrincipal = Colors.purple;
                  }

                  if (NomeCorPrincipal == 'Roxo'){
                    NomeCorPrincipal = 'Amarelo';
                  } else {
                    NomeCorPrincipal = 'Roxo';
                  }
                  },
                  
              );
              },
              child: Text(
                   'Trocar Cor',
                   style: TextStyle(
                     fontSize: 20,
                     )
                 ),
                 style: ElevatedButton.styleFrom(
                   primary: Colors.black, )
          ),
          
            Padding(
                padding: EdgeInsets.all(10),
              ),
          
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (CorFundo == Colors.white) {
                CorFundo = Colors.grey;
                } else {
                  CorFundo = Colors.white;
                }
              });
            },
            child: Text(
              'Trocar cor de Fundo',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.black,
            ),
            )]
          )
          )
          );
                }
    
  }
