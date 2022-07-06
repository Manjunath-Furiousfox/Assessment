import 'package:assessment/viewmodel/feed_vmlist.dart';
import 'package:assessment/viewmodel/filter_viewmodel.dart';
import 'package:assessment/widgets/feed_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

class NewFeedScreen extends ConsumerStatefulWidget {
  const NewFeedScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<NewFeedScreen> createState() => _NewFeedScreenState();
}

class _NewFeedScreenState extends ConsumerState<NewFeedScreen> {
  List filter = [];
  @override
  void initState() {
    ref.read(feedprovider.notifier).fetchFeedList(["POST"]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final filter = ref.watch(filterProvider);

    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          filter.when(
              loading: () => Container(),
              error: (err, stack) => Text('Error: $err'),
              data: (filter) {
                final items =
                    filter.map((cat) => MultiSelectItem(cat, cat)).toList();
                return SizedBox(
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
                );
              }),
          const Expanded(
            child: FeedWidget(),
          )
        ],
      ),
    ));
  }
}
