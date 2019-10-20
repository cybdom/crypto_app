import 'package:crypto_app/global.dart';
import 'package:crypto_app/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black87),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_none),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Hello,",
              style: Theme.of(context)
                  .textTheme
                  .display1
                  .apply(color: Colors.grey[500]),
            ),
            Text(
              "Mr. $username",
              style: Theme.of(context)
                  .textTheme
                  .display1
                  .apply(color: darkBlue, fontWeightDelta: 2),
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              padding: EdgeInsets.all(25.0),
              decoration: BoxDecoration(
                color: darkBlue,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Account Balance",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 11.0,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "291.01",
                          style: Theme.of(context)
                              .textTheme
                              .display1
                              .apply(color: Colors.white, fontWeightDelta: 2),
                        ),
                        TextSpan(text: " ETH")
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.lock, color: Colors.grey[300]),
                      SizedBox(width: 5.0),
                      Text(
                        "Freezing amount: 1.0173 ETH",
                        style: TextStyle(color: Colors.grey[300]),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 11.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Flexible(
                        child: RaisedButton(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 11.0),
                          color: darkBlue,
                          onPressed: () {},
                          child: Text(
                            'Deposit',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(9.0),
                              side: BorderSide(color: Colors.white)),
                        ),
                      ),
                      Flexible(
                        child: RaisedButton(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 11.0),
                          color: darkBlue,
                          onPressed: () {},
                          child: Text(
                            'Cash',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(9.0),
                              side: BorderSide(color: Colors.white)),
                        ),
                      ),
                      Flexible(
                        child: RaisedButton(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 11.0),
                          color: lightBlue,
                          onPressed: () {},
                          child: Text(
                            'Deposit',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(9.0),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15.0),
              height: MediaQuery.of(context).size.height / 4,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: historyContainerList.length,
                itemBuilder: (ctx, i) {
                  return HistoryContainer(id: i);
                },
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "Tender Transaction",
                    style: Theme.of(context)
                        .textTheme
                        .title
                        .apply(color: darkBlue, fontWeightDelta: 2),
                  ),
                ),
                Icon(Icons.timelapse, color: Colors.black.withOpacity(.71)),
                Text(
                  "Nearly 3 days",
                  style: TextStyle(color: Colors.black.withOpacity(.71)),
                ),
              ],
            ),
            Divider(
              height: 30,
            ),
            Row(
              children: <Widget>[
                Flexible(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "BlockChain Analysis Report",
                        style: Theme.of(context)
                            .textTheme
                            .title
                            .apply(color: darkBlue, fontWeightDelta: 2),
                      ),
                      Text(
                        "Created 20.10.2019",
                        style: TextStyle(color: Colors.black.withOpacity(.71)),
                      ),
                      Text(
                        "Originator: Cybdom Tech",
                        style: TextStyle(color: Colors.black.withOpacity(.71)),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: Column(
                    children: <Widget>[
                      Text(
                        "17.00 ETH",
                        style: Theme.of(context).textTheme.title.apply(
                            color: Color(0xff17dcb0), fontWeightDelta: 2),
                        textAlign: TextAlign.center,
                      ),
                      RaisedButton(
                        color: lightBlue,
                        child: Text("View", style: TextStyle(color: Colors.white),),
                        onPressed: () {
                          Navigator.pushNamed(context, 'transaction');
                        },
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
