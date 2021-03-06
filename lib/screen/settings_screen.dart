import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:flt_keep/styles.dart';

/// Settings screen.
class SettingsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) => Theme(
    data: Theme.of(context).copyWith(
      textTheme: Theme.of(context).textTheme.copyWith(
        caption: Theme.of(context).textTheme.caption.copyWith(
          color: Colors.blueAccent.shade400,
          fontWeight: FontWeights.medium,
        ),
      ),
    ),
    child: Builder(
      builder: (context) => Scaffold(
        appBar: AppBar(
          title: const Text('Ajustes'),
        ),
        body: SingleChildScrollView(
          
          child: Center(
            
            child: Container(
              constraints: const BoxConstraints.tightFor(width: 720),
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  _buildCaption(context, 'CUENTA'),
                  ListTile(
                    title: Text('Cerrar sesion'),
                    onTap: () => _signOut(context),
                    tileColor: Colors.blue,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );

  Widget _buildCaption(BuildContext context, String title) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Text('CUENTA', style: Theme.of(context).textTheme.caption),
  );

  void _signOut(BuildContext context) async {
    final yes = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        content: const Text('¿Estás segura de cerrar sesión en la cuenta actual?'),
        actions: <Widget>[
          FlatButton(
            child: const Text('No'),
            onPressed: () => Navigator.pop(context, false),
          ),
          FlatButton(
            child: const Text('Si'),
            onPressed: () => Navigator.pop(context, true),
          ),
        ],
      ),
    );

    if (yes) {
      FirebaseAuth.instance.signOut();
      Navigator.pop(context);
    }
  }
}
