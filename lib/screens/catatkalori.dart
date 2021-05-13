import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:cakal/widget/barchart_graph.dart';
import 'package:cakal/widget/barchart_model.dart';

class CatatKalori extends StatefulWidget {
  @override
  _CatatKaloriState createState() => _CatatKaloriState();
}

class _CatatKaloriState extends State<CatatKalori> {
  final List<BarChartModel> data = [
    BarChartModel(
      nama: "Protein",
      persentase: 50,
      color: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    BarChartModel(
      nama: "Lemak",
      persentase: 10,
      color: charts.ColorUtil.fromDartColor(Colors.green),
    ),
    BarChartModel(
      nama: "Karbohidrat",
      persentase: 100,
      color: charts.ColorUtil.fromDartColor(Colors.yellow),
    ),
    BarChartModel(
      nama: "Lainnya",
      persentase: 60,
      color: charts.ColorUtil.fromDartColor(Colors.red),
    ),
  ];

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
                                  left: 10.0, right: 5.0, bottom: 5.0),
                              child: Container(
                                width: 290,
                                child: LinearProgressIndicator(
                                  backgroundColor:
                                      Color.fromRGBO(252, 244, 224, 1),
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      Color.fromRGBO(5, 102, 250, 1)),
                                  value: 0.5,
                                ),
                              ),
                            ),
                            Text(
                              "1100",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(252, 244, 224, 1),
                                  fontSize: 12.0),
                            )
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
                            child: Text(
                              "2300",
                              style: TextStyle(
                                  color: Color.fromRGBO(252, 244, 224, 1),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0),
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
                          child: Text(
                            "500",
                            style: TextStyle(
                                color: Color.fromRGBO(252, 244, 224, 1),
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0),
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
                            child: Text(
                              "1100",
                              style: TextStyle(
                                  color: Color.fromRGBO(252, 244, 224, 1),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0),
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
                              Text(
                                "590",
                                style: TextStyle(
                                    color: Color.fromRGBO(5, 102, 106, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25.0),
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
                      child: Table(
                        columnWidths: {
                          0: FlexColumnWidth(1),
                          1: FlexColumnWidth(4),
                          2: FlexColumnWidth(1),
                          3: FixedColumnWidth(25),
                        },
                        defaultVerticalAlignment:
                            TableCellVerticalAlignment.middle,
                        border: TableBorder(
                            horizontalInside: BorderSide(
                                width: 1,
                                color: Colors.grey[400],
                                style: BorderStyle.solid)),
                        children: [
                          TableRow(children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 5.0),
                              child: Center(
                                child: Text(
                                  "100g  -",
                                  style: TextStyle(
                                      color: Color.fromRGBO(5, 102, 106, 1),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 5.0),
                              child: Text(
                                'Oatmeal (Quaker)',
                                style: TextStyle(
                                    color: Color.fromRGBO(5, 102, 106, 1),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 5.0),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  '70.0',
                                  style: TextStyle(
                                      color: Color.fromRGBO(5, 102, 106, 1),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: InkWell(
                                onTap: () {},
                                borderRadius: BorderRadius.circular(5.0),
                                child: Ink(
                                  padding: EdgeInsets.only(bottom: 2.0, top: 1),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    color: Color.fromRGBO(5, 102, 106, 1),
                                  ),
                                  child: Icon(
                                    Icons.edit_outlined,
                                    color: Color.fromRGBO(252, 244, 224, 1),
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Center(
                                child: Text(
                                  "140g  -",
                                  style: TextStyle(
                                      color: Color.fromRGBO(5, 102, 106, 1),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Text(
                                'Roti Gandum (Sari Roti)',
                                style: TextStyle(
                                    color: Color.fromRGBO(5, 102, 106, 1),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  '380.0',
                                  style: TextStyle(
                                      color: Color.fromRGBO(5, 102, 106, 1),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: InkWell(
                                onTap: () {},
                                borderRadius: BorderRadius.circular(5.0),
                                child: Ink(
                                  padding: EdgeInsets.only(bottom: 2.0, top: 1),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    color: Color.fromRGBO(5, 102, 106, 1),
                                  ),
                                  child: Icon(
                                    Icons.edit_outlined,
                                    color: Color.fromRGBO(252, 244, 224, 1),
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Center(
                                child: Text(
                                  "42g  -",
                                  style: TextStyle(
                                      color: Color.fromRGBO(5, 102, 106, 1),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Text(
                                'Susu Kental Manis Coklat (Bendera)',
                                style: TextStyle(
                                    color: Color.fromRGBO(5, 102, 106, 1),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  '140.0',
                                  style: TextStyle(
                                      color: Color.fromRGBO(5, 102, 106, 1),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: InkWell(
                                onTap: () {},
                                borderRadius: BorderRadius.circular(5.0),
                                child: Ink(
                                  padding: EdgeInsets.only(bottom: 2.0, top: 1),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    color: Color.fromRGBO(5, 102, 106, 1),
                                  ),
                                  child: Icon(
                                    Icons.edit_outlined,
                                    color: Color.fromRGBO(252, 244, 224, 1),
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                          ]),
                        ],
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
                              Text(
                                "590",
                                style: TextStyle(
                                    color: Color.fromRGBO(5, 102, 106, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25.0),
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
                      child: Table(
                        columnWidths: {
                          0: FlexColumnWidth(1),
                          1: FlexColumnWidth(4),
                          2: FlexColumnWidth(1),
                          3: FixedColumnWidth(25),
                        },
                        defaultVerticalAlignment:
                            TableCellVerticalAlignment.middle,
                        border: TableBorder(
                            horizontalInside: BorderSide(
                                width: 1,
                                color: Colors.grey[400],
                                style: BorderStyle.solid)),
                        children: [
                          TableRow(children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 5.0),
                              child: Center(
                                child: Text(
                                  "100g  -",
                                  style: TextStyle(
                                      color: Color.fromRGBO(5, 102, 106, 1),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 5.0),
                              child: Text(
                                'Oatmeal (Quaker)',
                                style: TextStyle(
                                    color: Color.fromRGBO(5, 102, 106, 1),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 5.0),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  '70.0',
                                  style: TextStyle(
                                      color: Color.fromRGBO(5, 102, 106, 1),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: InkWell(
                                onTap: () {},
                                borderRadius: BorderRadius.circular(5.0),
                                child: Ink(
                                  padding: EdgeInsets.only(bottom: 2.0, top: 1),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    color: Color.fromRGBO(5, 102, 106, 1),
                                  ),
                                  child: Icon(
                                    Icons.edit_outlined,
                                    color: Color.fromRGBO(252, 244, 224, 1),
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Center(
                                child: Text(
                                  "140g  -",
                                  style: TextStyle(
                                      color: Color.fromRGBO(5, 102, 106, 1),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Text(
                                'Roti Gandum (Sari Roti)',
                                style: TextStyle(
                                    color: Color.fromRGBO(5, 102, 106, 1),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  '380.0',
                                  style: TextStyle(
                                      color: Color.fromRGBO(5, 102, 106, 1),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: InkWell(
                                onTap: () {},
                                borderRadius: BorderRadius.circular(5.0),
                                child: Ink(
                                  padding: EdgeInsets.only(bottom: 2.0, top: 1),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    color: Color.fromRGBO(5, 102, 106, 1),
                                  ),
                                  child: Icon(
                                    Icons.edit_outlined,
                                    color: Color.fromRGBO(252, 244, 224, 1),
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Center(
                                child: Text(
                                  "42g  -",
                                  style: TextStyle(
                                      color: Color.fromRGBO(5, 102, 106, 1),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Text(
                                'Susu Kental Manis Coklat (Bendera)',
                                style: TextStyle(
                                    color: Color.fromRGBO(5, 102, 106, 1),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  '140.0',
                                  style: TextStyle(
                                      color: Color.fromRGBO(5, 102, 106, 1),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: InkWell(
                                onTap: () {},
                                borderRadius: BorderRadius.circular(5.0),
                                child: Ink(
                                  padding: EdgeInsets.only(bottom: 2.0, top: 1),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    color: Color.fromRGBO(5, 102, 106, 1),
                                  ),
                                  child: Icon(
                                    Icons.edit_outlined,
                                    color: Color.fromRGBO(252, 244, 224, 1),
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                          ]),
                        ],
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
                              Text(
                                "590",
                                style: TextStyle(
                                    color: Color.fromRGBO(5, 102, 106, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25.0),
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
                      child: Table(
                        columnWidths: {
                          0: FlexColumnWidth(1),
                          1: FlexColumnWidth(4),
                          2: FlexColumnWidth(1),
                          3: FixedColumnWidth(25),
                        },
                        defaultVerticalAlignment:
                            TableCellVerticalAlignment.middle,
                        border: TableBorder(
                            horizontalInside: BorderSide(
                                width: 1,
                                color: Colors.grey[400],
                                style: BorderStyle.solid)),
                        children: [
                          TableRow(children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 5.0),
                              child: Center(
                                child: Text(
                                  "100g  -",
                                  style: TextStyle(
                                      color: Color.fromRGBO(5, 102, 106, 1),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 5.0),
                              child: Text(
                                'Oatmeal (Quaker)',
                                style: TextStyle(
                                    color: Color.fromRGBO(5, 102, 106, 1),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 5.0),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  '70.0',
                                  style: TextStyle(
                                      color: Color.fromRGBO(5, 102, 106, 1),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: InkWell(
                                onTap: () {},
                                borderRadius: BorderRadius.circular(5.0),
                                child: Ink(
                                  padding: EdgeInsets.only(bottom: 2.0, top: 1),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    color: Color.fromRGBO(5, 102, 106, 1),
                                  ),
                                  child: Icon(
                                    Icons.edit_outlined,
                                    color: Color.fromRGBO(252, 244, 224, 1),
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Center(
                                child: Text(
                                  "140g  -",
                                  style: TextStyle(
                                      color: Color.fromRGBO(5, 102, 106, 1),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Text(
                                'Roti Gandum (Sari Roti)',
                                style: TextStyle(
                                    color: Color.fromRGBO(5, 102, 106, 1),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  '380.0',
                                  style: TextStyle(
                                      color: Color.fromRGBO(5, 102, 106, 1),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: InkWell(
                                onTap: () {},
                                borderRadius: BorderRadius.circular(5.0),
                                child: Ink(
                                  padding: EdgeInsets.only(bottom: 2.0, top: 1),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    color: Color.fromRGBO(5, 102, 106, 1),
                                  ),
                                  child: Icon(
                                    Icons.edit_outlined,
                                    color: Color.fromRGBO(252, 244, 224, 1),
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Center(
                                child: Text(
                                  "42g  -",
                                  style: TextStyle(
                                      color: Color.fromRGBO(5, 102, 106, 1),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Text(
                                'Susu Kental Manis Coklat (Bendera)',
                                style: TextStyle(
                                    color: Color.fromRGBO(5, 102, 106, 1),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  '140.0',
                                  style: TextStyle(
                                      color: Color.fromRGBO(5, 102, 106, 1),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: InkWell(
                                onTap: () {},
                                borderRadius: BorderRadius.circular(5.0),
                                child: Ink(
                                  padding: EdgeInsets.only(bottom: 2.0, top: 1),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    color: Color.fromRGBO(5, 102, 106, 1),
                                  ),
                                  child: Icon(
                                    Icons.edit_outlined,
                                    color: Color.fromRGBO(252, 244, 224, 1),
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                          ]),
                        ],
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
                              Text(
                                "590",
                                style: TextStyle(
                                    color: Color.fromRGBO(5, 102, 106, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25.0),
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
                      child: Table(
                        columnWidths: {
                          0: FlexColumnWidth(1),
                          1: FlexColumnWidth(4),
                          2: FlexColumnWidth(1),
                          3: FixedColumnWidth(25),
                        },
                        defaultVerticalAlignment:
                            TableCellVerticalAlignment.middle,
                        border: TableBorder(
                            horizontalInside: BorderSide(
                                width: 1,
                                color: Colors.grey[400],
                                style: BorderStyle.solid)),
                        children: [
                          TableRow(children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 5.0),
                              child: Center(
                                child: Text(
                                  "100g  -",
                                  style: TextStyle(
                                      color: Color.fromRGBO(5, 102, 106, 1),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 5.0),
                              child: Text(
                                'Oatmeal (Quaker)',
                                style: TextStyle(
                                    color: Color.fromRGBO(5, 102, 106, 1),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 5.0),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  '70.0',
                                  style: TextStyle(
                                      color: Color.fromRGBO(5, 102, 106, 1),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: InkWell(
                                onTap: () {},
                                borderRadius: BorderRadius.circular(5.0),
                                child: Ink(
                                  padding: EdgeInsets.only(bottom: 2.0, top: 1),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    color: Color.fromRGBO(5, 102, 106, 1),
                                  ),
                                  child: Icon(
                                    Icons.edit_outlined,
                                    color: Color.fromRGBO(252, 244, 224, 1),
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Center(
                                child: Text(
                                  "140g  -",
                                  style: TextStyle(
                                      color: Color.fromRGBO(5, 102, 106, 1),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Text(
                                'Roti Gandum (Sari Roti)',
                                style: TextStyle(
                                    color: Color.fromRGBO(5, 102, 106, 1),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  '380.0',
                                  style: TextStyle(
                                      color: Color.fromRGBO(5, 102, 106, 1),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: InkWell(
                                onTap: () {},
                                borderRadius: BorderRadius.circular(5.0),
                                child: Ink(
                                  padding: EdgeInsets.only(bottom: 2.0, top: 1),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    color: Color.fromRGBO(5, 102, 106, 1),
                                  ),
                                  child: Icon(
                                    Icons.edit_outlined,
                                    color: Color.fromRGBO(252, 244, 224, 1),
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Center(
                                child: Text(
                                  "42g  -",
                                  style: TextStyle(
                                      color: Color.fromRGBO(5, 102, 106, 1),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Text(
                                'Susu Kental Manis Coklat (Bendera)',
                                style: TextStyle(
                                    color: Color.fromRGBO(5, 102, 106, 1),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  '140.0',
                                  style: TextStyle(
                                      color: Color.fromRGBO(5, 102, 106, 1),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: InkWell(
                                onTap: () {},
                                borderRadius: BorderRadius.circular(5.0),
                                child: Ink(
                                  padding: EdgeInsets.only(bottom: 2.0, top: 1),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    color: Color.fromRGBO(5, 102, 106, 1),
                                  ),
                                  child: Icon(
                                    Icons.edit_outlined,
                                    color: Color.fromRGBO(252, 244, 224, 1),
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                          ]),
                        ],
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
                              Text(
                                "590",
                                style: TextStyle(
                                    color: Color.fromRGBO(252, 244, 224, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25.0),
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
                      child: Table(
                        columnWidths: {
                          0: FlexColumnWidth(1.3),
                          1: FlexColumnWidth(4),
                          2: FlexColumnWidth(1),
                          3: FixedColumnWidth(25),
                        },
                        defaultVerticalAlignment:
                            TableCellVerticalAlignment.middle,
                        border: TableBorder(
                            horizontalInside: BorderSide(
                                width: 1,
                                color: Colors.grey[400],
                                style: BorderStyle.solid)),
                        children: [
                          TableRow(children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 5.0),
                              child: Center(
                                child: Text(
                                  "60mnt  -",
                                  style: TextStyle(
                                      color: Color.fromRGBO(252, 244, 224, 1),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 5.0),
                              child: Text(
                                'Lari, naik turun tangga',
                                style: TextStyle(
                                    color: Color.fromRGBO(252, 244, 224, 1),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 5.0),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  '900.0',
                                  style: TextStyle(
                                      color: Color.fromRGBO(252, 244, 224, 1),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 5.0),
                              child: InkWell(
                                onTap: () {},
                                borderRadius: BorderRadius.circular(5.0),
                                child: Ink(
                                  padding: EdgeInsets.only(bottom: 2.0, top: 1),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    color: Color.fromRGBO(252, 244, 224, 1),
                                  ),
                                  child: Icon(
                                    Icons.edit_outlined,
                                    color: Color.fromRGBO(5, 102, 106, 1),
                                    size: 20,
                                  ),
                                ),
                              ),
                            )
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Center(
                                child: Text(
                                  "60mnt  -",
                                  style: TextStyle(
                                      color: Color.fromRGBO(252, 244, 224, 1),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Text(
                                'Lari, naik turun tangga',
                                style: TextStyle(
                                    color: Color.fromRGBO(252, 244, 224, 1),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  '900.0',
                                  style: TextStyle(
                                      color: Color.fromRGBO(252, 244, 224, 1),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: InkWell(
                                onTap: () {},
                                borderRadius: BorderRadius.circular(5.0),
                                child: Ink(
                                  padding: EdgeInsets.only(bottom: 2.0, top: 1),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    color: Color.fromRGBO(252, 244, 224, 1),
                                  ),
                                  child: Icon(
                                    Icons.edit_outlined,
                                    color: Color.fromRGBO(5, 102, 106, 1),
                                    size: 20,
                                  ),
                                ),
                              ),
                            )
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Center(
                                child: Text(
                                  "60mnt  -",
                                  style: TextStyle(
                                      color: Color.fromRGBO(252, 244, 224, 1),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Text(
                                'Lari, naik turun tangga',
                                style: TextStyle(
                                    color: Color.fromRGBO(252, 244, 224, 1),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  '900.0',
                                  style: TextStyle(
                                      color: Color.fromRGBO(252, 244, 224, 1),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: InkWell(
                                onTap: () {},
                                borderRadius: BorderRadius.circular(5.0),
                                child: Ink(
                                  padding: EdgeInsets.only(bottom: 2.0, top: 1),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    color: Color.fromRGBO(252, 244, 224, 1),
                                  ),
                                  child: Icon(
                                    Icons.edit_outlined,
                                    color: Color.fromRGBO(5, 102, 106, 1),
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                          ]),
                        ],
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
                                  left: 10.0, right: 5.0, bottom: 5.0),
                              child: Container(
                                width: 290,
                                child: LinearProgressIndicator(
                                  backgroundColor:
                                      Color.fromRGBO(252, 244, 224, 1),
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      Color.fromRGBO(5, 102, 250, 1)),
                                  value: 0.5,
                                ),
                              ),
                            ),
                            Text(
                              "1000",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(252, 244, 224, 1),
                                  fontSize: 12.0),
                            )
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
                              '+ 10ml',
                              style: TextStyle(
                                  color: Color.fromRGBO(5, 102, 106, 1)),
                            ),
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: Color.fromRGBO(252, 244, 224, 1),
                                padding: EdgeInsets.all(18.0),
                                textStyle: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                                shape: CircleBorder()),
                          ),
                          ElevatedButton(
                            child: Text(
                              '+ 25ml',
                              style: TextStyle(
                                  color: Color.fromRGBO(5, 102, 106, 1)),
                            ),
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: Color.fromRGBO(252, 244, 224, 1),
                                padding: EdgeInsets.all(18.0),
                                textStyle: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                                shape: CircleBorder()),
                          ),
                          ElevatedButton(
                            child: Text(
                              '+ 50ml',
                              style: TextStyle(
                                  color: Color.fromRGBO(5, 102, 106, 1)),
                            ),
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: Color.fromRGBO(252, 244, 224, 1),
                                padding: EdgeInsets.all(18.0),
                                textStyle: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                                shape: CircleBorder()),
                          ),
                          ElevatedButton(
                            child: Text(
                              '+ 100ml',
                              style: TextStyle(
                                  color: Color.fromRGBO(5, 102, 106, 1)),
                            ),
                            onPressed: () {},
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
          Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: Padding(
                padding: EdgeInsets.only(
                    left: 10.0, top: 5.0, bottom: 5.0, right: 10.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/food.png',
                          width: 50,
                          height: 50,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5.0),
                          child: Text(
                            "Makro Nutrisi",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(5, 102, 106, 1),
                                fontSize: 18.0),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 350,
                      height: 200,
                      child: BarChartGraph(data: data),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
