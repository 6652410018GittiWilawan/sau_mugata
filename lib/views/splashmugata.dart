import 'package:flutter/material.dart';
import 'package:sau_mugata/views/home_ui.dart';

class SplashmugataUi extends StatefulWidget {
  const SplashmugataUi({super.key});



  @override
  State<SplashmugataUi> createState() => _SplashmugataUiState();
}

class _SplashmugataUiState extends State<SplashmugataUi> {
  @override
  void initState(){
    Future.delayed(
      Duration(seconds: 3),
    () => Navigator.pushReplacement( context
     , MaterialPageRoute(
      builder: (context) => HomeUi(),
    ))
    );
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
 backgroundColor: Colors.deepOrange,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/logo.png',
                width: MediaQuery.of(context).size.width * 0.65,
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            CircularProgressIndicator(
              color: Colors.white,
            ),
            SizedBox(
              height: 40.0,
            ),
            Text(
              'Tech SAU BUFFET',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              'Coptyright © 2025 by Kitti',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}