import 'package:my_app/app/locator.dart';
import 'package:my_app/datamodels/post.dart';
import 'package:my_app/services/api.dart';
import 'package:my_app/services/posts_service.dart';
import 'package:stacked/stacked.dart';

class PostsViewModel extends FutureViewModel<List<Post>> {
  final _postsService = locator<PostsService>();

  @override
  Future<List<Post>> futureToRun() => _postsService.getPostsForUser(3);
}

class PostsCountViewModel extends BaseViewModel {
  int get postsCount => locator<PostsService>().posts.length;
}
