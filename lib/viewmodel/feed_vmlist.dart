import 'package:assessment/services/feed_api.dart';
import 'package:assessment/viewmodel/feed_viewmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FeedVMList extends ChangeNotifier {
  List<FeedViewModel> feedList = [];
  int _page = 0;
  int count = 20;
  List? typeList;
  String selectedType = "";
  bool hasmore = true;
  fetchFeedList(List type) async {
    _page = 0;
    typeList = type;
    final results = await FeedAPI().fetchFeed(type, _page, count);
    feedList = results!.map((e) => FeedViewModel(posts: e)).toList();

    notifyListeners();
  }

  fetchLoadMore() async {
    _page += 1;
    final results = await FeedAPI().fetchFeed(typeList!, _page, count);

    feedList.addAll(results!.map((e) => FeedViewModel(posts: e)).toList());

    notifyListeners();
  }
}

final feedprovider = ChangeNotifierProvider<FeedVMList>((ref) {
  return FeedVMList();
});
