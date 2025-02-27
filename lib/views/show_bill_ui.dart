import 'dart:io';
import 'package:flutter/material.dart';

class ShowBillUi extends StatefulWidget {
  double? payTotal;
  File? imgFile;

  ShowBillUi({
    super.key,
    this.payTotal,
    this.imgFile,
  });

  @override
  State<ShowBillUi> createState() => _ShowBillUiState();
}

class _ShowBillUiState extends State<ShowBillUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('ShowBill'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Total: ${widget.payTotal}บาท',
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }
}