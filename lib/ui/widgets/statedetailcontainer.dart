import 'package:crypto_app/global.dart';
import 'package:flutter/material.dart';

class StatesDetailContainer extends StatelessWidget {
  final int i;
  const StatesDetailContainer({
    Key key, this.i,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        border: transactions_stat[i]['border'] ?? Border(),
        borderRadius: BorderRadius.circular(15.0),
        color: transactions_stat[i]['color'],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Text(
              "${transactions_stat[i]['count']}",
              style: Theme.of(context).textTheme.headline.apply(
                  color: transactions_stat[i]['text_color']),
            ),
          ),
          Expanded(
            child: Text(
              "${transactions_stat[i]['text']}",
              style: TextStyle(
                color: transactions_stat[i]['text_color'],
              ),
            ),
          ),
        ],
      ),
    );
  }
}