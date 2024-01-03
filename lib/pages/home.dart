import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late FirebaseDatabase fb;
  Map<dynamic, List<String>> casaList = {};
  Map<dynamic, List<String>>  comodoList = {};

  late TextEditingController comodo = TextEditingController();
  late TextEditingController mobilia = TextEditingController();
  late TextEditingController qtd = TextEditingController();
  late DatabaseReference todos;

  String teste = '';
  @override
  void initState() {
    fb = FirebaseDatabase.instance;
    todos = fb.ref().child('casas/${widget.title}');
    super.initState();
  }

  Future loadList() async {
    return await todos.once().then((snapshot) {
      Map<dynamic, dynamic> values =
          snapshot.snapshot.value as Map<dynamic, dynamic>;
      setState(() {
        teste = values.toString();
      });
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(widget.title),
      ),
      body: FutureBuilder(
        future: loadList(),
        builder: (context, snapshot) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(teste),
                ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: TextField(
                    controller: comodo,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Comodo',
                    ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: TextField(
                    controller: mobilia,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Mobilia',
                    ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: TextField(
                    controller: qtd,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'QTD',
                    ),
                   ),
                 )
              ],
            ),
          );
        }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          todos.update({
            comodo.text.toLowerCase(): {
              mobilia.text.toLowerCase(): double.parse(qtd.text.toLowerCase()),
            },
          }).asStream();
          await loadList();
        },
        backgroundColor: Colors.black,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      )
    );
  }
}
