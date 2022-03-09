import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'title'),
              controller: titleController,
              // onChanged: (val) {
              //   // titleInput = val;
              // },
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'amount'),
              controller: amountController,
              // onChanged: (val) {
              //   // amountInput = val;
              // },
            ),
            TextButton(
              child: const Text('add Transaction'),
              style: TextButton.styleFrom(primary: Colors.purple),
              onPressed: () {
                addTx(
                  titleController.text,
                  double.parse(amountController.text),
                );
                print(titleController.text);
              },
            )
          ],
        ),
      ),
    );
  }
}
