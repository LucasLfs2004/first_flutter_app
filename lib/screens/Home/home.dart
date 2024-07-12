import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            const Text('Olá, Lucas'),
            IconButton(onPressed: () {
              Navigator.pushNamed(context, '/second');
            }, icon: Icon(Icons.account_circle_outlined))
          ]

        ),



      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
              Navigator.pushNamed(context, '/second');
          },
          child: const Text('Launch screen'),
        ),
      ),
    );
  }
}