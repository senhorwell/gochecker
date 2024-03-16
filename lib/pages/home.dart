import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:gochecker/models/user.dart';
import 'package:table_calendar/table_calendar.dart';

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

  final List<IconData> icons = [
    Icons.person,
    Icons.person,
    Icons.person,
    Icons.person,
    Icons.person,
    Icons.person,
    Icons.person,
    Icons.person,
    Icons.person,
  ];

  String teste = '123';
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
            leadingWidth: 80,
            leading: Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/myAccount');
                },
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            actions: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      // Implemente a ação do ícone de olho aqui
                    },
                    icon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 30),
                    child: Text(
                      'R\$ 100,00',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ]),
        body: FutureBuilder(
            future: loadList(),
            builder: (context, snapshot) {
              return SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Text('Orçamentos',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 100,
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: icons.length,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: () {
                                print('Clicou no ícone ${index + 1}');
                              },
                              child: Container(
                                margin: const EdgeInsets.all(10),
                                width: 60,
                                height: 60,
                                decoration: const BoxDecoration(
                                  color: Colors.black,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  icons[index],
                                  color: Colors.white,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: TableCalendar(
                          rowHeight: 30,
                          firstDay:
                              DateTime.now().subtract(const Duration(days: 13)),
                          lastDay: DateTime.now().add(const Duration(days: 30)),
                          focusedDay: DateTime.now(),
                        ),
                      ),
                    )
                  ],
                ),
              );
            }),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: () {
            Navigator.pushNamed(context, '/criarCasa');
          },
          shape: CircleBorder(),
          child: Icon(Icons.add, color: Colors.white),
        ));
  }
}
