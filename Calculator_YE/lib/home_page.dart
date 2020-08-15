import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, String title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var num1 = 0;
  var num2 = 0;
  var num3 = 0;
  var num4 = 0;
  var sum = 0;

  int _selectedIndex = 0;

  final TextEditingController t1 = new TextEditingController(text: "0");

/*
void addNums() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void subNums() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void subMul() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void subDiv() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

  void clearNums() {
    setState(() {
      t1.text = "0";
      t2.text = "0";
    });
  }
  */

  Widget _button(String number, Function() f) {
    // Creating a method of return type Widget with number and function f as a parameter
    return MaterialButton(
      height: 100.0,
      child: Text(number,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0)),
      textColor: Colors.black,
      color: Colors.grey[100],
      onPressed: f,
    );
  }

  Widget get _bottomNavigation => BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Topla")),
          BottomNavigationBarItem(
              icon: Icon(Icons.text_rotate_up), title: Text("Topla")),
          BottomNavigationBarItem(
              icon: Icon(Icons.system_update), title: Text("Topla")),
          BottomNavigationBarItem(
              icon: Icon(Icons.system_update), title: Text("Topla")),
          BottomNavigationBarItem(
              icon: Icon(Icons.system_update), title: Text("Topla")),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculator Example -YE")),
      body: Container(
        padding: EdgeInsets.all(40.0),
        child: new Column(
          children: <Widget>[
            Text(
              "Sonuç : $sum",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Giriniz"),
              controller: t1,
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
      floatingActionButton: Container(
        height: 65.0,
        width: 65.0,
        child: FittedBox(
          child: FloatingActionButton(
            child: Icon(Icons.add),
            tooltip: 'Increment',
            elevation: 2.0,
            onPressed: () {
              _onItemTapped(3);
            },
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: _myBottomAppBar(),
    );
  }

  Widget _myBottomAppBar() => BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Colors.red,
        child: Container(
          height: 75,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              IconButton(
                iconSize: 35.0,
                padding: EdgeInsets.only(left: 28.0),
                icon: Icon(Icons.home),
                onPressed: () {
                  _onItemTapped(0);
                },
              ),
              IconButton(
                iconSize: 35.0,
                padding: EdgeInsets.only(left: 25.0),
                icon: Icon(Icons.home),
                onPressed: () {
                  _onItemTapped(1);
                },
              ),
              IconButton(
                iconSize: 35.0,
                padding: EdgeInsets.only(left: 20.0),
                icon: Icon(Icons.home),
                onPressed: () {
                  _onItemTapped(2);
                },
              ),
              IconButton(
                iconSize: 30.0,
                padding: EdgeInsets.only(left: 28.0),
                icon: Icon(Icons.multiline_chart),
                onPressed: () {
                  _onItemTapped(4);
                },
              ),
            ],
          ),
        ),
      );

  void _onNumbersTapped(int index) {}
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        {
          print("$index TIKLANDI");
        }
        break;
      case 1:
        {
          print("$index TIKLANDI");
        }
        break;
      case 2:
        {
          print("$index TIKLANDI");
        }
        break;
      case 3:
        {
          print("$index TIKLANDI");
        }
        break;
      case 4:
        {
          print("$index TIKLANDI");
        }
        break;

      default:
        print("DEFAULT switch-case");
    }
  }
}
