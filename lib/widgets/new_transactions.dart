import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addtx;

  NewTransaction(this.addtx);

  @override
  Widget build(BuildContext context) {
    final titleController = TextEditingController();
    final amountController = TextEditingController();
    return Card(
      child: Container(
        child: Column(
          //   crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
              /* onChanged: (val) {
                      titleInput = val;
                    },*/
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              keyboardType: TextInputType.number,
              controller: amountController,
              // onChanged: (val) {
              //   amountInput = val;
              // },
            ),
            TextButton(
                onPressed: () {
                  print(titleController.text);
                  print(amountController.text);
                  addtx(titleController.text,
                      double.parse(amountController.text));
                  // print(titleInput);
                  // print(amountInput);
                },
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text('Add Transaction',
                      style: TextStyle(color: Colors.purple)),
                ))
          ],
        ),
      ),
    );
  }
}
