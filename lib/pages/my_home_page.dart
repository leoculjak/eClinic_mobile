import 'dart:async';

import 'package:flutter/material.dart';
import 'package:openid_client/openid_client_io.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('eClinic'),
      ),
      body: const Center(
        child: Text('test'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Future.delayed(const Duration(seconds: 1), () async {
            try {
              var issuer = await Issuer.discover(
                  Uri.parse('https://identity.p2129.app.fit.ba'));

              print(issuer.toString());
            } catch (e) {
              print(e);
            }
          });
        },
      ),
    );
  }

  Future<void> runAsync() async {}
}
