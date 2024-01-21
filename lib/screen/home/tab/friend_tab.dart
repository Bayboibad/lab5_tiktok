import 'package:flutter/material.dart';

class FriendTab extends StatefulWidget {
  const FriendTab({super.key});

  @override
  State<FriendTab> createState() => _FriendTabState();
}

class _FriendTabState extends State<FriendTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false
      ),
    );
  }
}
