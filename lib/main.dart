import 'package:flutter/material.dart';
import 'package:rui/delphi_layout/delphi_container.dart';
import 'package:rui/delphi_layout/delphi_layout.dart';
import 'package:rui/layout/rui_layout.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rui"),
      ),
      body: RuiLayout(
        body: _buildBody(),
        header: _buildHeader(),
        footer: _buildFooter(),
        leftNavPanel: _buildLeftNavPanel(),
        rightMenuButtons: _buildRightMenuBottons(),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      color: Colors.blue,
      child: Text("Header"),
    );
  }

  Widget _buildBody() {
    return Container(
      color: Colors.red,
      child: Text("Body"),
    );
  }

  Widget _buildFooter() {
    return Container(
      color: Colors.green,
      child: Text("Footer"),
    );
  }

  Widget _buildLeftNavPanel() {
    return Container(
      color: Colors.yellow,
      child: Text("LeftNavPanel"),
    );
  }

  List<MenuItemButton> _buildRightMenuBottons() {
    return [
      MenuItemButton(
        child: Text('打开'),
        onPressed: () {
          print("======打开==========");
        },
      ),
      MenuItemButton(
        child: Text('print'),
        onPressed: () {
          print("======print==========");
        },
      ),
      MenuItemButton(
        child: Text('Exit'),
        onPressed: () {
          print("======exit==========");
        },
      ),
    ];
  }
}

void main() {
  runApp(MyApp());
}
