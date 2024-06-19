// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MainAppHome extends StatelessWidget {
  const MainAppHome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text("Coding with T App"),
        leading: Icon(Icons.access_alarm),
        backgroundColor: Colors.yellow,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.shopping_cart_checkout_sharp),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: ListView(
            children: [
              Text('Hello World!',style:Theme.of(context).textTheme.displayLarge),
              SizedBox(height: 10),
              Text('Hello Meow!',style:Theme.of(context).textTheme.displayMedium),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {},
                child: Text("ClickMe1!"),
              ),
              SizedBox(height: 10),
              OutlinedButton(
                onPressed: () {},
                child: Text("ClickMe2!"),
              ),
              SizedBox(height: 50),
              Image.asset(
                "assets/images/bookstack.jpg",
                height: 200,
                width: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
