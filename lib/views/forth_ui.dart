import 'package:flutter/material.dart';
import 'package:flutter_app_sau2/views/forth_tabpage1.ui.dart';
import 'package:flutter_app_sau2/views/forth_tabpage2_ui.dart';
import 'package:flutter_app_sau2/views/forth_tabpage3_ui.dart';
import 'package:flutter_app_sau2/views/forth_tabpage4_ui.dart';
import 'package:flutter_app_sau2/views/forth_tabpage5_ui.dart';
import 'package:flutter_app_sau2/views/forth_tabpage6_ui.dart';

class ForthUI extends StatefulWidget {
  const ForthUI({ Key? key }) : super(key: key);

  @override
  _ForthUIState createState() => _ForthUIState();
}

class _ForthUIState extends State<ForthUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[300],
        title: Text(
          'Forth UI ไอที',
          style:TextStyle(
            fontFamily: 'Kanit',
          ) ,
        ),
        centerTitle: true,
      ),
      body: DefaultTabController(
        length: 6,
        child: Column(
          children: [
            Container(
              color: Colors.pink,
              child: TabBar(
                isScrollable: true,
                labelColor: Colors.yellow,
                indicatorColor: Colors.yellow,
                unselectedLabelColor: Colors.grey[350],
                labelStyle: TextStyle(
                  fontFamily: 'Kanit',
                ),
                tabs: [
                  Tab(
                    text: 'Tab page1',
                    icon: Icon(
                      Icons.ac_unit,
                    ),
                  ),
                  Tab(
                    text: 'Tab page2',
                    icon: Icon(
                      Icons.access_alarm,
                    ),
                  ),
                  Tab(
                    text: 'Tab page3',
                    icon: Icon(
                      Icons.accessibility,
                    ),
                  ),
                  Tab(
                    text: 'Tab page4',
                    icon: Icon(
                      Icons.account_box,
                    ),
                  ),
                  Tab(
                    text: 'Tab page5',
                    icon: Icon(
                      Icons.account_tree,
                    ),
                  ),
                  Tab(
                    text: 'Tab page6',
                    icon: Icon(
                      Icons.adb,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ForthTabpage1UI(),
                  ForthTabpage2UI(),
                  ForthTabpage3UI(),
                  ForthTabpage4UI(),
                  ForthTabpage5UI(),
                  ForthTabpage6UI(),
                ],
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
    );
  }
}