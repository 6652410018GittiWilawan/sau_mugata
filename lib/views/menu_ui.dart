import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MenuUi extends StatefulWidget {
  const MenuUi({super.key});

  @override
  State<MenuUi> createState() => _MenuUiState();
}

class _MenuUiState extends State<MenuUi> {
  @override
  List<String> menuShow = [
    'assets/images/img1.png',
    'assets/images/img2.png',
    'assets/images/img3.png',
    'assets/images/img4.png',
    'assets/images/img5.png',
    'assets/images/img6.png',
    'assets/images/img7.png'
  ];

  List<String> branchShop = [
    'assets/images/shop1.png',
    'assets/images/shop2.png',
    'assets/images/shop3.png',
    'assets/images/shop4.png',
    'assets/images/shop5.png',
  ];

  //Create GPS 
  List<String> shopLocation = [
    'https://www.google.com/maps/@3.1385059,101.6869895,12z',
    'https://www.google.com/maps/@40.9138412,8.707705,17z',
    'https://www.google.com/maps/@47.4693628,15.3283012,17z',
    'https://www.google.com/maps/@65.2840829,-14.4519584,14z',
    'https://www.google.com/maps/@-43.5134626,172.5591287,17z',
  ];

    Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            Image.asset(
              'assets/images/logo.png',
              width: 200.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'เมนูเด็ด',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 100.0,
              margin: EdgeInsets.only(left: 25.0, right: 25.0),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: menuShow.length,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(5.0),
                            child: Image.asset(
                              menuShow[index],
                            )));
                  }),
            ),
            SizedBox(
              height: 24.0,
            ),
            Text(
              'ร้านในเครือ',
              style: TextStyle(
                fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.0,
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: branchShop.length,
                itemBuilder: (context,index){
                  return Padding(
                    padding: EdgeInsets.only(
                      left: 35.0,
                      right: 35.0,
                      bottom:15.0,
                    ),
                  child: InkWell(
                    onTap: (){
                      _launchInBrowser(
                        Uri.parse(
                          shopLocation[index],)
                      );
                    },
                    child: Image.asset(
                      branchShop[index],
                    ),
                  )
                  );
                }

              ),
            ),
          ],
        ),
      ),
    );
  }
}
