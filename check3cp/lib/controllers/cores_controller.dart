import 'package:check3cp/main.dart';
import 'package:flutter/material.dart';

class CoresController extends ChangeNotifier{

  static CoresController instance = new CoresController();

Color CorPrincipal = Colors.purple;
  Color CorFundo = Colors.white;
  String NomeCorPrincipal = 'Roxo';

  bool MudancaCor = false;
  bool MudancaNome = false;
  bool MudancaFundo = false;
  
  mudarcorfuncao() {
    MudancaCor = !MudancaCor;
    notifyListeners();
  }

  Mudarnomefuncao() {
   MudancaNome = !MudancaNome;
    notifyListeners();
  }

  mudarfundofuncao() {
    MudancaFundo= !MudancaFundo;
    notifyListeners();
  }

}