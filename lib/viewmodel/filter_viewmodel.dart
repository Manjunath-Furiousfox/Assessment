import 'package:assessment/services/filter_api.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FilterVM extends ChangeNotifier {
  List categoryList = [];

  fetchCategoryList() async {
    categoryList = await CategoryAPI().fetchCategory() as List;
    notifyListeners();
  }
}

final filterProvider = ChangeNotifierProvider<FilterVM>((ref) {
  return FilterVM();
});
