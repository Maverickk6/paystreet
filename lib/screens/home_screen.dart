import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:paystreet/screens/Menu_card.dart';
import 'package:paystreet/screens/menu_widget.dart';
import 'package:paystreet/screens/tile_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final PageController _pageController = PageController();
  int _selectedTab = 0;

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  List billPayments = const <MenuItem>[
    MenuItem(
        title: 'Buy Airtime',
        icon: Icons.score,
        color: Color(0xFFCFEDFA),
        iconColor: Color(0xFF141DF3)),
    MenuItem(
        title: 'Buy Data',
        icon: Icons.cell_tower_outlined,
        color: Color(0xFFDDFACF),
        iconColor: Color(0xFF1CB9A7)),
    MenuItem(
        title: 'Cable tv',
        icon: Icons.desktop_windows_outlined,
        color: Color(0xFFD4FBEC),
        iconColor: Color(0xFFCFEDFA)),
    MenuItem(
        title: 'Electricity',
        icon: Icons.light_mode_outlined,
        color: Color(0xFFFACFF3),
        iconColor: Color(0xFFFB0079)),
    MenuItem(
        title: 'Become an Agent',
        icon: Icons.support_agent,
        color: Color(0xFFFAF5CF),
        iconColor: Color(0xFFFF9A04)),
    MenuItem(
        title: 'Education Payment',
        icon: Icons.school_outlined,
        color: Color(0xFFFACFE1),
        iconColor: Color(0xFFFF1111)),
    MenuItem(
        title: 'Withdraw Funds',
        icon: Icons.sports_baseball_outlined,
        color: Color(0xFFDDCFFA),
        iconColor: Color(0xFF3C1DB5)),
    MenuItem(
        title: 'Ask 4 Pay',
        icon: Icons.receipt_long_outlined,
        color: Color(0xFFF1FACF),
        iconColor: Color(0xFF125807)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 220, 220, 220),
                            borderRadius: BorderRadius.circular(50).r,
                          ),
                          height: 38.h,
                          width: 38.w,
                          child: Image.asset('assets/images/girl2.png'),
                        ),
                        SizedBox(width: 10.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hi, Esther Bukola',
                              style: TextStyle(fontSize: 13.sp),
                            ),
                            Text('Good Evening',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 212, 211, 211),
                        borderRadius: BorderRadius.circular(50).r,
                      ),
                      height: 45.h,
                      width: 45.w,
                      child: Icon(Icons.qr_code_2,
                          color: Colors.blue, size: 28.sp),
                    )
                  ],
                ),
                SizedBox(height: 20.h),
                Container(
                  height: 190.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8).r,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 8.0)
                        .r,
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(height: 6.h),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Current Balance',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12.sp)),
                              SizedBox(width: 5.w),
                              Icon(Icons.visibility,
                                  color: Colors.white, size: 10.sp)
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            '\$7,860.00',
                            style: TextStyle(
                                color: Colors.white,
                                height: 1.2,
                                fontSize: 30.sp,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(height: 15.h),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0).r,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 80.h,
                                    width: 160.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10).r,
                                      color: Color(0xFF45466D),
                                    ),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Fund Account',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13.sp),
                                          ),
                                          Icon(Icons.save_alt,
                                              color: Colors.white),
                                        ]),
                                  ),
                                  Container(
                                    height: 80.h,
                                    width: 160.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10).r,
                                      color: Color(0xFF45466D),
                                    ),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Internal Transfer',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13.sp),
                                          ),
                                          Icon(Icons.shortcut_rounded,
                                              color: Colors.white),
                                        ]),
                                  ),
                                ]),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text('Bill Payments',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 20),
                SizedBox(
                  height: 200,
                  child: GridView.count(
                    crossAxisCount: 4,
                    crossAxisSpacing: 6,
                    mainAxisSpacing: 6,
                    children: List.generate(billPayments.length, (index) {
                      return MenuCard(menuItem: billPayments[index]);
                    }),
                  ),
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Transactions',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text('See All'),
                  ],
                ),
                const SizedBox(height: 20),
                const SizedBox(
                  height: 200,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        TileWidget(
                          icon: Icons.calendar_month_outlined,
                          iconColor: Color(0xFF6669E0),
                          title: 'Shopping',
                          subtitle: '12 May 2023. 09:00',
                          price: '-\$500.00',
                          containerColor: Color(0xFFEBEBfB),
                        ),
                        SizedBox(height: 15),
                        TileWidget(
                          icon: Icons.calendar_month_outlined,
                          iconColor: Colors.black,
                          title: 'Transfer',
                          subtitle: '10 May 2023. 10:45',
                          price: '-\$2,800.00',
                          containerColor: Color(0xFFDCDCE8),
                        ),
                        SizedBox(height: 15),
                        TileWidget(
                          icon: Icons.calendar_month_outlined,
                          iconColor: Color(0xFF27BF8E),
                          title: 'Concert Ticket',
                          subtitle: '8 May 2023. 09:00',
                          price: '-\$170.00',
                          containerColor: Color(0xFFE0f4ED),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _selectedTab,
          onTap: (index) => _changeTab(index),
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.contact_mail), label: "About"),
            BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart_outlined), label: "Product"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Contact"),
          ],
        ),
      ),
    );
  }
}
