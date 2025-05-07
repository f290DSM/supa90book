import 'package:flutter/material.dart';
import 'package:supabook90/src/features/pessoas/view/pessoas_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: PessoasView(),);
  }
}
