import 'package:flutter/material.dart';
import 'package:fluttter_test_application/components/tool_bar.dart';
import 'package:fluttter_test_application/styles/app_text.dart';

class name extends StatelessWidget {
  const name({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolBar(title: title, action: action),
    );
  }
}