import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DaftarKegiatan extends StatefulWidget {
  @override
  _DaftarKegiatanState createState() => _DaftarKegiatanState();
}

class _DaftarKegiatanState extends State<DaftarKegiatan> {
  @override
  Widget build(BuildContext context) {
    Map arguments = ModalRoute.of(context).settings.arguments;

    Future getKegiatan() async {
      final response = await http.get(
          "http://10.0.2.2/apicakal/public/index.php/daftarkegiatan/getkegiatan");
      return json.decode(response.body);
    }

    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: arguments['from'] == 'beranda'
              ? Text("Daftar Kegiatan")
              : Text("Tambah Kegiatan"),
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
                                "Cari Kegiatanmu di Sini",
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
                                  horizontal: 30,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(29.5),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Cari",
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
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 14.0),
                        child: Text(
                          "Daftar Kegiatan",
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
                          future: getKegiatan(),
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
                                          onTap: () {},
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 6.0),
                                            child: ListTile(
                                                leading: Image.asset(
                                                  'assets/images/run.png',
                                                  height: 50,
                                                  width: 50,
                                                ),
                                                title: Text(
                                                  snapshot.data[index]['nama'],
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          5, 102, 106, 1),
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                subtitle: Text(
                                                  'Kalori per jam : ' +
                                                      snapshot.data[index]
                                                          ['kalori'] +
                                                      'kkal',
                                                )),
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
                      "Daftar Kegiatan Favorit",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(5, 102, 106, 1),
                          fontSize: 18.0),
                    ),
                  ),
                  ListView(
                    shrinkWrap: true,
                    children: [
                      Card(
                        color: Colors.white.withOpacity(0.5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: InkWell(
                          onTap: () {},
                          borderRadius: BorderRadius.circular(10.0),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 6.0),
                            child: ListTile(
                                leading: Image.asset(
                                  'assets/images/run.png',
                                  height: 50,
                                  width: 50,
                                ),
                                title: Text(
                                  "Lari, naik turun tangga",
                                  style: TextStyle(
                                      color: Color.fromRGBO(5, 102, 106, 1),
                                      fontWeight: FontWeight.bold),
                                ),
                                subtitle: Text(
                                  "Kalori per jam : 900kkal",
                                )),
                          ),
                        ),
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
