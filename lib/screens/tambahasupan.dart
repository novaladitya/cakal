import 'package:flutter/material.dart';

class TambahAsupan extends StatefulWidget {
  @override
  _TambahAsupanState createState() => _TambahAsupanState();
}

class _TambahAsupanState extends State<TambahAsupan>
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
              "Nama Asupan",
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
              "Jumlah Kalori (kkal)",
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
            child: ElevatedButton(
              child: Text(
                "TAMBAH ASUPAN",
                style: TextStyle(color: Color.fromRGBO(252, 244, 224, 1)),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(5, 102, 106, 1),
                  textStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0))),
              onPressed: () {},
            ),
            padding: EdgeInsets.all(30),
          )
        ],
      ),
    );
  }
}
