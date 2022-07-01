import 'package:assessment/services/feed_api.dart';
import 'package:assessment/viewmodel/feed_viewmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FeedVMList extends ChangeNotifier {
  List<FeedViewModel> feedList = [];
  String selectedType = "";
  fetchFeedList(List type) async {
    final results = await FeedAPI().fetchFeed(type);
    feedList = results!.map((e) => FeedViewModel(posts: e)).toList();
    // selectedType = type;
    notifyListeners();
  }
}

final feedprovider = ChangeNotifierProvider<FeedVMList>((ref) {
  return FeedVMList();
});
