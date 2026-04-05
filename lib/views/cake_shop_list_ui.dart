import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_controller.dart';
class CakeShopListUi extends StatefulWidget {
  const CakeShopListUi({super.key});

  @override
  State<CakeShopListUi> createState() => _CakeShopListUiState();
}

class _CakeShopListUiState extends State<CakeShopListUi> {
  //ตัวแปรเก็บ 7 รูปของ 7 ร้านที่จะใช้กับ Slider
  List<String> imgShopLogo = [
    'assets/images/ck01.png',
    'assets/images/ck02.png',
    'assets/images/ck03.png',
    'assets/images/ck04.png',
    'assets/images/ck05.png',
    'assets/images/ck06.png',
    'assets/images/ck07.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'สายด่วนกินเค้ก',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      //ส่วนของ Body
      body: Center(
        child: Column(
          children: [
            //ส่วนของSlider
            CarouselSlider.builder(
              itemCount: imgShopLogo.length,
              itemBuilder: (context, index, realInd),
            ),
            //ส่วนของ ListView
          ],
        ),
      ),
    );
  }
}