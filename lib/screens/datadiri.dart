import 'package:flutter/material.dart';

class DataDiri extends StatefulWidget {
  @override
  _DataDiriState createState() => _DataDiriState();
}

class _DataDiriState extends State<DataDiri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Diri"),
        backgroundColor: Color.fromRGBO(5, 102, 106, 1),
      ),
      body: ListView(
        shrinkWrap: true,
        padding:
            EdgeInsets.only(top: 20.0, left: 20.0, bottom: 15.0, right: 20.0),
        children: [
          Column(
            children: [
              Image.asset(
                'assets/images/ava.png',
                height: 80,
                width: 80,
              ),
              SizedBox(height: 10.0),
              Text(
                "Sesuaikan Data Diri Anda",
                style: TextStyle(
                    color: Color.fromRGBO(5, 102, 106, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0),
              ),
              SizedBox(height: 25.0),
              SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      ListTile(
                        onTap: () {},
                        title: Text(
                          "Jenis Kelamin",
                          style: TextStyle(
                              color: Color.fromRGBO(5, 102, 106, 1),
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          "Pria",
                        ),
                        trailing: Icon(Icons.keyboard_arrow_right),
                      ),
                      ListTile(
                        onTap: () {},
                        title: Text(
                          "Berat Badan",
                          style: TextStyle(
                              color: Color.fromRGBO(5, 102, 106, 1),
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text("65 kg"),
                        trailing: Icon(Icons.keyboard_arrow_right),
                      ),
                      ListTile(
                        onTap: () {},
                        title: Text(
                          "Tinggi Badan",
                          style: TextStyle(
                              color: Color.fromRGBO(5, 102, 106, 1),
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text("165 cm"),
                        trailing: Icon(Icons.keyboard_arrow_right),
                      ),
                      ListTile(
                        onTap: () {},
                        title: Text(
                          "Usia (pembulatan ke bawah)",
                          style: TextStyle(
                              color: Color.fromRGBO(5, 102, 106, 1),
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text("21 Tahun"),
                        trailing: Icon(Icons.keyboard_arrow_right),
                      ),
                      ListTile(
                        onTap: () {},
                        title: Text(
                          "Level Aktifitas Fisik",
                          style: TextStyle(
                              color: Color.fromRGBO(5, 102, 106, 1),
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle:
                            Text("Cukup Aktif, berolahraga 1-2 kali/minggu"),
                        trailing: Icon(Icons.keyboard_arrow_right),
                      ),
                      ListTile(
                        onTap: () {},
                        title: Text(
                          "Target Berat Badan",
                          style: TextStyle(
                              color: Color.fromRGBO(5, 102, 106, 1),
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text("65 kg"),
                        trailing: Icon(Icons.keyboard_arrow_right),
                      ),
                    ],
                  )),
            ],
          )
        ],
      ),
    );
  }
}
