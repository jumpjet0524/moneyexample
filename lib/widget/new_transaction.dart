import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx, {Key? key}) : super(key: key);

  void submitData(){
    final enterTitle = titleController.text;
    final enterAmount = double.parse(amountController.text);

    if (enterTitle.isEmpty || enterAmount<=0){
      return;
    }

    addTx(
      enterTitle,
      enterAmount,
    );
  }

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
              onSubmitted: (_)=>submitData(),
              // onChanged: (val) {
              //   // titleInput = val;
              // },
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'amount'),
              controller: amountController,
              keyboardType: TextInputType.number,
              onSubmitted: (_)=>submitData(),
              // onChanged: (val) {
              //   // amountInput = val;
              // },
            ),
            TextButton(
              child: const Text('add Transaction'),
              style: TextButton.styleFrom(primary: Colors.purple),
              onPressed: submitData
            )
          ],
        ),
      ),
    );
  }
}
