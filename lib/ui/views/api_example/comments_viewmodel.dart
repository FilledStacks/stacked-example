import 'package:my_app/app/locator.dart';
import 'package:my_app/datamodels/comment.dart';
import 'package:my_app/services/api.dart';
import 'package:stacked/stacked.dart';

class CommentsViewModel extends FutureViewModel<List<Comment>> {
  final int postId;
  CommentsViewModel(this.postId);

  @override
  Future<List<Comment>> futureToRun() =>
      locator<Api>().getCommentsForPost(postId);
}
