import 'package:crypto_app/global.dart';
import 'package:flutter/material.dart';

class TransactionContainer extends StatelessWidget {
  final int i;
  const TransactionContainer({
    Key key, this.i,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Text(
                "${transactions[i]['title']}",
                style: Theme.of(context)
                    .textTheme
                    .subhead
                    .apply(color: darkBlue, fontWeightDelta: 2),
              ),
            ),
            SizedBox(width: 15),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: 9.0, vertical: 5.0),
              decoration: BoxDecoration(
                color: Color(0xffd5d7dc),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Text("Pairing"),
            )
          ],
        ),
        SizedBox(height: 11),
        Row(
          children: <Widget>[
            Text("Originator: "),
            Text("${transactions[i]['originator']}")
          ],
        ),
        SizedBox(height: 5),
        Row(
          children: <Widget>[
            Text("Transaction Number: "),
            Text("${transactions[i]['transaction_number']}")
          ],
        ),
        SizedBox(height: 5),
        Row(
          children: <Widget>[
            Text("Type: "),
            Text("${transactions[i]['type']}")
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            RaisedButton(
              child: Text("Delete"),
              onPressed: () {},
              color: Colors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(9.0),
                side: BorderSide(color: Colors.black54),
              ),
            ),
            SizedBox(width: 15.0),
            RaisedButton(
              child: Text(
                "Accept",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {},
              color: lightBlue,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(9.0),
              ),
            ),
          ],
        ),
        Divider(
          height: 21,
          color: darkBlue,
        ),
      ],
    );
  }
}
