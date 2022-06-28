import 'package:assessment/viewmodel/feed_viewmodel.dart';
import 'package:assessment/viewmodel/feed_vmlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FeedWidget extends ConsumerWidget {
  const FeedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<FeedViewModel> feedList = ref.watch(feedprovider).feedList;
    String selectedType = ref.watch(feedprovider).selectedType;
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Text("${selectedType} ${feedList.length.toString()}"),
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemCount: feedList.length,
            itemBuilder: (context, index) {
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
            },
          ),
        ),
      ],
    );
  }
}
