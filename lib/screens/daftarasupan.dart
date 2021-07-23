import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DaftarAsupan extends StatefulWidget {
  @override
  _DaftarAsupanState createState() => _DaftarAsupanState();
}

class _DaftarAsupanState extends State<DaftarAsupan> {
  TextEditingController _searchController = TextEditingController();

  Future getAsupan() async {
    final response = await http.get(
        "http://10.0.2.2/apicakal/public/index.php/daftarasupan/getasupan");
    return json.decode(response.body);
  }

  Future getSomeAsupan($someNama) async {
    final response = await http.get(
        "http://10.0.2.2/apicakal/public/index.php/daftarasupan/getsomeasupan/$someNama");
    return json.decode(response.body);
  }

  Future getFavAsupan() async {
    final response = await http.get(
        "http://10.0.2.2/apicakal/public/index.php/daftarasupan/getfavasupan");
    return json.decode(response.body);
  }

  deleteAsupan($id) {
    String idAsupan = $id;
    http.post(
        "http://10.0.2.2/apicakal/public/index.php/daftarasupan/deleteasupan/$idAsupan");
  }

  String fav;
  updateFavAsupan(id) {
    http.post(
        "http://10.0.2.2/apicakal/public/index.php/daftarasupan/updatefavasupan/$id",
        body: {
          "id": id,
          "favorit": fav,
        });
  }

