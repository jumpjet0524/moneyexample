import 'package:flutter/material.dart';
import 'package:moneyexample/widget/user_transaction.dart';

import './widget/new_transaction.dart';
import './widget/transation_list.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {


  // String? titleInput;
  // String? amountInput;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              child: const Card(
                color: Colors.blue,
                child: Text('CHART!'),
                elevation: 50,
              ),
            ),
            UserTransaction()
          ],
        ),
      ),
    );
  }
}
