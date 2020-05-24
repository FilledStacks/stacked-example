import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'posts_viewmodel.dart';

class PostsView extends StatelessWidget {
  const PostsView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PostsViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: model.isBusy
            ? Center(
                child: CircularProgressIndicator(),
              )
            : !model.hasError
                ? ListView.builder(
                    itemBuilder: (context, index) => Container(
                          height: 50,
                          padding: const EdgeInsets.only(left: 35),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            model.data[index].title,
                            style: TextStyle(fontSize: 20),
                          ),
                        ))
                : Container(
                    color: Colors.red,
                    alignment: Alignment.center,
                    child: Text(
                      model.error.toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
      ),
      viewModelBuilder: () => PostsViewModel(),
    );
  }
}
