import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_provider/core/models/post.dart';
import 'package:sample_provider/core/models/user.dart';
import 'package:sample_provider/core/view_models/base_model.dart';
import 'package:sample_provider/core/view_models/home_model.dart';
import 'package:sample_provider/ui/shared/app_colors.dart';
import 'package:sample_provider/ui/shared/text_styles.dart';
import 'package:sample_provider/ui/shared/ui_helper.dart';
import 'package:sample_provider/ui/views/base_view.dart';
import 'package:sample_provider/ui/widgets/post_list_item.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<HomeModel>(
        onModelReady: (model) {
          model.getPost(Provider.of<User>(context).id);
        },
        builder: (context, model, child) => Scaffold(
          backgroundColor: backgroundColor,
            body: model.state == ViewState.Idle
                ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UIHelper.verticalSpaceLarge(),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text('Welcome ${Provider.of<User>(context).name}', style: headerStyle,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text('Here are all your posts', style: subHeaderStyle),
                    ),
                    UIHelper.verticalSpaceSmall(),
                    Expanded(child: getPostsUi(model.posts)),
                  ])
                : Center(child: CircularProgressIndicator())));
  }

  Widget getPostsUi(List<Post> posts) => ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) => PostListItem(
            post: posts[index],
            onTap: () {
              Navigator.pushNamed(context, 'post', arguments: posts[index]);
            },
          ));
}