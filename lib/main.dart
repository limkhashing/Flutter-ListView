import 'package:flutter/material.dart';

void main() => runApp(GettingStarted());

class GettingStarted extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Getting Started',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: new HomeWidget());
  }
}

// Everything that is view will constructed as a Widget class
class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Lim Kha Shing"),
      ),
      body: new BodyWidget(),
    );
  }
}

class BodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemBuilder: (context, rowNumber) {return new ListStateWidget(rowNumber);},
        itemCount: 5);
  }
}

class ListStateWidget extends StatefulWidget {
  final int rowNumber;
  ListStateWidget(this.rowNumber);

  @override
  State createState() => ListViewWidget();
}

class ListViewWidget extends State<ListStateWidget> {
  int rowNumber;

  @override
  Widget build(BuildContext context) {
    rowNumber = widget.rowNumber;
    return new Container(
        padding: new EdgeInsets.all(16.0),
        child: new Column(
          children: <Widget>[
            new Image.network("https://avatars0.githubusercontent.com/u/30791939?s=460&u=fab97123e37cfcf34894c77c1672786df2a0800f&v=4"),
            new Container(height: 8.0),
            new Text(
              "Hello! Im from Row Number $rowNumber",
              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              textAlign: TextAlign.center,
            ),
            new Divider(
              color: Colors.grey,
            )
          ],
        )
    );
  }
}
