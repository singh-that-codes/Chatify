  import 'package:flutter/material.dart';
  import 'package:fluttter_test_application/styles/app_text.dart';
  class PostItems extends StatelessWidget {
    const PostItems({super.key});
  
    @override
    Widget build(BuildContext context) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
        children: [
          Row(
              children: [
                Image.asset(
                 'assets/temp/user.png',
                  width: 40,
                  height: 40,
                ),
                const SizedBox(
                  width: 16,
                ),
              Text(
                'User Name',
                style: AppText.subtitle2,
              ),
            ],
          ),
          SizedBox(
            height:12
          ),
          Image.asset('assets/temp/postImg.jpg'),
          SizedBox(
            height: 12,
          ),
          Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed faucibus ante quis ligula pharetra feugiat. Nullam eu velit ac sem interdum lacinia. Sed venenatis, purus id efficitur convallis, sem neque fermentum quam, a lacinia odio est non arcu. ',style: AppText.body2,)
        ],
          ),
      );
  }
  }