  String someNama = "";
  onItemChanged(String value) {
    setState(() {
      value == "" ? someNama = "" : someNama = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    Map arguments = ModalRoute.of(context).settings.arguments;

    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: arguments['from'] == 'beranda'
              ? Text("Daftar Asupan")
              : Text("Tambah Asupan"),
          backgroundColor: Color.fromRGBO(5, 102, 106, 1),
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 5.0,
            indicatorColor: Colors.white70,
            tabs: [
              Tab(
                child: Wrap(
                  children: [
                    Icon(Icons.search_rounded),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "Cari",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ),
              Tab(
                child: Wrap(
                  children: [
                    Icon(Icons.favorite_rounded),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "Favorit",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 10.0),
                  child: Column(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        color: Color.fromRGBO(5, 102, 106, 1),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Cari Asupanmu di Sini",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(252, 244, 224, 1),
                                    fontSize: 18.0),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: TextField(
                                  controller: _searchController,
                                  onChanged: onItemChanged,
                                  decoration: InputDecoration(
                                    hintText: "Cari nama asupan",
                                    icon: Icon(Icons.search_rounded),
                                    border: InputBorder.none,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Tidak menemukan asupan yang dicari?',
                              style: TextStyle(
                                color: Color.fromRGBO(5, 102, 106, 1),
                              ),
                            ),
                            ElevatedButton(
                              child: Text(
                                'TAMBAH',
                                style: TextStyle(
                                    color: Color.fromRGBO(252, 244, 224, 1)),
                              ),
                              onPressed: () {
                                Navigator.pushNamed(
                                  context,
                                  '/tambahasupan',
                                  arguments: {
                                    'from': 'tambah',
                                    'data': null,
                                  },
                                ).then((_) => setState(() {}));
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Color.fromRGBO(5, 102, 106, 1),
                                  textStyle: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10.0))),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 14.0),
                        child: Text(
                          "Daftar Asupan",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(5, 102, 106, 1),
                              fontSize: 18.0),
                        ),
                      ),
                      Container(
                        constraints: BoxConstraints(
                            minHeight: 100,
                            minWidth: double.infinity,
                            maxHeight: 330),
                        child: FutureBuilder(
                          future: someNama == ""
                              ? getAsupan()
                              : getSomeAsupan(someNama),
                          builder: (context, snapshot) {
                            if (snapshot.hasError) print(snapshot.error);
                            return snapshot.hasData
                                ? ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: snapshot.data.length,
                                    itemBuilder: (context, index) {
                                      return Card(
                                        color: Colors.white.withOpacity(0.5),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.pushNamed(
                                              context,
                                              '/tambahasupan',
                                              arguments: {
                                                'from': 'edit',
                                                'data': snapshot.data[index],
                                              },
                                            ).then((_) => setState(() {}));
                                          },
                                          onLongPress: () {
                                            return showDialog(
                                                    context: context,
                                                    barrierDismissible: false,
                                                    builder: (BuildContext alert) {
                                                      return AlertDialog(
                                                        title: Text(
                                                          "Aksi untuk Asupan",
                                                          style: TextStyle(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      0,
                                                                      83,
                                                                      66,
                                                                      1.0),
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        content: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                IconButton(
                                                                  icon: snapshot.data[index]
                                                                              [
                                                                              'favorit'] ==
                                                                          "yes"
                                                                      ? Icon(
                                                                          Icons
                                                                              .favorite_rounded,
                                                                          size:
                                                                              35,
                                                                          color:
                                                                              Colors.red,
                                                                        )
                                                                      : Icon(
                                                                          Icons
                                                                              .favorite_border_rounded,
                                                                          size:
                                                                              35,
                                                                        ),
                                                                  onPressed:
                                                                      () {
                                                                    Navigator.pop(
                                                                        alert);
                                                                    fav == "no"
                                                                        ? fav =
                                                                            "yes"
                                                                        : fav =
                                                                            "no";
                                                                    updateFavAsupan(
                                                                        snapshot.data[index]
                                                                            [
                                                                            'id']);
                                                                  },
                                                                ),
                                                                Text(
                                                                    "Favoritkan"),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              width: 40,
                                                            ),
                                                            Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                IconButton(
                                                                  icon: Icon(
                                                                    Icons
                                                                        .delete_forever_rounded,
                                                                    size: 35,
                                                                  ),
                                                                  onPressed:
                                                                      () {
                                                                    Navigator.pop(
                                                                        alert);
                                                                    deleteAsupan(
                                                                        snapshot.data[index]
                                                                            [
                                                                            'id']);
                                                                  },
                                                                ),
                                                                Text("Hapus"),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                        actions: [
                                                          TextButton(
                                                              onPressed: () {
                                                                Navigator.pop(
                                                                    alert);
                                                              },
                                                              child:
                                                                  Text("Batal"))
                                                        ],
                                                      );
                                                    })
                                                .then(
                                                    (value) => setState(() {}));
                                          },
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 6.0),
                                            child: ListTile(
                                              leading: Image.asset(
                                                snapshot.data[index]['jenis'] ==
                                                        'Makanan'
                                                    ? 'assets/images/cookies.png'
                                                    : 'assets/images/drink.png',
                                                height: 50,
                                                width: 50,
                                              ),
                                              title: Text(
                                                snapshot.data[index]['nama'] +
                                                    ' (' +
                                                    snapshot.data[index]
                                                        ['merk'] +
                                                    ')',
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        5, 102, 106, 1),
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              subtitle: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 3.0),
                                                    child: Text(
                                                      'Ukuran perporsi: ' +
                                                          snapshot.data[index][
                                                              'ukuran_perporsi'] +
                                                          'g',
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        'Kalori : ' +
                                                            snapshot.data[index]
                                                                ['kalori'] +
                                                            'kkal',
                                                      ),
                                                      Text(
                                                        'Karbohidrat : ' +
                                                            snapshot.data[index]
                                                                [
                                                                'karbohidrat'] +
                                                            'g',
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        'Lemak : ' +
                                                            snapshot.data[index]
                                                                ['lemak'] +
                                                            'g',
                                                      ),
                                                      Text(
                                                        'Protein : ' +
                                                            snapshot.data[index]
                                                                ['protein'] +
                                                            'g',
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  )
                                : Center(child: CircularProgressIndicator());
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: 10.0, left: 14.0, right: 14.0),
                    child: Text(
                      "Daftar Asupan Favorit",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(5, 102, 106, 1),
                          fontSize: 18.0),
                    ),
                  ),
                  ListView(
                    shrinkWrap: true,
                    children: [
                      FutureBuilder(
                        future: getFavAsupan(),
                        builder: (context, snapshot) {
                          if (snapshot.hasError) print(snapshot.error);
                          return snapshot.hasData
                              ? ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: snapshot.data.length,
                                  itemBuilder: (context, index) {
                                    return Card(
                                      color: Colors.white.withOpacity(0.5),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: InkWell(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 6.0),
                                          child: ListTile(
                                            leading: Image.asset(
                                              snapshot.data[index]['jenis'] ==
                                                      'Makanan'
                                                  ? 'assets/images/cookies.png'
                                                  : 'assets/images/drink.png',
                                              height: 50,
                                              width: 50,
                                            ),
                                            title: Text(
                                              snapshot.data[index]['nama'] +
                                                  ' (' +
                                                  snapshot.data[index]['merk'] +
                                                  ')',
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      5, 102, 106, 1),
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            subtitle: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 3.0),
                                                  child: Text(
                                                      'Ukuran perporsi: ' +
                                                          snapshot.data[index][
                                                              'ukuran_perporsi'] +
                                                          'g'),
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text('Kalori : ' +
                                                        snapshot.data[index]
                                                            ['kalori'] +
                                                        'kkal'),
                                                    Text('Karbohidrat : ' +
                                                        snapshot.data[index]
                                                            ['karbohidrat'] +
                                                        'g'),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text('Lemak : ' +
                                                        snapshot.data[index]
                                                            ['lemak'] +
                                                        'g'),
                                                    Text('Protein : ' +
                                                        snapshot.data[index]
                                                            ['protein'] +
                                                        'g'),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  })
                              : Center(child: CircularProgressIndicator());
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
