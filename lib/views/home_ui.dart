import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sau_mugata/views/about_ui.dart';
import 'package:sau_mugata/views/cal_bill_ui.dart';
import 'package:sau_mugata/views/menu_ui.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  //สร้างตัวควบคุม AnimatedNotchBottombar
  NotchBottomBarController _pageController = NotchBottomBarController(index: 1);

  //สร้างตัวแปรเก็บหน้าจอที่จะแสดง body ซื่งต่อกับ AnimatedNotchBottombar
  List<Widget>viewInBody =[
    CalBillUI(),
    MenuUi(),
    AboutUi(),
  ];
  int indexShow = 1;
  //Create Index Page to Show Body

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Text(
            'Tech SAU BUFFET',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
        ),
        bottomNavigationBar: AnimatedNotchBottomBar(
          onTap: (valueParam){
            setState(() {
              indexShow = valueParam;
            });
          },
          kIconSize: 24.0,
          kBottomRadius: 20.0,
          notchColor: Colors.deepOrange,
          color: Colors.deepOrange,
          notchBottomBarController: _pageController,
          bottomBarItems: [
            const BottomBarItem(
              inActiveItem: Icon(
                FontAwesomeIcons.moneyBillWave,
                color: Colors.white,
              ),
              activeItem: Icon(
                FontAwesomeIcons.moneyBillWave,
                color: Colors.white,
              ),
              itemLabel: 'คิดเงิน',
            ),
            const BottomBarItem(
              inActiveItem: Icon(
                Icons.home,
                color: Colors.white,
              ),
              activeItem: Icon(
                Icons.home,
                color: Colors.white,
              ),
              itemLabel: 'Menu',
            ),
            const BottomBarItem(
              inActiveItem: Icon(
                Icons.star,
                color: Colors.white,
              ),
              activeItem: Icon(
                Icons.star,
                color: Colors.white,
              ),
              itemLabel: 'เกี่ยวกับ',
            ),
          ],
        )
        ,

        body: viewInBody[indexShow],

        );
        
        
  }
}
