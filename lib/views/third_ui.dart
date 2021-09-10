import 'package:flutter/material.dart';
import 'package:flutter_app_sau2/views/third_page1_ui.dart';
import 'package:flutter_app_sau2/views/third_page2_ui.dart';
import 'package:flutter_app_sau2/views/third_page3_ui.dart';
import 'package:flutter_app_sau2/views/third_page4_ui.dart';

class ThirdUI extends StatefulWidget {
  const ThirdUI({ Key? key }) : super(key: key);

  @override
  _ThirdUIState createState() => _ThirdUIState();
}

class _ThirdUIState extends State<ThirdUI> {
  List page = [
    ThirdPage1UI(),
    ThirdPage2UI(),
    ThirdPage3UI(),
    ThirdPage4UI(),
  ];

  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text(
          'Thir UI *-*',
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value){
          setState(() {
            selectIndex = value;
          });
        },

        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey[300],
        selectedItemColor: Colors.red,
        currentIndex: selectIndex,

        items: [
          BottomNavigationBarItem(
            icon:Icon(
              Icons.account_box,
            ),
            label:  'Page 1',
          ),
           BottomNavigationBarItem(
            icon:Icon(
              Icons.ad_units,
            ),
            label:  'Page 2',
          ),
           BottomNavigationBarItem(
            icon:Icon(
              Icons.add_shopping_cart,
            ),
            label:  'Page 3',
          ),
           BottomNavigationBarItem(
            icon:Icon(
              Icons.add_circle_outline,
            ),
            label:  'Page 4',
          ),
        ],
        
      ),
      body: page.elementAt(selectIndex),
      drawer: Drawer(
        child:ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/myprofile.png',
                ),
              ),
              accountName: Text(
                'Ployfa Mannok'
              ),
              accountEmail: Text(
                'ID : 6252410010',
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/bgdrawer.png',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              otherAccountsPictures: [
                Image.asset(
                  'assets/images/saulogo.png',
                ),
              ],
            ),
            ListTile(
              onTap: (){},
              title: Text(
                'หน้าแรก',
              ),
            ),
            ListTile(
              onTap: (){},
              title: Text(
                'ตารางสอน',
              ),
              leading: Icon(
                Icons.table_chart,
                color: Colors.blue,
              ),
            ),
            ListTile(
              onTap: (){},
              title: Text(
                'ตารางสอบ',
              ),
              leading: Icon(
                Icons.access_alarm,
              ),
              trailing: Text(
                '999',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
              
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              onTap: (){},
              title: Text(
                'ออกจากการใช้งาน',
              ),
              trailing: Icon(
                Icons.exit_to_app,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(
          Icons.add,
          color: Colors.yellow,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}