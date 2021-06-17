import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class KalkulatorBmi extends StatefulWidget {
  @override
  _KalkulatorBmiState createState() => _KalkulatorBmiState();
}

class _KalkulatorBmiState extends State<KalkulatorBmi>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  final tBController = TextEditingController();
  final bBController = TextEditingController();
  num bmi = 0;
  num tinggi = 0;
  num bBadan = 0;
  num kuadratTinggi;
  var kesimpulan;
  bool pressed = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    tBController.dispose();
    bBController.dispose();
    super.dispose();
  }

  void hitungBMI() {
    setState(() {
      tinggi = num.parse(tBController.text) / 100;
      bBadan = num.parse(bBController.text);
      kuadratTinggi = tinggi * tinggi;
      bmi = bBadan / kuadratTinggi;

      if (bmi < 18.5) {
        kesimpulan = 'Berat badan kurang';
      } else if (bmi >= 18.5 && bmi <= 22.9) {
        kesimpulan = 'Berat badan normal';
      } else if (bmi > 22.9 && bmi <= 29.9) {
        kesimpulan = 'Berat badan berlebihan';
      } else if (bmi > 29.9) {
        kesimpulan = 'Obesitas';
      } else {
        kesimpulan = 'Error';
      }
      pressed = true;
    });
    FocusScopeNode currentFocus = FocusScope.of(context);

    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
    tBController.clear();
    bBController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.only(top: 100, bottom: 10),
          children: [
            Container(
              child: Center(
                child: Text(
                  "Tinggi Badan (Centimeter)",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Container(
              child: TextField(
                controller: tBController,
                decoration: InputDecoration(
                    hintText: "Gunakan titik (.) untuk desimal",
                    hintStyle: TextStyle(fontSize: 15.0)),
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.deny(RegExp(r'[ ,-]'))
                ],
                style: TextStyle(fontSize: 20.0),
              ),
              padding: EdgeInsets.all(30),
            ),
            Container(
              child: Center(
                child: Text(
                  "Berat Badan (Kilogram)",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Container(
              child: TextField(
                controller: bBController,
                decoration: InputDecoration(
                    hintText: "Gunakan titik (.) untuk desimal",
                    hintStyle: TextStyle(fontSize: 15.0)),
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.deny(RegExp(r'[ ,-]'))
                ],
                style: TextStyle(fontSize: 20.0),
              ),
              padding: EdgeInsets.all(30),
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                child: Text(
                  "HITUNG BMI",
                  style: TextStyle(color: Color.fromRGBO(252, 244, 224, 1)),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(5, 102, 106, 1),
                    textStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0))),
                onPressed: hitungBMI,
              ),
              padding: EdgeInsets.all(30),
            ),
            Center(
              child: Text(
                "Tinggi badan = $tinggi meter",
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
            Center(
              child: Text(
                "Berat badan = $bBadan kg",
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
            Center(
              child: Text(
                "BMI = ${bmi.toStringAsFixed(2)}",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            pressed
                ? Center(
                    child: Text(
                      "$kesimpulan",
                      style: TextStyle(
                          fontSize: 19.0, fontWeight: FontWeight.bold),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
