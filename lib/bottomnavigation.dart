import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:login_screen/dashboard.dart';
import 'package:login_screen/notifications.dart';
import 'package:login_screen/qr.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;
  PageController controller = PageController(initialPage: 0);
  static final List<Widget> _widgetOption = <Widget>[
    const KeepAlive(keepAlive: true, child: DashboardScreen()),
    const KeepAlive(keepAlive: true, child: QRScreen()),
    const KeepAlive(keepAlive: true, child: Notifications()),
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
      body: PageView(
        controller: controller,
        children: _widgetOption,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.indigo,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
            //    backgroundColor: Colors.indigo,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.qr_code_2_outlined,
            ),
            label: 'QR',
            //   backgroundColor: Colors.indigoAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_active_outlined,
            ),
            label: 'Notification',
            //  backgroundColor: Colors.indigoAccent,
          ),
        ],
      ),
    );
    //comment
  }
}
//   int _currentIndex = 0;
//   PageController controller = PageController(initialPage: 0);
//   final List<Widget> _children = [
//     loginScreen(),
//     QR(),
//     Notifications(),
//   ];
//
//   get currentIndex => null;
//
//   void onTabTapped(int index) {
//     setState(() {
//       _currentIndex = index;
//       if (_currentIndex == 0) {
//         if (kDebugMode) {
//           print(_currentIndex);
//         }
//       }
//     });
//     controller.animateToPage(
//       index,
//       duration: const Duration(milliseconds: 400),
//       curve: Curves.ease,
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _children[currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: onTabTapped,
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home_outlined),
//             label: 'Home',
//             backgroundColor: Colors.indigo,
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(
//               Icons.qr_code_2_outlined,
//             ),
//             label: 'QR',
//             backgroundColor: Colors.indigoAccent,
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(
//               Icons.notifications_active_outlined,
//             ),
//             label: 'Notification',
//             backgroundColor: Colors.indigoAccent,
//           ),
//         ],
//       ),
//     );
//   }
// }
