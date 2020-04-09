
import 'package:sample_provider/core/models/post.dart';
import 'package:sample_provider/core/services/api.dart';
import 'package:sample_provider/core/view_models/base_model.dart';
import 'package:sample_provider/locator.dart';

class HomeModel extends BaseModel {
  Api _api = locator<Api>();
  List<Post> posts;
  Future getPost( int userId) async {
    setState(ViewState.Busy);
    posts = await _api.getPostsForUser(userId);
    setState(ViewState.Idle);
  }
}