import 'package:flutter/material.dart';
import 'package:fluttter_test_application/styles/app_colors.dart';
import 'package:fluttter_test_application/styles/app_text.dart';
class ToolBar extends StatelessWidget implements PreferredSizeWidget{
  final String title;
  final List<Widget> action;
  const ToolBar({super.key, required this.title, required this.action}) ;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
        backgroundColor: AppColors.background,
        title: Text('LetUsSocial',style:AppText.header1),
        centerTitle: false,
        actions: action

    );
  }
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(56);
}