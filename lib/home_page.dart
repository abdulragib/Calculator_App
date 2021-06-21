import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1, num2, sum = 0;

  final TextEditingController t1 = new TextEditingController();
  final TextEditingController t2 = new TextEditingController();

  void doAddition() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void doSubstration() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void doMultiplication() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void doDivision() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = (num1 / num2).truncate().toInt();
    });
  }

  void doClear() {
    setState(() {
      t1.text = "0";
      t2.text = "0";
      sum = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //resizeToAvoidBottomInset: false,
      appBar: new AppBar(
        title: new Text("Calculator"),
      ),
      body: new Container(
        color: Colors.black12,
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              "Output : $sum",
              style: new TextStyle(
                fontSize: 20.0,
                color: Colors.purple,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.white30,
              child: new TextField(
                controller: t1,
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                  labelText: "Enter Number one",
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.blueAccent, width: 3.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 3.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.white30,
              child: new TextField(
                controller: t2,
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                  labelText: "Enter Number two",
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.blueAccent, width: 3.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 3.0),
                  ),
                ),
              ),
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                new MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  onPressed: doAddition,
                  child: Text(
                    "+",
                    style: TextStyle(fontSize: 25),
                  ),
                  color: Colors.greenAccent,
                ),
                new MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  onPressed: doSubstration,
                  child: Text(
                    "-",
                    style: TextStyle(fontSize: 25),
                  ),
                  color: Colors.greenAccent,
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                new MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  onPressed: doMultiplication,
                  child: Text(
                    "*",
                    style: TextStyle(fontSize: 25),
                  ),
                  color: Colors.greenAccent,
                ),
                new MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  onPressed: doDivision,
                  child: Text(
                    "/",
                    style: TextStyle(fontSize: 25),
                  ),
                  color: Colors.greenAccent,
                ),
              ],
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  onPressed: doClear,
                  child: Text(
                    "Clear",
                    style: TextStyle(fontSize: 18),
                  ),
                  color: Colors.greenAccent,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//stf used when we need to update data of widget again and again
//Scaffold have predefined structure for material app design.
//setState: it will notify the framework that internal state of this object has change.
//final TextEditingController t2 = new TextEditingController(text: "0"); if u want to give bydefault number in textfield then put text property in parameter of TextEditingController.
