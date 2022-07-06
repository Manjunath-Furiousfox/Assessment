import 'package:assessment/viewmodel/feed_viewmodel.dart';
import 'package:assessment/viewmodel/feed_vmlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FeedWidget extends ConsumerStatefulWidget {
  const FeedWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<FeedWidget> createState() => _FeedWidgetState();
}

class _FeedWidgetState extends ConsumerState<FeedWidget> {
  final controller = ScrollController();
  @override
  void initState() {
    controller.addListener(() {
      if (controller.position.maxScrollExtent == controller.offset) {
        ref.read(feedprovider.notifier).fetchLoadMore();
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<FeedViewModel> feedList = ref.watch(feedprovider).feedList;

    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        feedList.isNotEmpty
            ? Text("Count ${feedList.length.toString()}")
            : Container(),
        Expanded(
          child: ListView.builder(
            controller: controller,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemCount: feedList.length + 1,
            itemBuilder: (context, index) {
              if (index < feedList.length) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(feedList[index].name),
                        SizedBox(
                          width: size.width > 400 ? 400 : size.width,
                          child: feedList[index].mimeType == "video/mp4"
                              ? const Text("Unsupported Media Format")
                              : Image.network(
                                  feedList[index].assetUrl,
                                  fit: BoxFit.fill,
                                ),
                        )
                      ],
                    ),
                  ),
                );
              } else {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Center(
                    child: Container(),
                  ),
                );
              }
            },
          ),
        ),
      ],
    );
  }
}
