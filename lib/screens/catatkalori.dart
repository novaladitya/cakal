import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
//import 'package:charts_flutter/flutter.dart' as charts;
//import 'package:cakal/widget/barchart_graph.dart';
//import 'package:cakal/widget/barchart_model.dart';
import 'package:http/http.dart' as http;
import 'package:percent_indicator/linear_percent_indicator.dart';

class CatatKalori extends StatefulWidget {
  @override
  _CatatKaloriState createState() => _CatatKaloriState();
}

class _CatatKaloriState extends State<CatatKalori> {
  String kkalSarapan,
      kkalSiang,
      kkalMalam,
      kkalCemilan,
      kkalKegiatan,
      totalMinum,
      selisihKalori,
      kaloriMakanan,
      kaloriKegiatan;

  Future getSelisihKalori() async {
    final response = await http.get(
        "http://192.168.100.141/apicakal/public/index.php/TotalKaloriHarian/getSelisihKalori");
    return json.decode(response.body);
  }

  Future getKaloriMakanan() async {
    final response = await http.get(
        "http://192.168.100.141/apicakal/public/index.php/TotalKaloriHarian/getKaloriMakanan");
    return json.decode(response.body);
  }

  Future getKaloriKegiatan() async {
    final response = await http.get(
        "http://192.168.100.141/apicakal/public/index.php/TotalKaloriHarian/getKaloriKegiatan");
    return json.decode(response.body);
  }

  Future getSarapan() async {
    final response = await http.get(
        "http://192.168.100.141/apicakal/public/index.php/CatatanSarapan/getSarapan");
    return json.decode(response.body);
  }

  Future getTotalKkalSarapan() async {
    final response = await http.get(
        "http://192.168.100.141/apicakal/public/index.php/CatatanSarapan/getTotalKkalSarapan");
    return json.decode(response.body);
  }

  deleteSarapan($id) {
    setState(() {
      String idSarapan = $id;
      http.post(
          "http://192.168.100.141/apicakal/public/index.php/CatatanSarapan/deleteSarapan/$idSarapan");
    });
  }

  Future getMakanSiang() async {
    final response = await http.get(
        "http://192.168.100.141/apicakal/public/index.php/CatatanMakansiang/getMakansiang");
    return json.decode(response.body);
  }

  Future getTotalKkalSiang() async {
    final response = await http.get(
        "http://192.168.100.141/apicakal/public/index.php/CatatanMakansiang/getTotalKkalSiang");
    return json.decode(response.body);
  }

  deleteSiang($id) {
    setState(() {
      String idSiang = $id;
      http.post(
          "http://192.168.100.141/apicakal/public/index.php/CatatanMakansiang/deleteMakansiang/$idSiang");
    });
  }

  Future getMakanMalam() async {
    final response = await http.get(
        "http://192.168.100.141/apicakal/public/index.php/CatatanMakanmalam/getMakanmalam");
    return json.decode(response.body);
  }

  Future getTotalKkalMalam() async {
    final response = await http.get(
        "http://192.168.100.141/apicakal/public/index.php/CatatanMakanmalam/getTotalKkalMalam");
    return json.decode(response.body);
  }

  deleteMalam($id) {
    setState(() {
      String idMalam = $id;
      http.post(
          "http://192.168.100.141/apicakal/public/index.php/CatatanMakanmalam/deleteMakanmalam/$idMalam");
    });
  }

  Future getCemilan() async {
    final response = await http.get(
        "http://192.168.100.141/apicakal/public/index.php/CatatanCemilan/getCemilan");
    return json.decode(response.body);
  }

  Future getTotalKkalCemilan() async {
    final response = await http.get(
        "http://192.168.100.141/apicakal/public/index.php/CatatanCemilan/getTotalKkalCemilan");
    return json.decode(response.body);
  }

  deleteCemilan($id) {
    setState(() {
      String idCemilan = $id;
      http.post(
          "http://192.168.100.141/apicakal/public/index.php/CatatanCemilan/deleteCemilan/$idCemilan");
    });
  }

  Future getKegiatan() async {
    final response = await http.get(
        "http://192.168.100.141/apicakal/public/index.php/CatatanKegiatan/getCatKegiatan");
    return json.decode(response.body);
  }

  Future getTotalKkalKegiatan() async {
    final response = await http.get(
        "http://192.168.100.141/apicakal/public/index.php/CatatanKegiatan/getTotalKkalKegiatan");
    return json.decode(response.body);
  }

