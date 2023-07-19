import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  void initState() {
    super.initState();
  }

  int _currentIndex = 0;
  PageController controller = PageController(initialPage: 0);
  static final List<Widget> _widgetOption = <Widget>[
    const Center(child: Text("Home")),
    const Center(child: Text("Contacts")),
    const Center(child: Text("Notification")),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
      if (_currentIndex == 0) {
        if (kDebugMode) {
          print(_currentIndex);
        }
      }
    });
    controller.animateToPage(
      index,
      duration: const Duration(milliseconds: 400),
      curve: Curves.ease,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title: const Text('Madrid Family Wallet'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.indigoAccent,
              ),
              child: Text(
                'Profile',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.exit_to_app,
              ),
              title: Text('Logout',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  )),
            ),
          ],
        ),
      ),
      body: PageView(
        controller: controller,
        children: [
          Column(
            children: [
              Container(
                height: 200,
                decoration: const BoxDecoration(color: Colors.indigoAccent),
                padding: const EdgeInsets.all(16),
                child: SafeArea(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 26,
                            child: Image.asset(
                                'images/Avatar-Profile-PNG-Photos.png'),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'MADRID',
                                style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Text(
                                'John Eric E.',
                                style: TextStyle(
                                    fontStyle: FontStyle.normal,
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Text(
                        'Balance',
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Text(
                        '\$1,000,000.00',
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
            backgroundColor: Colors.indigo,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.contact_mail_outlined,
            ),
            label: 'Contacts',
            backgroundColor: Colors.indigoAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
            ),
            label: 'Notification',
            backgroundColor: Colors.indigoAccent,
          ),
        ],
      ),
    );
  }
}
