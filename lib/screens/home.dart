import 'package:asd_project_app/screens/ai_page.dart';
import 'package:asd_project_app/screens/kids.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required String title});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget _buildTextComposer(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton.icon(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const KidsPage()),
            );
          },
          icon: const Icon(Icons.child_care),
          label: const Text("Composição de alunos"),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.black),
              foregroundColor: MaterialStateProperty.all(Colors.white)),
        ),
        ElevatedButton.icon(
          onPressed: () {
           Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AIPage()),
            );
          },
          icon: const Icon(Icons.wechat),
          label: const Text("Converse com a IA"),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.black),
              foregroundColor: MaterialStateProperty.all(Colors.white)),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('REST ASD'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            children: [
              Flexible(
                  child: Container(
                height: MediaQuery.of(context).size.height,
              )),
              Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: _buildTextComposer(context),
              ),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ));
  }
}
