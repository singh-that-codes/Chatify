import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttter_test_application/components/tool_bar.dart';
//import 'package:fluttter_test_application/styles/app_colors.dart';
import 'package:fluttter_test_application/components/post_items.dart';

class HomePage extends StatelessWidget {
  List<String> users = ["User1", "User2", "User3"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolBar(title: 'LetUsSocial', action: [
        IconButton(onPressed: (){}, icon:SvgPicture.asset('assets/svg/home.svg' ,),
        )
      ]),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return PostItems(
            //user: users[index],
          );
        },
        itemCount: users.length,
        separatorBuilder: (BuildContext context, int index) {
          return Container(
            height: 20,
            width: 20,
            color: Colors.red,
          );
        },
      ),
    );
  }

  List<Widget> mockUsersFromServers() {
    List<Widget> users = [];
    for (var i = 0; i < 1000; i++) {
      users.add(PostItems());
    }
    return users;
  }
}
