import 'package:flutter/material.dart';

class Settings extends StatefulWidget {


  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),

      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("Notifications"),
            leading: Icon(Icons.notification_important),
            subtitle: Text("Message, new movie & call tones"),
          ),
          ListTile(
            title: Text("Help"),
            leading: Icon(Icons.help),
            subtitle: Text("Help center, contact us, privacy policy"),
          ),
          ListTile(
            title: Text("Account"),
            leading: Icon(Icons.privacy_tip),
            subtitle: Text("Privacy, security, change number"),
          ),
        ],
      ),
    );
  }
}
