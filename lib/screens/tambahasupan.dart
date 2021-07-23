import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TambahAsupan extends StatefulWidget {
  @override
  _TambahAsupanState createState() => _TambahAsupanState();
}

class _TambahAsupanState extends State<TambahAsupan> {
  final _key = new GlobalKey<FormState>();
  TextEditingController nama = new TextEditingController();
  TextEditingController merk = new TextEditingController();
  TextEditingController ukuranPerporsi = new TextEditingController();
  TextEditingController kalori = new TextEditingController();
  TextEditingController karbohidrat = new TextEditingController();
  TextEditingController lemak = new TextEditingController();
  TextEditingController protein = new TextEditingController();
  String _chosenValue;

  insertAsupan() {
    http.post(
        "http://10.0.2.2/apicakal/public/index.php/daftarasupan/insertasupan",
        body: {
          "jenis": _chosenValue,
          "nama": nama.text,
          "merk": merk.text,
          "ukuran_perporsi": ukuranPerporsi.text,
          "kalori": kalori.text,
          "karbohidrat": karbohidrat.text,
          "lemak": lemak.text,
          "protein": protein.text,
        });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    Map arguments = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: arguments['from'] == 'daftar_asupan'
            ? Text("Edit Asupan")
            : Text("Tambah Asupan"),
        backgroundColor: Color.fromRGBO(5, 102, 106, 1),
      ),
      body: ListView(children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          child: Form(
            key: _key,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Silahkan Isi Data Asupanmu di Bawah!',
                      style: TextStyle(
                        fontSize: 17,
                        color: Color.fromRGBO(5, 102, 106, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: Color.fromRGBO(5, 102, 106, 1),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    'Jenis Asupan',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromRGBO(5, 102, 106, 1),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                DropdownButton<String>(
                  focusColor: Colors.white,
                  value: _chosenValue != null
                      ? arguments['data']['jenis']
                      : _chosenValue,
                  elevation: 5,
                  style: TextStyle(color: Colors.white),
                  iconEnabledColor: Colors.black,
                  items: <String>[
                    'Makanan',
                    'Minuman',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    );
                  }).toList(),
                  hint: Text(
                    "Pilih Jenis Asupan",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                  onChanged: (String value) {
                    setState(() {
                      _chosenValue = value;
                    });
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Text(
                        'Nama Asupan',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromRGBO(5, 102, 106, 1),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 130,
                      ),
                      Text(
                        'Merk',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromRGBO(5, 102, 106, 1),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Container(
                        width: 210,
                        height: 20,
                        child: TextFormField(
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                          controller: nama,
                          decoration: InputDecoration(
                            hintText: '(Isi Nama Asupan)',
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Container(
                        width: 145,
                        height: 20,
                        child: TextFormField(
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                          controller: merk,
                          decoration: InputDecoration(
                            hintText: '(Isi Merk Asupan)',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    'Ukuran Perporsi',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromRGBO(5, 102, 106, 1),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 20,
                    child: TextFormField(
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                      controller: ukuranPerporsi,
                      decoration: InputDecoration(
                        hintText: '(Misal: 100, (gram))',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 2 - 20,
                        child: Text(
                          'Kalori',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color.fromRGBO(5, 102, 106, 1),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 2 - 20,
                        child: Text(
                          'Karbohidrat',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color.fromRGBO(5, 102, 106, 1),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 2 - 36,
                        height: 20,
                        child: TextFormField(
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                          controller: kalori,
                          decoration: InputDecoration(
                            hintText: '(Misal: 70, (kkal))',
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 2 - 20,
                        height: 20,
                        child: TextFormField(
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                          controller: karbohidrat,
                          decoration: InputDecoration(
                            hintText: '(Misal: 12, (gram))',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 2 - 20,
                        child: Text(
                          'Lemak',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color.fromRGBO(5, 102, 106, 1),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 2 - 20,
                        child: Text(
                          'Protein',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color.fromRGBO(5, 102, 106, 1),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 2 - 36,
                        height: 20,
                        child: TextFormField(
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                          controller: lemak,
                          decoration: InputDecoration(
                            hintText: '(Misal: 2, (gram))',
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 2 - 20,
                        height: 20,
                        child: TextFormField(
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                          controller: protein,
                          decoration: InputDecoration(
                            hintText: '(Misal: 2, (gram))',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  // height: 250,
                  child: ElevatedButton(
                    child: Text(
                      "TAMBAH ASUPAN",
                      style: TextStyle(color: Color.fromRGBO(252, 244, 224, 1)),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(5, 102, 106, 1),
                        textStyle: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0))),
                    onPressed: () {
                      insertAsupan();
                    },
                  ),
                  padding: EdgeInsets.all(30),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
