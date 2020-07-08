import 'package:injectable/injectable.dart';
import 'package:my_app/app/locator.dart';
import 'package:my_app/datamodels/post.dart';
import 'package:my_app/services/posts_service.dart';
import 'package:stacked/stacked.dart';

@singleton
class PostsViewModel extends FutureViewModel<List<Post>> {
  final _postsService = locator<PostsService>();

  @override
  Future<List<Post>> futureToRun() {
    print('Fetch posts');
    return _postsService.getPostsForUser(3);
  }
}
