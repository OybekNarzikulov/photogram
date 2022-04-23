import 'package:flutter/material.dart';
import 'package:photogram_app/routes/app_routes.dart';
import 'package:photogram_app/theme/app_color.dart';
import 'package:photogram_app/theme/app_constants.dart';
import 'package:photogram_app/theme/app_text_styles.dart';

class StoriesPage extends StatefulWidget {
  const StoriesPage({Key? key}) : super(key: key);

  @override
  _StoriesPageState createState() => _StoriesPageState();
}

class _StoriesPageState extends State<StoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.network(
            'https://www.teahub.io/photos/full/55-558274_aesthetic-photography-pinterest-background.jpg',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fill,
          ),
          Positioned(
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(300),
                  child: Container(
                    height: 45,
                    child: Image.network(
                        'https://i.pinimg.com/474x/be/d2/3f/bed23f26584cc6e9de5b673eb0864abd.jpg'),
                  ),
                ),
                title: const Text(
                  'Jason',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                subtitle: const Text('@Jason.com', style: TextStyle(color: Colors.white),),
                trailing: IconButton(
                  onPressed: () {
                    setState(() {
                      Navigator.pop(
                        AppConstants.key.currentState!.context,
                      );
                    });
                  },
                  icon: Icon(Icons.close, color: Colors.white,),
                ),
              ),
            ),
            top: 50,
          ),
        ],
      ),
    );
  }
}
