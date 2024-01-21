import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lab5_tiktok/screen/home/tab/bloc/tab_bloc.dart';
import 'package:lab5_tiktok/screen/home/tab/friend_tab.dart';
import 'package:lab5_tiktok/screen/home/tab/home_tab.dart';
import 'package:lab5_tiktok/screen/home/tab/notify_tab.dart';
import 'package:lab5_tiktok/screen/home/tab/profile_tab.dart';
import 'package:lab5_tiktok/screen/home/tab/upload_tab.dart';
import 'package:stylish_bottom_bar/model/bar_items.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

List<BottomBarItem> bottomItem = <BottomBarItem>[
  BottomBarItem(
    icon: Icon(
      Icons.house_outlined,
    ),
    title: Text('Trang chủ'),
  ),
  BottomBarItem(
    icon: Icon(Icons.supervisor_account_outlined),
    title: Text('Bạn bè'),
  ),
  BottomBarItem(
    icon: Icon(
      Icons.notifications_active_outlined,
    ),
    title: Text('Thông báo'),
  ),
  BottomBarItem(
      icon: Icon(
        Icons.person_outline,
      ),
      title: Text('Hồ sơ')),
];
List<Widget> bottomNav = <Widget>[
  HomeTab(),
  FriendTab(),
  UploadTab(),
  NotifyTab(),
  ProfileTab(),
];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TabBloc, TabState>(
      builder: (context, state) {
        if (state is SubmitTabState) {
          return Scaffold(
            extendBody: true,
            bottomNavigationBar: StylishBottomBar(
              option: AnimatedBarOptions(
                barAnimation: BarAnimation.fade,
                iconStyle: IconStyle.animated,
              ),
              items: bottomItem,
              hasNotch: true,
              fabLocation: StylishBarFabLocation.center,
              currentIndex: state.tabIndex,
              onTap: (value) {
                context.read<TabBloc>().add(TabEvent(tabIndex: value));
              },
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.white,
              child: Icon(
                CupertinoIcons.add,
                color: Colors.red,
                size: 28,
              ),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            body: SafeArea(
              child: PageView(
                children: bottomNav,
              ),
            ),
          );
        }
        return Container();
      },
    );
  }
}
