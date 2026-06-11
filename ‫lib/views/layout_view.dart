import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import '../theme.dart';

class LayoutView extends StatefulWidget {
  const LayoutView({Key? key}) : super(key: key);

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int _currentIndex = 0;

  final List<Widget> _views = [
    const Center(child: Text('داشبورد تکسیم', style: TextStyle(fontFamily: 'Vazirmatn', fontSize: 18, color: Colors.white))),
    const Center(child: Text('پایپ‌لاین فروش و لیدها', style: TextStyle(fontFamily: 'Vazirmatn', fontSize: 18, color: Colors.white))),
    const Center(child: Text('انبار سیم‌کارت‌ها', style: TextStyle(fontFamily: 'Vazirmatn', fontSize: 18, color: Colors.white))),
    const Center(child: Text('تنظیمات امنیتی و پشتیبان‌گیری', style: TextStyle(fontFamily: 'Vazirmatn', fontSize: 18, color: Colors.white))),
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl, // پشتیبانی بومی از منوی راست‌چین فارسی
      child: Scaffold(
        body: IndexedStack(
          index: _currentIndex,
          children: _views,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: TaksimTheme.surface100,
          selectedItemColor: TaksimTheme.primaryColor,
          unselectedItemColor: Colors.slate.shade400,
          selectedLabelStyle: const TextStyle(fontFamily: 'Vazirmatn', fontSize: 11, fontWeight: FontWeight.bold),
          unselectedLabelStyle: const TextStyle(fontFamily: 'Vazirmatn', fontSize: 11),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(LucideIcons.layoutDashboard),
              label: 'داشبورد',
            ),
            BottomNavigationBarItem(
              icon: Icon(LucideIcons.trello),
              label: 'پایپلاین',
            ),
            BottomNavigationBarItem(
              icon: Icon(LucideIcons.creditCard),
              label: 'موجودی',
            ),
            BottomNavigationBarItem(
              icon: Icon(LucideIcons.settings),
              label: 'تنظیمات',
            ),
          ],
        ),
      ),
    );
  }
}
