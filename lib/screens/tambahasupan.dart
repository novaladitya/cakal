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
            child: FlatButton(
              child: Text(
                "Tambah Asupan",
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
