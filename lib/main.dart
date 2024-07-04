import 'package:eclinic_mobile/pages/login_page.dart';
import 'package:eclinic_mobile/pages/news_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'eClinic',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true,
          brightness: Brightness.dark,
          primaryColor: const Color(0xFF1E293B),
          scaffoldBackgroundColor: const Color(0xFF293545),
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xFF1E293B),
          )),
      home: const LoginPage(),
      routes: {
        '/login': (context) => const LoginPage(),
        '/news': (context) => const NewsPage(),
      },
    );
  }
}