  deleteKegiatan($id) {
    setState(() {
      String idKegiatan = $id;
      http.post(
          "http://192.168.100.141/apicakal/public/index.php/CatatanKegiatan/deleteCatKegiatan/$idKegiatan");
    });
  }

  Future getTotalMinum() async {
    final response = await http.get(
        "http://192.168.100.141/apicakal/public/index.php/CatatanMinum/getTotalMinum");
    return json.decode(response.body);
  }

  insertMinum250() {
    setState(() {
      http.post(
          "http://192.168.100.141/apicakal/public/index.php/CatatanMinum/insertMinum",
          body: {
            "porsi": "250",
          });
    });
  }

  insertMinum500() {
    setState(() {
      http.post(
          "http://192.168.100.141/apicakal/public/index.php/CatatanMinum/insertMinum",
          body: {
            "porsi": "500",
          });
    });
  }

  insertMinum1000() {
    setState(() {
      http.post(
          "http://192.168.100.141/apicakal/public/index.php/CatatanMinum/insertMinum",
          body: {
            "porsi": "1000",
          });
    });
  }

  insertMinum1500() {
    setState(() {
      http.post(
          "http://192.168.100.141/apicakal/public/index.php/CatatanMinum/insertMinum",
          body: {
            "porsi": "1500",
          });
    });
  }

