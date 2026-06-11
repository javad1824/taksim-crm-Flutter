import 'package:flutter/material.dart';
import 'theme.dart';
import 'views/layout_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const TaksimCRMApp());
}

class TaksimCRMApp extends StatelessWidget {
  const TaksimCRMApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'تکسیم CRM نسخه اندروید',
      debugShowCheckedModeBanner: false,
      theme: TaksimTheme.darkTheme,
      home: const LayoutView(),
    );
  }
}
