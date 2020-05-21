import 'package:my_app/app/locator.dart';
import 'package:my_app/datamodels/comment.dart';
import 'package:my_app/datamodels/post.dart';
import 'package:my_app/datamodels/user.dart';
import 'package:my_app/services/api.dart';
import 'package:stacked/stacked.dart';

class UserViewModel extends FutureViewModel<User> {
  final int userId;
  UserViewModel(this.userId);

  @override
  Future<User> futureToRun() => locator<Api>().getUserProfile(userId);
}

class PostsViewModel extends FutureViewModel<List<Post>> {
  final int userId;
  PostsViewModel(this.userId);

  @override
  Future<List<Post>> futureToRun() => locator<Api>().getPostsForUser(userId);
}

class CommentsViewModel extends FutureViewModel<List<Comment>> {
  final int postId;
  CommentsViewModel(this.postId);

  @override
  Future<List<Comment>> futureToRun() =>
      locator<Api>().getCommentsForPost(postId);
}
