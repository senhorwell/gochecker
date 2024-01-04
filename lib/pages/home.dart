import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:gochecker/models/user.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.user});

  final User user;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late FirebaseDatabase fb;
  Map<dynamic, List<String>> casaList = {};
  Map<dynamic, List<String>> comodoList = {};

  late DatabaseReference todos;

  String teste = '';
  @override
  void initState() {
    fb = FirebaseDatabase.instance;
    todos = fb.ref().child('casas/${widget.user.email}');
    super.initState();
  }

  Future loadList() async {
    return await todos.once().then((snapshot) {
      Map<dynamic, dynamic> values =
          snapshot.snapshot.value as Map<dynamic, dynamic>;

      values.forEach((key, value) {
        print(value);
        setState(() {
          casaList[key] = value;
        });
      });
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
          title: Text('Bem vindo(a) ${widget.user.name}'),
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
                    ListView.builder(itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(casaList[index].toString()),
                      );
                    })
                  ],
                ),
              );
            }));
  }
}
