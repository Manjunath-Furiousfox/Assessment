import 'package:assessment/viewmodel/filter_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FeedScreen extends ConsumerWidget {
  FeedScreen({Key? key}) : super(key: key);

  final selectedChipProvider = StateProvider<String>(((ref) => "POST"));
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.read(filterProvider.notifier).fetchCategoryList();
    final selectedChip = ref.watch(selectedChipProvider);
    List filter = ref.watch(filterProvider).categoryList;
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: filter.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                    onTap: () {
                      ref.read(selectedChipProvider.state).state =
                          filter[index];
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Chip(
                        label: Text(filter[index]),
                        backgroundColor: Colors.greenAccent,
                      ),
                    ));
              },
            ),
          ),
          Expanded(
              child: SizedBox(
            child: Center(
              child: Text(selectedChip),
            ),
          ))
        ],
      ),
    ));
  }
}
