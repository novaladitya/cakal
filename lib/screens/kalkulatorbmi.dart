import 'package:flutter/material.dart';

class KalkulatorBmi extends StatefulWidget {
  @override
  _KalkulatorBmiState createState() => _KalkulatorBmiState();
}

class _KalkulatorBmiState extends State<KalkulatorBmi>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Text(
              "Tinggi Badan (CM)",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            child: TextField(),
            padding: EdgeInsets.all(30),
          ),
          Container(
            child: Text(
              "Berat Badan (KG)",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            child: TextField(),
            padding: EdgeInsets.all(30),
          ),
          Container(
            width: double.infinity,
            child: FlatButton(
              child: Text(
                "Hitung BMI",
              ),
              color: Color.fromRGBO(5, 102, 106, 1),
              onPressed: () {},
            ),
            padding: EdgeInsets.all(30),
          )
        ],
      ),
    );
  }
}
