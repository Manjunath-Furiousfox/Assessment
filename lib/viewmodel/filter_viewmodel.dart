import 'package:assessment/services/filter_api.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final filterProvider = FutureProvider<List>((ref) async {
  final catList = await CategoryAPI().fetchCategory() as List;
  return catList;
});
