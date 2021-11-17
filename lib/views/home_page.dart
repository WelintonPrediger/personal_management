import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  _componentTextFormField({required IconData icon, required String labelTitle, required initialValue, int? maxLines}) {
    return TextFormField(
      initialValue: initialValue,
      maxLines: maxLines ?? 1,
      decoration: InputDecoration(
        prefixIcon: Icon(icon),
        label: Text(labelTitle),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gestão Pessoal'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () { Get.toNamed('/settings'); }, icon: const Icon(Icons.settings)),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CircularProgressIndicator(),
            SizedBox(height: 10.0),
            Text('Developing...')
          ],
        ),
      )
    );
  }

  _rowMessage({required BuildContext context, required String message}) {
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message, style: const TextStyle(color: Colors.white), textAlign: TextAlign.center),
          backgroundColor: Colors.green,
          duration: const Duration(seconds: 4),
        )
    );
  }

}
