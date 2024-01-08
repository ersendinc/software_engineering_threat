import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('asset/images/app_logo.png'),
                    fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Account'),
              onTap: () => null,
              trailing: Icon(
                Icons.keyboard_arrow_right,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                height: 1,
                color: Colors.black38,
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings_accessibility),
              title: Text('Prefrences'),
              onTap: () => null,
              trailing: Icon(
                Icons.keyboard_arrow_right,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                height: 1,
                color: Colors.black38,
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () => null,
              trailing: Icon(
                Icons.keyboard_arrow_right,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                height: 1,
                color: Colors.black38,
              ),
            ),
            ListTile(
              leading: Icon(Icons.language),
              title: Text('Language'),
              onTap: () => null,
              trailing: Icon(
                Icons.keyboard_arrow_right,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                height: 1,
                color: Colors.black38,
              ),
            ),
            ListTile(
              leading: Icon(Icons.balance),
              title: Text('Balance'),
              onTap: () => null,
              trailing: Icon(
                Icons.keyboard_arrow_right,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                height: 1,
                color: Colors.black38,
              ),
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Help'),
              onTap: () => null,
              trailing: Icon(
                Icons.keyboard_arrow_right,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                height: 1,
                color: Colors.black38,
              ),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () => null,
              trailing: Icon(
                Icons.keyboard_arrow_right,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
