import 'package:assessment/models/feed_model.dart';

class FeedViewModel {
  final Items posts;

  FeedViewModel({required this.posts});

  String get assetUrl {
    for (int i = 0; i < posts.assets!.length; i++) {
      return posts.assets![i].url.toString();
    }
    return "https://static.vecteezy.com/system/resources/previews/002/641/426/non_2x/404-data-not-found-vector.jpg";
  }

  String get mimeType {
    for (int i = 0; i < posts.assets!.length; i++) {
      return posts.assets![i].mimeType.toString();
    }
    return "video/mp4";
  }

  String get name {
    return posts.userInfo!.nickname.toString();
  }

  String get description {
    return posts.text.toString();
  }

  String get photoUrl {
    return posts.userInfo!.photoUrl.toString();
  }

  String get timeAgo {
    return posts.createdAt.toString();
  }

  String get viewUrl {
    return posts.viewUrl.toString();
  }

  String get deadline {
    return posts.deadlineAt.toString();
  }
}
