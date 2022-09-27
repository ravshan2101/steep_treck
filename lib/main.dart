import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectIndex = 0;

  void _onTab(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('Hi,Ravshan'),
        actions: [
          Image(image: AssetImage('assets/images/2.png')),
        ],
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage('assets/images/1.png'))),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 120,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        ' Sounds of nature',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      Text(
                        'All',
                        style:
                            TextStyle(fontSize: 16, color: Color(0xefefD86B2E)),
                      ),
                    ],
                  ),
                ),
                _cardwidget(
                    imagePr: 'assets/images/3.png',
                    title1: 'Seeds of hope',
                    title2: '3:24',
                    imageIk1: 'assets/images/Group1.png',
                    imageIk2: 'assets/images/4.png',
                    imageIk3: 'assets/images/Group.png'),
                SizedBox(
                  height: 10,
                ),
                _cardwidget2(
                    imagePr: 'assets/images/pr1.png',
                    title1: 'Forest River',
                    title2: '3:24',
                    imageIk3: 'assets/images/Path.png'),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        ' Meditation',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      Text(
                        'All',
                        style:
                            TextStyle(fontSize: 16, color: Color(0xefefD86B2E)),
                      ),
                    ],
                  ),
                ),
                _cardwidget2(
                    imagePr: 'assets/images/image1.png',
                    imageIk3: 'assets/images/Path.png',
                    title1: 'Meditation Music',
                    title2: '3:24'),
                SizedBox(
                  height: 10,
                ),
                _cardwidget2(
                    imagePr: 'assets/images/image1.png',
                    imageIk3: 'assets/images/Path.png',
                    title1: 'Meditation Music',
                    title2: '3:24'),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        ' Meditation guides',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      Text(
                        'All',
                        style:
                            TextStyle(fontSize: 16, color: Color(0xefefD86B2E)),
                      ),
                    ],
                  ),
                ),
                _cardwidget2(
                    imagePr: 'assets/images/image1.png',
                    imageIk3: 'assets/images/Path.png',
                    title1: 'Deep meditation ',
                    title2: '3:24'),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  height: 100,
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/images/Rectangle 28.png')),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8, bottom: 2),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Chakra Meditation Guid',
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                'Book',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      )),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                          child: Container(
                        height: double.infinity,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/images/Rectangle 29.png')),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8, bottom: 2),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Meditation Guidline',
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                'Article',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: 55,
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: Text(
                      'Sleep now',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(),
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/bottom.png'))),
                      ),
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage('assets/images/bottom3.png'))),
                      ),
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage('assets/images/bottom2.png'))),
                      ),
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage('assets/images/bottom4.png'))),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
      // bottomNavigationBar: BottomNavigationBar(
      //     elevation: 0,
      //     currentIndex: _selectIndex,
      //     onTap: _onTab,
      //     backgroundColor: Colors.lightBlue,
      //     mouseCursor: SystemMouseCursors.grab,
      //     selectedIconTheme: IconThemeData(color: Colors.white, size: 30),
      //     items: const <BottomNavigationBarItem>[
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.home),
      //           label: 'home',
      //           backgroundColor: Colors.transparent),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.call),
      //         label: 'home',
      //         backgroundColor: Colors.transparent,
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.home),
      //         label: 'home',
      //         backgroundColor: Colors.transparent,
      //       ),
      //     ]),
    );
  }
}

Widget _cardwidget(
    {String? imagePr, imageIk1, imageIk2, imageIk3, title1, title2}) {
  return Container(
    height: 50,
    margin: EdgeInsets.symmetric(horizontal: 20),
    decoration: BoxDecoration(
        color: Color(0xefef33FFFFFF), borderRadius: BorderRadius.circular(10)),
    child: Row(
      children: [
        Container(
          padding: EdgeInsets.only(left: 5),
          child: Image.asset(imagePr!),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 5),
              child: Text(
                title1,
                style: TextStyle(color: Colors.white, fontSize: 13),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              child: Text(
                title2,
                style: TextStyle(color: Colors.white, fontSize: 13),
              ),
            )
          ],
        ),
        SizedBox(
          width: 80,
        ),
        Container(
          child: Image.asset(imageIk1),
        ),
        SizedBox(
          width: 30,
        ),
        Container(
          child: Image.asset(imageIk2),
        ),
        SizedBox(
          width: 30,
        ),
        Container(
          child: Image.asset(imageIk3),
        )
      ],
    ),
  );
}

Widget _cardwidget2({String? imagePr, imageIk3, title1, title2}) {
  return Container(
    height: 50,
    margin: EdgeInsets.symmetric(horizontal: 20),
    decoration: BoxDecoration(
        color: Color(0xefef33FFFFFF), borderRadius: BorderRadius.circular(10)),
    child: Row(
      children: [
        Container(
          padding: EdgeInsets.only(left: 5),
          child: Image.asset(imagePr!),
        ),
        SizedBox(
          width: 20,
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    title1,
                    style: TextStyle(color: Colors.white, fontSize: 13),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: Text(
                    title2,
                    style: TextStyle(color: Colors.white, fontSize: 13),
                  ),
                )
              ],
            ),
          ],
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.only(right: 23),
                child: Image.asset(imageIk3),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
