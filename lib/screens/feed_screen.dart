import 'package:assessment/viewmodel/feed_vmlist.dart';
import 'package:assessment/viewmodel/filter_viewmodel.dart';
import 'package:assessment/widgets/feed_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multi_select_flutter/chip_field/multi_select_chip_field.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

class FeedScreen extends ConsumerWidget {
  FeedScreen({Key? key}) : super(key: key);

  final selectedChipProvider = StateProvider<String>(((ref) => "POST"));

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(filterProvider).fetchCategoryList();
    // ref.watch(feedprovider).fetchFeedList("POST");
    // final selectedChip = ref.watch(selectedChipProvider);
    List filter = ref.watch(filterProvider).categoryList;
    final items = filter.map((cat) => MultiSelectItem(cat, cat)).toList();
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 65,
            child: MultiSelectChipField(
              decoration: const BoxDecoration(color: Colors.transparent),
              showHeader: false,
              items: items,
              initialValue: [filter[0]],
              selectedChipColor: Colors.blue.withOpacity(0.5),
              onTap: (values) {
                ref.read(feedprovider.notifier).fetchFeedList(values);
              },
            ),
          ),
          const Expanded(
            child: FeedWidget(),
          )
        ],
      ),
    ));
  }
}
