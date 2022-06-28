class Feed {
  int? totalItems;
  int? totalPages;
  int? page;
  List<Items>? items;

  Feed({this.totalItems, this.totalPages, this.page, this.items});

  Feed.fromJson(Map<String, dynamic> json) {
    totalItems = json['totalItems'];
    totalPages = json['totalPages'];
    page = json['page'];
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(Items.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['totalItems'] = totalItems;
    data['totalPages'] = totalPages;
    data['page'] = page;
    if (items != null) {
      data['items'] = items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Items {
  String? id;
  String? createdAt;
  String? lastUpdatedAt;
  String? postType;
  String? name;
  UserInfo? userInfo;
  List<ShareLinks>? shareLinks;
  List<PostComments>? postComments;
  String? liked;
  LikesCount? likesCount;
  List<Likes>? likes;
  List<ContestPrizes>? contestPrizes;
  List<ActionButtons>? actionButtons;
  List<Assets>? assets;
  String? publishAt;
  bool? canEdit;
  bool? canDelete;
  bool? futureDated;
  bool? pinned;
  String? reward;
  String? viewUrl;
  String? activityType;
  UserInfo? activityUserInfo;
  String? text;
  int? favouriteCounter;
  String? deadlineAt;
  String? tcUrl;
  bool? canEnter;
  String? quizState;
  String? status;
  int? totalQuestions;
  int? completedQuestions;
  int? successRate;

  Items(
      {this.id,
      this.createdAt,
      this.lastUpdatedAt,
      this.postType,
      this.name,
      this.userInfo,
      this.shareLinks,
      this.postComments,
      this.liked,
      this.likesCount,
      this.likes,
      this.contestPrizes,
      this.actionButtons,
      this.assets,
      this.publishAt,
      this.canEdit,
      this.canDelete,
      this.futureDated,
      this.pinned,
      this.reward,
      this.viewUrl,
      this.activityType,
      this.activityUserInfo,
      this.text,
      this.favouriteCounter,
      this.deadlineAt,
      this.tcUrl,
      this.canEnter,
      this.quizState,
      this.status,
      this.totalQuestions,
      this.completedQuestions,
      this.successRate});

  Items.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['createdAt'];
    lastUpdatedAt = json['lastUpdatedAt'];
    postType = json['postType'];
    name = json['name'];
    userInfo =
        json['userInfo'] != null ? UserInfo.fromJson(json['userInfo']) : null;
    if (json['shareLinks'] != null) {
      shareLinks = <ShareLinks>[];
      json['shareLinks'].forEach((v) {
        shareLinks!.add(ShareLinks.fromJson(v));
      });
    }
    if (json['postComments'] != null) {
      postComments = <PostComments>[];
      json['postComments'].forEach((v) {
        postComments!.add(PostComments.fromJson(v));
      });
    }
    liked = json['liked'];
    likesCount = json['likesCount'] != null
        ? LikesCount.fromJson(json['likesCount'])
        : null;
    if (json['likes'] != null) {
      likes = <Likes>[];
      json['likes'].forEach((v) {
        likes!.add(Likes.fromJson(v));
      });
    }
    if (json['contestPrizes'] != null) {
      contestPrizes = <ContestPrizes>[];
      json['contestPrizes'].forEach((v) {
        contestPrizes!.add(ContestPrizes.fromJson(v));
      });
    }
    if (json['actionButtons'] != null) {
      actionButtons = <ActionButtons>[];
      json['actionButtons'].forEach((v) {
        actionButtons!.add(ActionButtons.fromJson(v));
      });
    }
    if (json['assets'] != null) {
      assets = <Assets>[];
      json['assets'].forEach((v) {
        assets!.add(Assets.fromJson(v));
      });
    }
    publishAt = json['publishAt'];
    canEdit = json['canEdit'];
    canDelete = json['canDelete'];
    futureDated = json['futureDated'];
    pinned = json['pinned'];
    reward = json['reward'];
    viewUrl = json['viewUrl'];
    activityType = json['activityType'];
    activityUserInfo = json['activityUserInfo'] != null
        ? UserInfo.fromJson(json['activityUserInfo'])
        : null;
    text = json['text'];
    favouriteCounter = json['favouriteCounter'];
    deadlineAt = json['deadlineAt'];
    tcUrl = json['tcUrl'];
    canEnter = json['canEnter'];
    quizState = json['quizState'];
    status = json['status'];
    totalQuestions = json['totalQuestions'];
    completedQuestions = json['completedQuestions'];
    successRate = json['successRate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['createdAt'] = createdAt;
    data['lastUpdatedAt'] = lastUpdatedAt;
    data['postType'] = postType;
    data['name'] = name;
    if (userInfo != null) {
      data['userInfo'] = userInfo!.toJson();
    }
    if (shareLinks != null) {
      data['shareLinks'] = shareLinks!.map((v) => v.toJson()).toList();
    }
    if (postComments != null) {
      data['postComments'] = postComments!.map((v) => v.toJson()).toList();
    }
    data['liked'] = liked;
    if (likesCount != null) {
      data['likesCount'] = likesCount!.toJson();
    }
    if (likes != null) {
      data['likes'] = likes!.map((v) => v.toJson()).toList();
    }
    if (contestPrizes != null) {
      data['contestPrizes'] = contestPrizes!.map((v) => v.toJson()).toList();
    }
    if (actionButtons != null) {
      data['actionButtons'] = actionButtons!.map((v) => v.toJson()).toList();
    }
    if (assets != null) {
      data['assets'] = assets!.map((v) => v.toJson()).toList();
    }
    data['publishAt'] = publishAt;
    data['canEdit'] = canEdit;
    data['canDelete'] = canDelete;
    data['futureDated'] = futureDated;
    data['pinned'] = pinned;
    data['reward'] = reward;
    data['viewUrl'] = viewUrl;
    data['activityType'] = activityType;
    if (activityUserInfo != null) {
      data['activityUserInfo'] = activityUserInfo!.toJson();
    }
    data['text'] = text;
    data['favouriteCounter'] = favouriteCounter;
    data['deadlineAt'] = deadlineAt;
    data['tcUrl'] = tcUrl;
    data['canEnter'] = canEnter;
    data['quizState'] = quizState;
    data['status'] = status;
    data['totalQuestions'] = totalQuestions;
    data['completedQuestions'] = completedQuestions;
    data['successRate'] = successRate;
    return data;
  }
}

class UserInfo {
  String? id;
  bool? guest;
  String? photoUrl;
  String? nickname;
  String? name;
  String? surname;
  String? type;
  String? displayName;

  UserInfo(
      {this.id,
      this.guest,
      this.photoUrl,
      this.nickname,
      this.name,
      this.surname,
      this.type,
      this.displayName});

  UserInfo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    guest = json['guest'];
    photoUrl = json['photoUrl'];
    nickname = json['nickname'];
    name = json['name'];
    surname = json['surname'];
    type = json['type'];
    displayName = json['displayName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['guest'] = guest;
    data['photoUrl'] = photoUrl;
    data['nickname'] = nickname;
    data['name'] = name;
    data['surname'] = surname;
    data['type'] = type;
    data['displayName'] = displayName;
    return data;
  }
}

class ShareLinks {
  String? name;
  String? icon;
  String? shareUrl;

  ShareLinks({this.name, this.icon, this.shareUrl});

  ShareLinks.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    icon = json['icon'];
    shareUrl = json['shareUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['icon'] = icon;
    data['shareUrl'] = shareUrl;
    return data;
  }
}

class PostComments {
  String? id;
  String? createdAt;
  String? lastUpdatedAt;
  String? text;
  UserInfo? userInfo;
  String? liked;
  LikesCount? likesCount;
  List<Likes>? likes;
  bool? display;
  String? type;

  PostComments(
      {this.id,
      this.createdAt,
      this.lastUpdatedAt,
      this.text,
      this.userInfo,
      this.liked,
      this.likesCount,
      this.likes,
      this.display,
      this.type});

  PostComments.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['createdAt'];
    lastUpdatedAt = json['lastUpdatedAt'];
    text = json['text'];
    userInfo =
        json['userInfo'] != null ? UserInfo.fromJson(json['userInfo']) : null;
    liked = json['liked'];
    likesCount = json['likesCount'] != null
        ? LikesCount.fromJson(json['likesCount'])
        : null;
    if (json['likes'] != null) {
      likes = <Likes>[];
      json['likes'].forEach((v) {
        likes!.add(Likes.fromJson(v));
      });
    }
    display = json['display'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['createdAt'] = createdAt;
    data['lastUpdatedAt'] = lastUpdatedAt;
    data['text'] = text;
    if (userInfo != null) {
      data['userInfo'] = userInfo!.toJson();
    }
    data['liked'] = liked;
    if (likesCount != null) {
      data['likesCount'] = likesCount!.toJson();
    }
    if (likes != null) {
      data['likes'] = likes!.map((v) => v.toJson()).toList();
    }
    data['display'] = display;
    data['type'] = type;
    return data;
  }
}

class LikesCount {
  int? additionalProp1;
  int? additionalProp2;
  int? additionalProp3;

  LikesCount(
      {this.additionalProp1, this.additionalProp2, this.additionalProp3});

  LikesCount.fromJson(Map<String, dynamic> json) {
    additionalProp1 = json['additionalProp1'];
    additionalProp2 = json['additionalProp2'];
    additionalProp3 = json['additionalProp3'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['additionalProp1'] = additionalProp1;
    data['additionalProp2'] = additionalProp2;
    data['additionalProp3'] = additionalProp3;
    return data;
  }
}

class Likes {
  String? id;
  String? createdAt;
  String? lastUpdatedAt;
  UserInfo? userInfo;
  String? emotion;

  Likes(
      {this.id,
      this.createdAt,
      this.lastUpdatedAt,
      this.userInfo,
      this.emotion});

  Likes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['createdAt'];
    lastUpdatedAt = json['lastUpdatedAt'];
    userInfo =
        json['userInfo'] != null ? UserInfo.fromJson(json['userInfo']) : null;
    emotion = json['emotion'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['createdAt'] = createdAt;
    data['lastUpdatedAt'] = lastUpdatedAt;
    if (userInfo != null) {
      data['userInfo'] = userInfo!.toJson();
    }
    data['emotion'] = emotion;
    return data;
  }
}

class ContestPrizes {
  String? id;
  int? position;
  String? place;
  int? count;
  String? description;

  ContestPrizes(
      {this.id, this.position, this.place, this.count, this.description});

  ContestPrizes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    position = json['position'];
    place = json['place'];
    count = json['count'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['position'] = position;
    data['place'] = place;
    data['count'] = count;
    data['description'] = description;
    return data;
  }
}

class ActionButtons {
  String? actionUrl;
  String? actionDescription;
  String? actionTextColor;
  String? actionBackgroundColor;

  ActionButtons(
      {this.actionUrl,
      this.actionDescription,
      this.actionTextColor,
      this.actionBackgroundColor});

  ActionButtons.fromJson(Map<String, dynamic> json) {
    actionUrl = json['actionUrl'];
    actionDescription = json['actionDescription'];
    actionTextColor = json['actionTextColor'];
    actionBackgroundColor = json['actionBackgroundColor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['actionUrl'] = actionUrl;
    data['actionDescription'] = actionDescription;
    data['actionTextColor'] = actionTextColor;
    data['actionBackgroundColor'] = actionBackgroundColor;
    return data;
  }
}

class Assets {
  String? id;
  String? createdAt;
  String? lastUpdatedAt;
  String? url;
  String? bucket;
  String? type;
  String? mimeType;
  int? filesize;
  int? width;
  int? height;
  int? durationSeconds;
  String? profileId;
  String? description;
  List<Thumbnails>? thumbnails;

  Assets(
      {this.id,
      this.createdAt,
      this.lastUpdatedAt,
      this.url,
      this.bucket,
      this.type,
      this.mimeType,
      this.filesize,
      this.width,
      this.height,
      this.durationSeconds,
      this.profileId,
      this.description,
      this.thumbnails});

  Assets.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['createdAt'];
    lastUpdatedAt = json['lastUpdatedAt'];
    url = json['url'];
    bucket = json['bucket'];
    type = json['type'];
    mimeType = json['mimeType'];
    filesize = json['filesize'];
    width = json['width'];
    height = json['height'];
    durationSeconds = json['durationSeconds'];
    profileId = json['profileId'];
    description = json['description'];
    if (json['thumbnails'] != null) {
      thumbnails = <Thumbnails>[];
      json['thumbnails'].forEach((v) {
        thumbnails!.add(Thumbnails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['createdAt'] = createdAt;
    data['lastUpdatedAt'] = lastUpdatedAt;
    data['url'] = url;
    data['bucket'] = bucket;
    data['type'] = type;
    data['mimeType'] = mimeType;
    data['filesize'] = filesize;
    data['width'] = width;
    data['height'] = height;
    data['durationSeconds'] = durationSeconds;
    data['profileId'] = profileId;
    data['description'] = description;
    if (thumbnails != null) {
      data['thumbnails'] = thumbnails!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Thumbnails {
  String? id;
  String? createdAt;
  String? lastUpdatedAt;
  String? type;
  String? url;
  String? mimeType;
  int? filesize;
  int? width;
  int? height;
  int? durationSeconds;

  Thumbnails(
      {this.id,
      this.createdAt,
      this.lastUpdatedAt,
      this.type,
      this.url,
      this.mimeType,
      this.filesize,
      this.width,
      this.height,
      this.durationSeconds});

  Thumbnails.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['createdAt'];
    lastUpdatedAt = json['lastUpdatedAt'];
    type = json['type'];
    url = json['url'];
    mimeType = json['mimeType'];
    filesize = json['filesize'];
    width = json['width'];
    height = json['height'];
    durationSeconds = json['durationSeconds'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['createdAt'] = createdAt;
    data['lastUpdatedAt'] = lastUpdatedAt;
    data['type'] = type;
    data['url'] = url;
    data['mimeType'] = mimeType;
    data['filesize'] = filesize;
    data['width'] = width;
    data['height'] = height;
    data['durationSeconds'] = durationSeconds;
    return data;
  }
}
