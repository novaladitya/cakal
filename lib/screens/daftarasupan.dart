import 'package:flutter/material.dart';

class DaftarAsupan extends StatefulWidget {
  @override
  _DaftarAsupanState createState() => _DaftarAsupanState();
}

class _DaftarAsupanState extends State<DaftarAsupan> {
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
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                      "Daftar Asupan",
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
                                'assets/images/cookies.png',
                                height: 50,
                                width: 50,
                              ),
                              title: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Oatmeal (Quaker)",
                                    style: TextStyle(
                                        color: Color.fromRGBO(5, 102, 106, 1),
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(Icons.favorite_border_rounded),
                                ],
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 3.0),
                                    child: Text("Ukuran perporsi: 100g"),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Kalori : 70.00kkal"),
                                      Text("Karbohidrat : 12.00g"),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Lemak : 2.00g"),
                                      Text("Protein : 2.00g"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
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
                                'assets/images/cookies.png',
                                height: 50,
                                width: 50,
                              ),
                              title: Text(
                                "Roti Gandum (Sari Roti)",
                                style: TextStyle(
                                    color: Color.fromRGBO(5, 102, 106, 1),
                                    fontWeight: FontWeight.bold),
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 3.0),
                                    child: Text("Ukuran perporsi: 100g"),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Kalori : 70.00kkal"),
                                      Text("Karbohidrat : 12.00g"),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Lemak : 2.00g"),
                                      Text("Protein : 2.00g"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
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
                                'assets/images/drink.png',
                                height: 50,
                                width: 50,
                              ),
                              title: Text(
                                "Susu Kental Manis Coklat (Bendera)",
                                style: TextStyle(
                                    color: Color.fromRGBO(5, 102, 106, 1),
                                    fontWeight: FontWeight.bold),
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 3.0),
                                    child: Text("Ukuran perporsi: 100g"),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Kalori : 70.00kkal"),
                                      Text("Karbohidrat : 12.00g"),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Lemak : 2.00g"),
                                      Text("Protein : 2.00g"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    child: Text(
                      'TAMBAH',
                      style: TextStyle(color: Color.fromRGBO(252, 244, 224, 1)),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        '/tambahasupan',
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(5, 102, 106, 1),
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        textStyle: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0))),
                  ),
                ],
              ),
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
                                'assets/images/cookies.png',
                                height: 50,
                                width: 50,
                              ),
                              title: Text(
                                "Oatmeal (Quaker)",
                                style: TextStyle(
                                    color: Color.fromRGBO(5, 102, 106, 1),
                                    fontWeight: FontWeight.bold),
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 3.0),
                                    child: Text("Ukuran perporsi: 100g"),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Kalori : 70.00kkal"),
                                      Text("Karbohidrat : 12.00g"),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Lemak : 2.00g"),
                                      Text("Protein : 2.00g"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
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
                                'assets/images/cookies.png',
                                height: 50,
                                width: 50,
                              ),
                              title: Text(
                                "Roti Gandum (Sari Roti)",
                                style: TextStyle(
                                    color: Color.fromRGBO(5, 102, 106, 1),
                                    fontWeight: FontWeight.bold),
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 3.0),
                                    child: Text("Ukuran perporsi: 100g"),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Kalori : 70.00kkal"),
                                      Text("Karbohidrat : 12.00g"),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Lemak : 2.00g"),
                                      Text("Protein : 2.00g"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
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
                                'assets/images/drink.png',
                                height: 50,
                                width: 50,
                              ),
                              title: Text(
                                "Susu Kental Manis Coklat (Bendera)",
                                style: TextStyle(
                                    color: Color.fromRGBO(5, 102, 106, 1),
                                    fontWeight: FontWeight.bold),
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 3.0),
                                    child: Text("Ukuran perporsi: 100g"),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Kalori : 70.00kkal"),
                                      Text("Karbohidrat : 12.00g"),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Lemak : 2.00g"),
                                      Text("Protein : 2.00g"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
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
