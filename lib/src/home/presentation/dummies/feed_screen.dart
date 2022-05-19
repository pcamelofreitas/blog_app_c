import 'package:blog_app/src/home/presentation/dummies/feed/home_feed_screen.dart';
import 'package:blog_app/src/home/presentation/dummies/feed/restricted_feed_screen.dart';
import 'package:flutter/material.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const TabBarView(
        children: [
          HomeFeedScreen(),
          RestrictedFeedScreen(),
        ],
      ),
      bottomNavigationBar: const TabBar(
        tabs: [
          Tab(
            icon: Icon(Icons.home),
          ),
          Tab(
            icon: Icon(Icons.lock),
          ),
        ],
      ),
    );
  }
}
