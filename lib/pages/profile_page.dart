import 'package:flutter/material.dart';
import 'package:fluttter_test_application/components/tool_bar.dart';
import 'package:fluttter_test_application/styles/app_text.dart';

enum ProfileMenu{
  edit,
  logout
}
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolBar(
        title: 'Profile', action: [
          PopupMenuButton<ProfileMenu>(
            onSelected: (value) {
              switch (value) {
                case ProfileMenu.edit:
                  print('edit');
                  break;
                case ProfileMenu.logout:
                  print('logout');
                default:
              };
            },
            icon: Icon(Icons.more_vert_rounded),
          itemBuilder: (context){
          return [
            PopupMenuItem(child: Text('Eidt'),value: ProfileMenu.edit,),
            PopupMenuItem(child: Text('LogOut'),value: ProfileMenu.logout,)
            ];
        })
      ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child:Image.asset('assets/temp/user.png',
              width:90, 
              height: 90,
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Text('Japjeet Singh',style:AppText.header2),
          SizedBox(
            height: 12,
          ),
          Text('Dehradun',style: AppText.subtitle3,),
          SizedBox(
            height: 24
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text('472',style: AppText.header1,),
                  Text('Followers',style:AppText.header2)
                ],
              ),
              Column(
                children: [
                  Text('119',style: AppText.header1,),
                  Text('Posts',style:AppText.header2)
                ],
              ),
              Column(
                children: [
                  Text('472',style: AppText.header1,),
                  Text('Following',style:AppText.header2)
                ],
              )
            ],
          ),
          Divider(
            thickness: 1,
            height: 24,
          )
        ],
      ),
    );
  }
}