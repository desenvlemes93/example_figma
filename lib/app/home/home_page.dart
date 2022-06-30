import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formkey = GlobalKey<FormState>();
  final _nomeEC = TextEditingController();
  final _sobrenomeEC = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _nomeEC.dispose();
    _sobrenomeEC.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(),
                ],
              ),
              child: TextFormField(
                controller: _nomeEC,
                decoration: const InputDecoration(
                  labelText: 'Nome',
                  labelStyle: TextStyle(fontSize: 18),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Salvar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
