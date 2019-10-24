import 'package:crypto_app/global.dart';
import 'package:crypto_app/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class TransactionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 0,
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  Navigator.pop(context);
                })
          ],
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Transactions",
                style: Theme.of(context)
                    .textTheme
                    .headline
                    .apply(fontWeightDelta: 2, color: darkBlue),
              ),
              SizedBox(
                height: 15.0,
              ),
              GridView.builder(
                shrinkWrap: true,
                itemCount: transactions_stat.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 3 / 4,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  crossAxisCount: 3,
                ),
                itemBuilder: (ctx, id) {
                  return StatesDetailContainer(i: id);
                },
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                "New Transactions",
                style: Theme.of(context)
                    .textTheme
                    .title
                    .apply(color: darkBlue, fontWeightDelta: 2),
              ),
              Divider(
                height: 31,
                color: darkBlue,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                child: ListView.builder(
                  itemCount: transactions.length,
                  itemBuilder: (ctx, i) {
                    return TransactionContainer(i: i);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
