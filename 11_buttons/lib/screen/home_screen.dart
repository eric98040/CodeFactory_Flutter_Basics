import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                // primary - main color (background color)
                // onPrimary - word, animation color
                // shadowColor - shadow color
                // elevation - 3D 입체감의 높이
                primary: Colors.red,
                onPrimary: Colors.white,
                shadowColor: Colors.green,
                elevation: 10.0,
                textStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20.0,
                ),
                padding: EdgeInsets.all(32.0),
                side: BorderSide(
                  color: Colors.black,
                  width: 4.0,
                )
              ),
              child: Text('Elevated Button'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text('Outlined Button'),
              style: OutlinedButton.styleFrom(

              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text('Text Button'),
            )
          ],
        ),
      ),
    );
  }
}
