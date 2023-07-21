import 'package:flutter/material.dart';
import 'package:login_screen/loginScreen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  bool tappedYes = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title: const Text('Madrid Family Wallet'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.indigoAccent,
              ),
              child: Center(
                child: Text(
                  'Madrid, John Eric E.',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: IconButton(
                icon: const Icon(
                  Icons.settings_outlined,
                ),
                onPressed: () {},
              ),
              title: const Text(
                'Settings',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            ListTile(
              leading: IconButton(
                icon: const Icon(
                  Icons.wb_sunny_outlined,
                ),
                onPressed: () {},
              ),
              title: const Text(
                'Dark Theme',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            ListTile(
              leading: IconButton(
                icon: const Icon(
                  Icons.contacts_outlined,
                ),
                onPressed: () {},
              ),
              title: const Text(
                'Contacts',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            ListTile(
              leading: IconButton(
                icon: const Icon(
                  Icons.logout_outlined,
                ),
                onPressed: () async {
                  final action = await AlertDialogs.yesCancelDialog(
                    context,
                    'Logout?',
                    'You can always access your transactions by signing back in.',
                  );
                  if (action == DialogsAction.yes) {
                    setState(() => tappedYes = true);
                  } else {
                    setState(() => tappedYes = false);
                  }
                },
              ),
              title: const Text(
                'Logout',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 200,
              decoration: const BoxDecoration(color: Colors.indigoAccent),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        color: Colors.indigoAccent,
                        child: Row(
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
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    'Available Balance',
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Text(
                    '\$1,000,000.00',
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Container(
                height: 500,
                child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(20),
                  childAspectRatio: 0.95,
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  children: <Widget>[
                    Card(
                      child: InkWell(
                        splashColor: Colors.indigoAccent,
                        onTap: () {},
                        child: const SizedBox(
                          width: 300,
                          height: 100,
                          child: Center(
                            child: Text(
                              'Send Money',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.indigoAccent,
                                fontSize: 25,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: InkWell(
                        splashColor: Colors.indigoAccent,
                        onTap: () {},
                        child: const SizedBox(
                          width: 300,
                          height: 100,
                          child: Center(
                            child: Text(
                              'Express Send',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.indigoAccent,
                                fontSize: 25,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: InkWell(
                        splashColor: Colors.indigoAccent,
                        onTap: () {},
                        child: const SizedBox(
                          width: 300,
                          height: 100,
                          child: Center(
                            child: Text(
                              'Load',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.indigoAccent,
                                fontSize: 25,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: InkWell(
                        splashColor: Colors.indigoAccent,
                        onTap: () {},
                        child: const SizedBox(
                          width: 300,
                          height: 100,
                          child: Center(
                            child: Text(
                              'Connect to Bank',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.indigoAccent,
                                fontSize: 25,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum DialogsAction { yes, cancel }

class AlertDialogs {
  static Future<DialogsAction> yesCancelDialog(
    BuildContext context,
    String title,
    String body,
  ) async {
    final action = await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          title: Text(title),
          content: Text(body),
          actions: <Widget>[
            TextButton(
              style: ButtonStyle(
                foregroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xFF77202f)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
              ),
              onPressed: () => Navigator.of(context).pop(DialogsAction.cancel),
              child: const Text(
                'Cancel',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
            TextButton(
              style: ButtonStyle(
                foregroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xFF77202f)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
              ),
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const loginScreen(),
                ),
              ),
              child: const Text(
                'Logout',
                style: TextStyle(
                  color: Colors.indigoAccent,
                ),
              ),
            ),
          ],
        );
      },
    );
    return (action != null) ? action : DialogsAction.cancel;
  }
}
