import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Container(
          color: Colors.black,
          // MediaQuery.of(context) : size에서 width, height를 가져올 수 있음
          // Column, Row  - 주축에서는 차지할 수 있는 최대의 사이즈를 차지함
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                // MainAxisAlignment - 주축 정렬 (기본값 start)
                // Start - 시작
                // end - 끝
                // center - 가운데
                // spaceBetween - 양끝에 위젯 + 나머지 위젯들의 간격이 동일
                // spaceEvenly - 양끝에 공백 + 모든 위젯들의 간격이 동일
                // spaceAround - 양끝에 공백의 간격은 1/2 + spaceEvenly
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // mainAxisSize: MainAxisSize.max ,
                // mainAxisSize : 주축 크기
                // max - 최대, min - 최소
                crossAxisAlignment: CrossAxisAlignment.start,


                // crossAxisAlignment - 반대축 정렬 (기본값 center, Row - 세로, Column - 가로)
                // Start - 시작
                // end - 끝
                // center - 가운데
                // stretch - 최대한으로 늘린다.

                children: [
                  // Expanded / Flexible - Row, Column안의 children에만 무조건 사용할 수 있음!!
                  // Expanded - 최대한으로 남아있는 공간을 모두 차지
                  // flex - Expanded / Flexible 의 parameter,  Expanded 위젯끼리 공간을 나눠먹는 비율(가중치)
                  // Flexible - 일단 정해준 비율만큼 차지(폐기처리된 공간 + child 안의 위젯)
                  // Flexible2 - & child 안의 위젯이 그 공간을 다 차지하지 못하면 남는 공간을 버려버림
                  Container(
                    color: Colors.red,
                    width: 50,
                    height: 50,
                  ),
                  Container(
                    color: Colors.orange,
                    width: 50,
                    height: 50,
                  ),
                  Container(
                    color: Colors.yellow,
                    width: 50,
                    height: 50,
                  ),
                  Container(
                    color: Colors.green,
                    width: 50,
                    height: 50,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.orange,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    color: Colors.red,
                    width: 50,
                    height: 50,
                  ),
                  Container(
                    color: Colors.orange,
                    width: 50,
                    height: 50,
                  ),
                  Container(
                    color: Colors.yellow,
                    width: 50,
                    height: 50,
                  ),
                  Container(
                    color: Colors.green,
                    width: 50,
                    height: 50,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.green,
                    height: 50,
                    width: 50,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
