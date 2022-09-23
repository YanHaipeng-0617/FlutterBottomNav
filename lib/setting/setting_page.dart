import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'Account Settings',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          Card(
              shadowColor: Colors.black,
              margin: EdgeInsets.only(top: 30),
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 30),
                child: Text(
                  'https://seekercode.cn/',
                  style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.center,
                ),
              )
          ),
        ],
      ),
    );
  }
}
