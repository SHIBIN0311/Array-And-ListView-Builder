import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});
  List<String> image = [
    'https://th.bing.com/th/id/R.f51c65a14e38fba1bd867f1fe0a711ee?rik=bqFXIohQNjRshw&riu=http%3a%2f%2fgetwallpapers.com%2fwallpaper%2ffull%2fa%2f8%2f6%2f618432.jpg&ehk=swQQu8Rzd9BUCbd%2fno25jmBsQaMQaihdRrGthFKLevM%3d&risl=&pid=ImgRaw&r=0',
    'https://th.bing.com/th/id/OIP.XahRQHnmZYdKTkYxKAYHmAHaFj?rs=1&pid=ImgDetMain',
    'https://thewowstyle.com/wp-content/uploads/2015/01/nature-images..jpg',
    'https://images.pexels.com/photos/236047/pexels-photo-236047.jpeg?cs=srgb&dl=clouds-cloudy-countryside-236047.jpg&fm=jpg',
    'https://wallpapercave.com/wp/Ex9MlTC.jpg',
    'https://cdn2.psychologytoday.com/assets/styles/manual_crop_1_91_1_1528x800/public/field_blog_entry_teaser_image/2021-06/pexels-johannes-plenio-1126379.jpg?itok=gY0zRxmv',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Array And ListView Builder',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: ListView.builder(
          itemCount: image.length,
          itemBuilder: (context, index) {
            return Card(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: SizedBox(
                  height: 200,
                  child: Image.network(
                    image[index],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
