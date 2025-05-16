import 'package:flutter/material.dart';
import 'package:supabook90/src/features/numbers/view/numbers_view.dart';
import 'package:supabook90/src/features/perguntas/view/perguntas_view.dart';
import 'package:supabook90/src/features/pessoas/view/pessoas_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home'), backgroundColor: Theme.of(context).colorScheme.onPrimaryFixedVariant,),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ListTile(
            leading: Icon(Icons.numbers),
            title: Text('Numbers'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NumbersView()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Persons'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PessoasView()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.question_mark),
            title: Text('Questions'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PerguntasView()),
              );
            },
          ),
        ],
      ),
    );
  }
}
