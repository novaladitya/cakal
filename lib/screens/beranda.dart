import 'package:flutter/material.dart';

class Beranda extends StatefulWidget {
  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  var asik = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ClipPath(
            clipper: TopClipper(),
            child: Container(
              height: 400.0,
              color: Color.fromRGBO(5, 102, 106, 1),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 80.0,
                      left: 40.0,
                      right: 40.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Halo!",
                          style: TextStyle(
                            color: Color.fromRGBO(252, 244, 224, 1),
                            fontWeight: FontWeight.w900,
                            fontSize: 35.0,
                          ),
                        ),
                        Text(
                          "Selamat Datang di Aplikasi Cakal",
                          style: TextStyle(
                            color: Color.fromRGBO(252, 244, 224, 1),
                            fontWeight: FontWeight.w700,
                            fontSize: 20.0,
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          "Silahkan Pilih Menu di Bawah",
                          style: TextStyle(
                            color: Color.fromRGBO(252, 244, 224, 1),
                            fontWeight: FontWeight.w300,
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 200.0,
              left: 20.0,
              right: 20.0,
            ),
            child: Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 20.0,
                mainAxisSpacing: 20.0,
                physics: BouncingScrollPhysics(),
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 4,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          '/daftarasupan',
                          arguments: {
                            'from': 'beranda',
                          },
                        );
                      },
                      borderRadius: BorderRadius.circular(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/images/cookies.png',
                            width: 100,
                            height: 100,
                          ),
                          Text(
                            'Daftar Asupan',
                            style: TextStyle(
                              color: Color.fromRGBO(5, 102, 106, 1),
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 4,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/daftarkegiatan',
                            arguments: {
                              'from': 'beranda',
                            });
                      },
                      borderRadius: BorderRadius.circular(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/images/run.png',
                            width: 100,
                            height: 100,
                          ),
                          Text(
                            'Daftar Kegiatan',
                            style: TextStyle(
                              color: Color.fromRGBO(5, 102, 106, 1),
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 4,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/catatkalori');
                      },
                      borderRadius: BorderRadius.circular(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/images/food.png',
                            width: 100,
                            height: 100,
                          ),
                          Text(
                            'Catatan Kalori',
                            style: TextStyle(
                              color: Color.fromRGBO(5, 102, 106, 1),
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 4,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/kalkulatorbmi');
                      },
                      borderRadius: BorderRadius.circular(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/images/scale.png',
                            width: 100,
                            height: 100,
                          ),
                          Text(
                            'Kalkulator BMI',
                            style: TextStyle(
                              color: Color.fromRGBO(5, 102, 106, 1),
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TopClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - (size.height / 3));
    path.quadraticBezierTo(size.width / 2, size.height, size.width,
        size.height - (size.height / 3));
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
