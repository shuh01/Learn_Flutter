import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: [Icon(Icons.star), Icon(Icons.shop)], title: Text('금호동 3가'),
        backgroundColor: Colors.orangeAccent,),
        body: SizedBox(
          width: double.infinity, height: 130,
          child: Row(
            children: [
              SizedBox(width: 20),
              Image.asset('camera.png', width: 100, height: 100),
              SizedBox(width: 50),
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('캐논 DSLR 100D (단렌즈, 충전기 16기가SD 포함)',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
                      Text('성동구 행당동 - 끌올 10분전', style: TextStyle(color: Colors.grey)),
                      Text('210,000원', style: TextStyle(fontWeight: FontWeight.w700)),
                      Row(
                          children: [SizedBox(width: 250),Icon(Icons.favorite), Text('4'),]),
                    ],
                  ),
                ],
                ),
              ],
          ),
          ),
        ),
    );
  }
}
