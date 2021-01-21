import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  // stateful can change its state
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var num1 = 0;
  var num2 = 0;
  var sum = '0';

  var field1 = TextEditingController();
  var field2 = TextEditingController();

  dynamic clear() {
    setState(() {
      sum = '0';
      field1.text = '';
      field2.text = '';
    });
  }

  //t1 is a object that has value
  // calling a class texteditingcontroller with
  void doAddition() {
    setState(() {
      num1 = int.parse(field1.text);
      num2 = int.parse(field2.text);
      // making the framework know that state of our value has changed
      sum = (num1 + num2).toString();
    });
  }

  void dodiv() {
    setState(() {
      num1 = int.parse(field1.text);
      num2 = int.parse(field2.text);
      // making the framework know that state of our value has changed
      sum = (num1 / num2).toString();
    });
  }

  void doMUl() {
    setState(() {
      num1 = int.parse(field1.text);
      num2 = int.parse(field2.text);
      // making the framework know that state of our value has changed
      sum = (num1 * num2).toString();
    });
  }

  void doSub() {
    setState(() {
      num1 = int.parse(field1.text);
      num2 = int.parse(field2.text);
      // making the framework know that state of our value has changed
      sum = (num1 - num2).toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('calculator'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'output: $sum',
                style: TextStyle(fontSize: 20.3, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 25),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: 'enter first number'),
                controller: field1,
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
              ),
              TextField(
                controller: field2,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: 'enter second number ',
                    hintStyle: TextStyle(
                      color: Colors.pink[200],
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    color: Colors.red,
                    onPressed: doMUl,
                    child: Text(
                      'x',
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 40.0),
                  ),
                  RaisedButton(
                    color: Colors.blue,
                    onPressed: doSub,
                    child: Text(
                      '-',
                      style: TextStyle(fontSize: 40),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    color: Colors.green,
                    onPressed: dodiv,
                    child: Text(
                      '/',
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 40.0),
                  ),
                  RaisedButton(
                    color: Colors.pink,
                    onPressed: doAddition,
                    child: Text(
                      '+',
                      style: TextStyle(fontSize: 40),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Container(
                  child: RaisedButton(
                    splashColor: Colors.red,
                    onPressed: clear,
                    child: Text(
                      'Sprite CLEAR xa',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),
              )
            ]),
      ),
    );
  }
}