  // final List<BarChartModel> data = [
  //   BarChartModel(
  //     nama: "Protein",
  //     persentase: 50,
  //     color: charts.ColorUtil.fromDartColor(Colors.blue),
  //   ),
  //   BarChartModel(
  //     nama: "Lemak",
  //     persentase: 10,
  //     color: charts.ColorUtil.fromDartColor(Colors.green),
  //   ),
  //   BarChartModel(
  //     nama: "Karbohidrat",
  //     persentase: 100,
  //     color: charts.ColorUtil.fromDartColor(Colors.yellow),
  //   ),
  //   BarChartModel(
  //     nama: "Lainnya",
  //     persentase: 60,
  //     color: charts.ColorUtil.fromDartColor(Colors.red),
  //   ),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catatan Kalori"),
        backgroundColor: Color.fromRGBO(5, 102, 106, 1),
      ),
      body: ListView(
        shrinkWrap: true,
        padding:
            EdgeInsets.only(top: 15.0, left: 10.0, bottom: 15.0, right: 10.0),
        children: [
          Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 10.0, top: 5.0, bottom: 5.0, right: 10.0),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/calender.png',
                          height: 50,
                          width: 50,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 30.0),
                    child: Text(
                      "Kamis, 06 Mei 2021",
                      style: TextStyle(
                          color: Color.fromRGBO(5, 102, 106, 1),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 40,
                    child: VerticalDivider(
                      color: Color.fromRGBO(5, 102, 106, 1),
                      thickness: 2,
                      width: 80,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.0, bottom: 5.0, right: 5.0),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/datadiri');
                          },
                          child: Image.asset(
                            'assets/images/ava.png',
                            height: 50,
                            width: 50,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
          Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              color: Color.fromRGBO(5, 102, 106, 1),
              child: Padding(
                padding: EdgeInsets.only(
                    left: 10.0, top: 5.0, bottom: 5.0, right: 10.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/api.png',
                          width: 50,
                          height: 50,
                        ),
                        Text(
                          "Perkembangan Kalori",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(252, 244, 224, 1),
                              fontSize: 18.0),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 10.0,
                                  right: 5.0,
                                  bottom: 15.0,
                                  top: 10.0),
                              child: Container(
                                width: 290,
                                child: FutureBuilder(
                                  future: getSelisihKalori(),
                                  builder: (context, snapshot) {
                                    if (snapshot.hasError) {
                                      print(snapshot.error);
                                    } else if (snapshot.hasData) {
                                      selisihKalori =
                                          snapshot.data['selisih_kalori'];
                                      if (selisihKalori == null) {
                                        selisihKalori = '0';
                                      } else if (double.parse(selisihKalori) >
                                          2200) {
                                        selisihKalori = '2200';
                                      }
                                      return LinearPercentIndicator(
                                        animation: true,
                                        animationDuration: 1000,
                                        lineHeight: 20.0,
                                        percent:
                                            double.parse(selisihKalori) / 2200,
                                        center: Text(
                                          "$selisihKalori kkal",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromRGBO(
                                                  5, 102, 106, 1),
                                              fontSize: 12.0),
                                        ),
                                        backgroundColor:
                                            Color.fromRGBO(252, 244, 224, 1),
                                        progressColor:
                                            Color.fromRGBO(5, 102, 250, 1),
                                      );
                                    }
                                    return Center(
                                        child: CircularProgressIndicator());
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "2200",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(252, 244, 224, 1),
                                  fontSize: 16.0),
                            ),
                            Text(
                              "kkal",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(252, 244, 224, 1),
                                  fontSize: 12.0),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    color: Color.fromRGBO(5, 102, 106, 1),
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Text(
                            "Makanan",
                            style: TextStyle(
                                color: Color.fromRGBO(252, 244, 224, 1),
                                fontWeight: FontWeight.bold,
                                fontSize: 12.0),
                          ),
                          Container(
                            width: 45,
                            child: Divider(
                              color: Color.fromRGBO(252, 244, 224, 1),
                              height: 5,
                              thickness: 1.5,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.0),
                            child: FutureBuilder(
                              future: getKaloriMakanan(),
                              builder: (context, snapshot) {
                                if (snapshot.hasError) {
                                  print(snapshot.error);
                                } else if (snapshot.hasData) {
                                  kaloriMakanan =
                                      snapshot.data['total_kalorimakanan'];
                                  if (kaloriMakanan == null) {
                                    kaloriMakanan = '0';
                                  }
                                  return Text(
                                    kaloriMakanan,
                                    style: TextStyle(
                                        color: Color.fromRGBO(252, 244, 224, 1),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.0),
                                  );
                                }
                                return Center(
                                    child: CircularProgressIndicator());
                              },
                            ),
                          )
                        ],
                      ),
                    )),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  color: Color.fromRGBO(5, 102, 106, 1),
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Text(
                          "Kegiatan",
                          style: TextStyle(
                              color: Color.fromRGBO(252, 244, 224, 1),
                              fontWeight: FontWeight.bold,
                              fontSize: 12.0),
                        ),
                        Container(
                          width: 45,
                          child: Divider(
                            color: Color.fromRGBO(252, 244, 224, 1),
                            height: 5,
                            thickness: 1.5,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5.0),
                          child: FutureBuilder(
                            future: getKaloriKegiatan(),
                            builder: (context, snapshot) {
                              if (snapshot.hasError) {
                                print(snapshot.error);
                              } else if (snapshot.hasData) {
                                kaloriKegiatan =
                                    snapshot.data['total_kalorikegiatan'];
                                if (kaloriKegiatan == null) {
                                  kaloriKegiatan = '0';
                                }
                                return Text(
                                  kaloriKegiatan,
                                  style: TextStyle(
                                      color: Color.fromRGBO(252, 244, 224, 1),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0),
                                );
                              }
                              return Center(child: CircularProgressIndicator());
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    color: Color.fromRGBO(5, 102, 106, 1),
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Text(
                            "Total",
                            style: TextStyle(
                                color: Color.fromRGBO(252, 244, 224, 1),
                                fontWeight: FontWeight.bold,
                                fontSize: 12.0),
                          ),
                          Container(
                            width: 45,
                            child: Divider(
                              color: Color.fromRGBO(252, 244, 224, 1),
                              height: 5,
                              thickness: 1.5,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.0),
                            child: FutureBuilder(
                              future: getSelisihKalori(),
                              builder: (context, snapshot) {
                                if (snapshot.hasError) {
                                  print(snapshot.error);
                                } else if (snapshot.hasData) {
                                  selisihKalori =
                                      snapshot.data['selisih_kalori'];
                                  if (selisihKalori == null) {
                                    selisihKalori = '0';
                                  }
                                  return Text(
                                    selisihKalori,
                                    style: TextStyle(
                                        color: Color.fromRGBO(252, 244, 224, 1),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.0),
                                  );
                                }
                                return Center(
                                    child: CircularProgressIndicator());
                              },
                            ),
                          ),
                        ],
                      ),
                    )),
                Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    color: Color.fromRGBO(5, 102, 106, 1),
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Text(
                            "Budget",
                            style: TextStyle(
                                color: Color.fromRGBO(252, 244, 224, 1),
                                fontWeight: FontWeight.bold,
                                fontSize: 12.0),
                          ),
                          Container(
                            width: 45,
                            child: Divider(
                              color: Color.fromRGBO(252, 244, 224, 1),
                              height: 5,
                              thickness: 1.5,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.0),
                            child: Text(
                              "2200",
                              style: TextStyle(
                                  color: Color.fromRGBO(252, 244, 224, 1),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0),
                            ),
                          )
                        ],
                      ),
                    ))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/sun.png',
                          width: 100,
                          height: 100,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Sarapan",
                            style: TextStyle(
                                color: Color.fromRGBO(5, 102, 106, 1),
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topRight,
                          padding: EdgeInsets.only(left: 110),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              FutureBuilder(
                                future: getTotalKkalSarapan(),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                  } else if (snapshot.hasData) {
                                    kkalSarapan = snapshot.data['total_kalori'];
                                    if (kkalSarapan == null) {
                                      kkalSarapan = '0';
                                    }
                                    return Text(
                                      kkalSarapan,
                                      style: TextStyle(
                                          color: Color.fromRGBO(5, 102, 106, 1),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25.0),
                                    );
                                  }
                                  return Center(
                                      child: CircularProgressIndicator());
                                },
                              ),
                              Text(
                                "kkal",
                                style: TextStyle(
                                    color: Color.fromRGBO(5, 102, 106, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0, right: 10.0),
                      child: FutureBuilder(
                        future: getSarapan(),
                        builder: (context, snapshot) {
                          if (snapshot.hasError) {
                            print(snapshot.error);
                          }
                          return snapshot.hasData
                              ? ListView.separated(
                                  shrinkWrap: true,
                                  itemCount: snapshot.data.length,
                                  itemBuilder: (context, index) {
                                    List list = snapshot.data;
                                    return Table(
                                      columnWidths: {
                                        0: FlexColumnWidth(1),
                                        1: FlexColumnWidth(4),
                                        2: FlexColumnWidth(1),
                                        3: FixedColumnWidth(25),
                                      },
                                      defaultVerticalAlignment:
                                          TableCellVerticalAlignment.middle,
                                      children: [
                                        TableRow(children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 5.0),
                                            child: Center(
                                              child: Text(
                                                "${list[index]['porsi']}g  -",
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        5, 102, 106, 1),
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 5.0),
                                            child: Text(
                                              list[index]['nama'],
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      5, 102, 106, 1),
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 5.0),
                                            child: Align(
                                              alignment: Alignment.center,
                                              child: Text(
                                                list[index]['kalori'],
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        5, 102, 106, 1),
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 5.0, bottom: 5.0),
                                            child: InkWell(
                                              onTap: () {
                                                deleteSarapan(
                                                    list[index]['id']);
                                              },
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                              child: Ink(
                                                padding: EdgeInsets.only(
                                                    bottom: 2.0, top: 1),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                  color: Color.fromRGBO(
                                                      5, 102, 106, 1),
                                                ),
                                                child: Icon(
                                                  Icons.delete_forever_rounded,
                                                  color: Color.fromRGBO(
                                                      252, 244, 224, 1),
                                                  size: 20,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ]),
                                      ],
                                    );
                                  },
                                  separatorBuilder: (context, index) {
                                    return Divider(
                                      height: 2,
                                      thickness: 1,
                                      color: Colors.grey[500],
                                    );
                                  },
                                )
                              : Center(child: CircularProgressIndicator());
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 30.0, bottom: 20.0, left: 10.0, right: 10.0),
                      child: ElevatedButton(
                        child: Text(
                          'TAMBAH',
                          style: TextStyle(
                              color: Color.fromRGBO(252, 244, 224, 1)),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/daftarasupan',
                              arguments: {
                                'from': 'catatkalori',
                              });
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(5, 102, 106, 1),
                            padding: EdgeInsets.symmetric(
                                horizontal: 120, vertical: 10),
                            textStyle: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0))),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/fullsun.png',
                          width: 100,
                          height: 100,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Makan Siang",
                            style: TextStyle(
                                color: Color.fromRGBO(5, 102, 106, 1),
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topRight,
                          padding: EdgeInsets.only(left: 70),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              FutureBuilder(
                                future: getTotalKkalSiang(),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                  } else if (snapshot.hasData) {
                                    kkalSiang = snapshot.data['total_kalori'];
                                    if (kkalSiang == null) {
                                      kkalSiang = '0';
                                    }
                                    return Text(
                                      kkalSiang,
                                      style: TextStyle(
                                          color: Color.fromRGBO(5, 102, 106, 1),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25.0),
                                    );
                                  }
                                  return Center(
                                      child: CircularProgressIndicator());
                                },
                              ),
                              Text(
                                "kkal",
                                style: TextStyle(
                                    color: Color.fromRGBO(5, 102, 106, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0, right: 10.0),
                      child: FutureBuilder(
                        future: getMakanSiang(),
                        builder: (context, snapshot) {
                          if (snapshot.hasError) {
                            print(snapshot.error);
                          }
                          return snapshot.hasData
                              ? ListView.separated(
                                  shrinkWrap: true,
                                  itemCount: snapshot.data.length,
                                  itemBuilder: (context, index) {
                                    List list = snapshot.data;
                                    return Table(
                                      columnWidths: {
                                        0: FlexColumnWidth(1),
                                        1: FlexColumnWidth(4),
                                        2: FlexColumnWidth(1),
                                        3: FixedColumnWidth(25),
                                      },
                                      defaultVerticalAlignment:
                                          TableCellVerticalAlignment.middle,
                                      children: [
                                        TableRow(children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 5.0),
                                            child: Center(
                                              child: Text(
                                                "${list[index]['porsi']}g  -",
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        5, 102, 106, 1),
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 5.0),
                                            child: Text(
                                              list[index]['nama'],
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      5, 102, 106, 1),
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 5.0),
                                            child: Align(
                                              alignment: Alignment.center,
                                              child: Text(
                                                list[index]['kalori'],
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        5, 102, 106, 1),
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 5.0, bottom: 5.0),
                                            child: InkWell(
                                              onTap: () {
                                                deleteSiang(list[index]['id']);
                                              },
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                              child: Ink(
                                                padding: EdgeInsets.only(
                                                    bottom: 2.0, top: 1),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                  color: Color.fromRGBO(
                                                      5, 102, 106, 1),
                                                ),
                                                child: Icon(
                                                  Icons.delete_forever_rounded,
                                                  color: Color.fromRGBO(
                                                      252, 244, 224, 1),
                                                  size: 20,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ]),
                                      ],
                                    );
                                  },
                                  separatorBuilder: (context, index) {
                                    return Divider(
                                      height: 2,
                                      thickness: 1,
                                      color: Colors.grey[500],
                                    );
                                  },
                                )
                              : Center(child: CircularProgressIndicator());
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 30.0, bottom: 20.0, left: 10.0, right: 10.0),
                      child: ElevatedButton(
                        child: Text(
                          'TAMBAH',
                          style: TextStyle(
                              color: Color.fromRGBO(252, 244, 224, 1)),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/daftarasupan',
                              arguments: {
                                'from': 'catatkalori',
                              });
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(5, 102, 106, 1),
                            padding: EdgeInsets.symmetric(
                                horizontal: 120, vertical: 10),
                            textStyle: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0))),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/moon.png',
                          width: 100,
                          height: 100,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Makan Malam",
                            style: TextStyle(
                                color: Color.fromRGBO(5, 102, 106, 1),
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topRight,
                          padding: EdgeInsets.only(left: 60),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              FutureBuilder(
                                future: getTotalKkalMalam(),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                  } else if (snapshot.hasData) {
                                    kkalMalam = snapshot.data['total_kalori'];
                                    if (kkalMalam == null) {
                                      kkalMalam = '0';
                                    }
                                    return Text(
                                      kkalMalam,
                                      style: TextStyle(
                                          color: Color.fromRGBO(5, 102, 106, 1),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25.0),
                                    );
                                  }
                                  return Center(
                                      child: CircularProgressIndicator());
                                },
                              ),
                              Text(
                                "kkal",
                                style: TextStyle(
                                    color: Color.fromRGBO(5, 102, 106, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0, right: 10.0),
                      child: FutureBuilder(
                        future: getMakanMalam(),
                        builder: (context, snapshot) {
                          if (snapshot.hasError) {
                            print(snapshot.error);
                          }
                          return snapshot.hasData
                              ? ListView.separated(
                                  shrinkWrap: true,
                                  itemCount: snapshot.data.length,
                                  itemBuilder: (context, index) {
                                    List list = snapshot.data;
                                    return Table(
                                      columnWidths: {
                                        0: FlexColumnWidth(1),
                                        1: FlexColumnWidth(4),
                                        2: FlexColumnWidth(1),
                                        3: FixedColumnWidth(25),
                                      },
                                      defaultVerticalAlignment:
                                          TableCellVerticalAlignment.middle,
                                      children: [
                                        TableRow(children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 5.0),
                                            child: Center(
                                              child: Text(
                                                "${list[index]['porsi']}g  -",
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        5, 102, 106, 1),
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 5.0),
                                            child: Text(
                                              list[index]['nama'],
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      5, 102, 106, 1),
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 5.0),
                                            child: Align(
                                              alignment: Alignment.center,
                                              child: Text(
                                                list[index]['kalori'],
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        5, 102, 106, 1),
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 5.0, bottom: 5.0),
                                            child: InkWell(
                                              onTap: () {
                                                deleteMalam(list[index]['id']);
                                              },
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                              child: Ink(
                                                padding: EdgeInsets.only(
                                                    bottom: 2.0, top: 1),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                  color: Color.fromRGBO(
                                                      5, 102, 106, 1),
                                                ),
                                                child: Icon(
                                                  Icons.delete_forever_rounded,
                                                  color: Color.fromRGBO(
                                                      252, 244, 224, 1),
                                                  size: 20,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ]),
                                      ],
                                    );
                                  },
                                  separatorBuilder: (context, index) {
                                    return Divider(
                                      height: 2,
                                      thickness: 1,
                                      color: Colors.grey[500],
                                    );
                                  },
                                )
                              : Center(child: CircularProgressIndicator());
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 30.0, bottom: 20.0, left: 10.0, right: 10.0),
                      child: ElevatedButton(
                        child: Text(
                          'TAMBAH',
                          style: TextStyle(
                              color: Color.fromRGBO(252, 244, 224, 1)),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/daftarasupan',
                              arguments: {
                                'from': 'catatkalori',
                              });
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(5, 102, 106, 1),
                            padding: EdgeInsets.symmetric(
                                horizontal: 120, vertical: 10),
                            textStyle: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0))),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/cookies.png',
                          width: 100,
                          height: 100,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Camilan",
                            style: TextStyle(
                                color: Color.fromRGBO(5, 102, 106, 1),
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topRight,
                          padding: EdgeInsets.only(left: 110),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              FutureBuilder(
                                future: getTotalKkalCemilan(),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                  } else if (snapshot.hasData) {
                                    kkalCemilan = snapshot.data['total_kalori'];
                                    if (kkalCemilan == null) {
                                      kkalCemilan = '0';
                                    }
                                    return Text(
                                      kkalCemilan,
                                      style: TextStyle(
                                          color: Color.fromRGBO(5, 102, 106, 1),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25.0),
                                    );
                                  }
                                  return Center(
                                      child: CircularProgressIndicator());
                                },
                              ),
                              Text(
                                "kkal",
                                style: TextStyle(
                                    color: Color.fromRGBO(5, 102, 106, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0, right: 10.0),
                      child: FutureBuilder(
                        future: getCemilan(),
                        builder: (context, snapshot) {
                          if (snapshot.hasError) {
                            print(snapshot.error);
                          }
                          return snapshot.hasData
                              ? ListView.separated(
                                  shrinkWrap: true,
                                  itemCount: snapshot.data.length,
                                  itemBuilder: (context, index) {
                                    List list = snapshot.data;
                                    return Table(
                                      columnWidths: {
                                        0: FlexColumnWidth(1),
                                        1: FlexColumnWidth(4),
                                        2: FlexColumnWidth(1),
                                        3: FixedColumnWidth(25),
                                      },
                                      defaultVerticalAlignment:
                                          TableCellVerticalAlignment.middle,
                                      children: [
                                        TableRow(children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 5.0),
                                            child: Center(
                                              child: Text(
                                                "${list[index]['porsi']}g  -",
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        5, 102, 106, 1),
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 5.0),
                                            child: Text(
                                              list[index]['nama'],
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      5, 102, 106, 1),
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 5.0),
                                            child: Align(
                                              alignment: Alignment.center,
                                              child: Text(
                                                list[index]['kalori'],
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        5, 102, 106, 1),
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 5.0, bottom: 5.0),
                                            child: InkWell(
                                              onTap: () {
                                                deleteCemilan(
                                                    list[index]['id']);
                                              },
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                              child: Ink(
                                                padding: EdgeInsets.only(
                                                    bottom: 2.0, top: 1),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                  color: Color.fromRGBO(
                                                      5, 102, 106, 1),
                                                ),
                                                child: Icon(
                                                  Icons.delete_forever_rounded,
                                                  color: Color.fromRGBO(
                                                      252, 244, 224, 1),
                                                  size: 20,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ]),
                                      ],
                                    );
                                  },
                                  separatorBuilder: (context, index) {
                                    return Divider(
                                      height: 2,
                                      thickness: 1,
                                      color: Colors.grey[500],
                                    );
                                  },
                                )
                              : Center(child: CircularProgressIndicator());
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 30.0, bottom: 20.0, left: 10.0, right: 10.0),
                      child: ElevatedButton(
                        child: Text(
                          'TAMBAH',
                          style: TextStyle(
                              color: Color.fromRGBO(252, 244, 224, 1)),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/daftarasupan',
                              arguments: {
                                'from': 'catatkalori',
                              });
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(5, 102, 106, 1),
                            padding: EdgeInsets.symmetric(
                                horizontal: 120, vertical: 10),
                            textStyle: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0))),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Card(
              color: Color.fromRGBO(5, 102, 106, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/run.png',
                          width: 100,
                          height: 100,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Kegiatan",
                            style: TextStyle(
                                color: Color.fromRGBO(252, 244, 224, 1),
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topRight,
                          padding: EdgeInsets.only(left: 100),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              FutureBuilder(
                                future: getTotalKkalKegiatan(),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                  } else if (snapshot.hasData) {
                                    kkalKegiatan =
                                        snapshot.data['total_kalori'];
                                    if (kkalKegiatan == null) {
                                      kkalKegiatan = '0';
                                    }
                                    return Text(
                                      kkalKegiatan,
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(252, 244, 224, 1),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25.0),
                                    );
                                  }
                                  return Center(
                                      child: CircularProgressIndicator());
                                },
                              ),
                              Text(
                                "kkal",
                                style: TextStyle(
                                    color: Color.fromRGBO(252, 244, 224, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0, right: 10.0),
                      child: FutureBuilder(
                        future: getKegiatan(),
                        builder: (context, snapshot) {
                          if (snapshot.hasError) {
                            print(snapshot.error);
                          }
                          return snapshot.hasData
                              ? ListView.separated(
                                  shrinkWrap: true,
                                  itemCount: snapshot.data.length,
                                  itemBuilder: (context, index) {
                                    List list = snapshot.data;
                                    return Table(
                                      columnWidths: {
                                        0: FlexColumnWidth(2),
                                        1: FlexColumnWidth(4),
                                        2: FlexColumnWidth(1),
                                        3: FixedColumnWidth(25),
                                      },
                                      defaultVerticalAlignment:
                                          TableCellVerticalAlignment.middle,
                                      children: [
                                        TableRow(children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 5.0),
                                            child: Center(
                                              child: Text(
                                                "${list[index]['durasi']} menit  -",
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        252, 244, 224, 1),
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 5.0),
                                            child: Text(
                                              list[index]['nama'],
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      252, 244, 224, 1),
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 5.0),
                                            child: Align(
                                              alignment: Alignment.center,
                                              child: Text(
                                                list[index]['kalori'],
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        252, 244, 224, 1),
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 5.0, bottom: 5.0),
                                            child: InkWell(
                                              onTap: () {
                                                deleteKegiatan(
                                                    list[index]['id']);
                                              },
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                              child: Ink(
                                                padding: EdgeInsets.only(
                                                    bottom: 2.0, top: 1),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                  color: Color.fromRGBO(
                                                      252, 244, 224, 1),
                                                ),
                                                child: Icon(
                                                  Icons.delete_forever_rounded,
                                                  color: Color.fromRGBO(
                                                      5, 102, 106, 1),
                                                  size: 20,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ]),
                                      ],
                                    );
                                  },
                                  separatorBuilder: (context, index) {
                                    return Divider(
                                      height: 2,
                                      thickness: 1,
                                      color: Colors.grey[500],
                                    );
                                  },
                                )
                              : Center(child: CircularProgressIndicator());
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 30.0, bottom: 20.0, left: 10.0, right: 10.0),
                      child: ElevatedButton(
                        child: Text(
                          'TAMBAH',
                          style:
                              TextStyle(color: Color.fromRGBO(5, 102, 106, 1)),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/daftarkegiatan',
                              arguments: {
                                'from': 'catatkalori',
                              });
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(252, 244, 224, 1),
                            padding: EdgeInsets.symmetric(
                                horizontal: 120, vertical: 10),
                            textStyle: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0))),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              color: Color.fromRGBO(5, 102, 106, 1),
              child: Padding(
                padding: EdgeInsets.only(
                    left: 10.0, top: 5.0, bottom: 5.0, right: 10.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/bottle.png',
                          width: 50,
                          height: 50,
                        ),
                        Text(
                          "Kecukupan Minum",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(252, 244, 224, 1),
                              fontSize: 18.0),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 10.0,
                                  right: 5.0,
                                  bottom: 5.0,
                                  top: 10.0),
                              child: Container(
                                width: 290,
                                child: FutureBuilder(
                                  future: getTotalMinum(),
                                  builder: (context, snapshot) {
                                    if (snapshot.hasError) {
                                      print(snapshot.error);
                                    } else if (snapshot.hasData) {
                                      totalMinum = snapshot.data['total_minum'];
                                      if (totalMinum == null) {
                                        totalMinum = '0';
                                      } else if (double.parse(totalMinum) >
                                          2000) {
                                        totalMinum = '2000';
                                      }
                                      return LinearPercentIndicator(
                                        animation: true,
                                        animationDuration: 1000,
                                        lineHeight: 20.0,
                                        percent:
                                            double.parse(totalMinum) / 2000,
                                        center: Text(
                                          "$totalMinum ml",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromRGBO(
                                                  5, 102, 106, 1),
                                              fontSize: 12.0),
                                        ),
                                        backgroundColor:
                                            Color.fromRGBO(252, 244, 224, 1),
                                        progressColor:
                                            Color.fromRGBO(5, 102, 250, 1),
                                      );
                                    }
                                    return Center(
                                        child: CircularProgressIndicator());
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "2000",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(252, 244, 224, 1),
                                  fontSize: 16.0),
                            ),
                            Text(
                              "ml",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(252, 244, 224, 1),
                                  fontSize: 12.0),
                            )
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            child: Text(
                              '+250ml',
                              style: TextStyle(
                                  color: Color.fromRGBO(5, 102, 106, 1)),
                            ),
                            onPressed: () {
                              insertMinum250();
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Color.fromRGBO(252, 244, 224, 1),
                                padding: EdgeInsets.all(18.0),
                                textStyle: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                                shape: CircleBorder()),
                          ),
                          ElevatedButton(
                            child: Text(
                              '+500ml',
                              style: TextStyle(
                                  color: Color.fromRGBO(5, 102, 106, 1)),
                            ),
                            onPressed: () {
                              insertMinum500();
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Color.fromRGBO(252, 244, 224, 1),
                                padding: EdgeInsets.all(18.0),
                                textStyle: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                                shape: CircleBorder()),
                          ),
                          ElevatedButton(
                            child: Text(
                              '+1000ml',
                              style: TextStyle(
                                  color: Color.fromRGBO(5, 102, 106, 1)),
                            ),
                            onPressed: () {
                              insertMinum1000();
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Color.fromRGBO(252, 244, 224, 1),
                                padding: EdgeInsets.all(18.0),
                                textStyle: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                                shape: CircleBorder()),
                          ),
                          ElevatedButton(
                            child: Text(
                              '+1500ml',
                              style: TextStyle(
                                  color: Color.fromRGBO(5, 102, 106, 1)),
                            ),
                            onPressed: () {
                              insertMinum1500();
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Color.fromRGBO(252, 244, 224, 1),
                                padding: EdgeInsets.all(18.0),
                                textStyle: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                                shape: CircleBorder()),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          // Padding(
          //   padding: EdgeInsets.only(top: 10.0),
          //   child: Card(
          //     shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(10.0)),
          //     child: Padding(
          //       padding: EdgeInsets.only(
          //           left: 10.0, top: 5.0, bottom: 5.0, right: 10.0),
          //       child: Column(
          //         children: [
          //           Row(
          //             children: [
          //               Image.asset(
          //                 'assets/images/food.png',
          //                 width: 50,
          //                 height: 50,
          //               ),
          //               Padding(
          //                 padding: EdgeInsets.only(left: 5.0),
          //                 child: Text(
          //                   "Makro Nutrisi",
          //                   style: TextStyle(
          //                       fontWeight: FontWeight.bold,
          //                       color: Color.fromRGBO(5, 102, 106, 1),
          //                       fontSize: 18.0),
          //                 ),
          //               ),
          //             ],
          //           ),
          //           Container(
          //             width: 350,
          //             height: 200,
          //             child: BarChartGraph(data: data),
          //           )
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
