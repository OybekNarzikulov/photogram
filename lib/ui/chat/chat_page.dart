import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photogram_app/routes/app_routes.dart';
import 'package:photogram_app/theme/app_color.dart';
import 'package:photogram_app/theme/app_constants.dart';
import 'package:photogram_app/theme/app_text_styles.dart';

import 'chat_list_page.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    final DetailModel model =
        ModalRoute.of(context)!.settings.arguments as DetailModel;

    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(0),
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey,
                    width: 0.7,
                  ),
                ),
              ),
            )),
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppColor.white,
        leading: BackButton(color: AppColor.black),
        title: Text(
          model.userName,
          style: TextStyle(color: AppColor.black),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(300),
                  child: Container(
                    height: 50,
                    child: Image.network(model.imageUrl),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(color: Colors.grey.shade200),
                    child: Text(
                        'Really love your most recent photo. I’ve been trying to capture the same thing for a few months and would love some tips!'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(color: Colors.grey.shade200),
                    child: Text(
                        'Really love your most recent photo. I’ve been trying to capture the same thing for a few months and would love some tips!'),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(300),
                  child: Container(
                    height: 50,
                    child: Image.network(model.imageUrl),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(300),
                  child: Container(
                    height: 50,
                    child: Image.network(model.imageUrl),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(color: Colors.grey.shade200),
                    child: Text(
                        'Really love your most recent photo. I’ve been trying to capture the same thing for a few months and would love some tips!'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
