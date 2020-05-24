import 'package:my_app/app/locator.dart';
import 'package:my_app/datamodels/post.dart';
import 'package:my_app/services/api.dart';
import 'package:stacked/stacked.dart';

class PostsViewModel extends FutureViewModel<List<Post>> {
  final int userId;
  PostsViewModel(this.userId);

  @override
  Future<List<Post>> futureToRun() => locator<Api>().getPostsForUser(userId);
}
