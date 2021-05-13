import 'package:flutter/material.dart';
import 'package:cakal/screens/beranda.dart';
import 'package:cakal/screens/catatkalori.dart';
import 'package:cakal/screens/datadiri.dart';
import 'package:cakal/screens/daftarasupan.dart';
import 'package:cakal/screens/tambahasupan.dart';
import 'package:cakal/screens/daftarkegiatan.dart';
import 'package:cakal/screens/splash.dart';
import 'package:cakal/screens/kalkulatorbmi.dart';

void main() {
  runApp(CakalApp());
}

class CakalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cakal Application',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(252, 244, 224, 1),
      ),
      home: SplashScreen(),
      routes: {
        '/beranda': (context) => Beranda(),
        '/datadiri': (context) => DataDiri(),
        '/daftarasupan': (context) => DaftarAsupan(),
        '/tambahasupan': (context) => TambahAsupan(),
        '/daftarkegiatan': (context) => DaftarKegiatan(),
        '/kalkulatorbmi': (context) => KalkulatorBmi(),
        '/catatkalori': (context) => CatatKalori()
      },
    );
  }
}
