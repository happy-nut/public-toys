import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Responsible Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: _builderBody(),
      ),
    );
  }
}

class _builderBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 600) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              _builderCard(),
              _builderCard(),
              _builderCard(),
              _builderCard(),
            ],
          ),
        );
      } else {
        return SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _builderCard(),
              _builderCard(),
              _builderCard(),
              _builderCard(),
            ],
          ),
        );
      }
    });
  }
}

class _builderCard extends StatelessWidget {

  _buildCardbodyWithRow() => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Icon(Icons.shopping_cart, size: 128), Text("Shopping cart")],
        ),
      ],
    );

_buildCardbodyWithStretch() => Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Icon(Icons.shopping_cart, size: 128),
        Text(
          "Shopping cart",
          textAlign: TextAlign.center,
        )
      ],
    );

  @override
  Widget build(BuildContext context) {
    return Card(
      child: _buildCardbodyWithStretch(),
    );
  }
}
