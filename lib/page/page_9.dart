import 'package:flutter/material.dart';
import 'package:ROS_VSK2/page/page_10.dart';

class Pagenine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Import Images'),
          leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          }
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: ImageWidget(),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Pageten()),
                );
              },
              icon: Icon(Icons.web),
              tooltip: 'Следующая страница',
            ),
          ],
        ),
      ),
    );
  }
}

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String assetNamePath = 'assets/images/greanlandia.jpg';
    //final String assetNameSvg = 'assets/subscribe.svg';
    // final String assetNameUrl = 'https://fffuuu.net/Upload/Images/ved_tak_.png';

    AssetImage imageFromAssetImage = AssetImage(assetNamePath);
    // Image imageFromAsset = Image.asset(assetNameSvg, fit: BoxFit.cover);

    // Image imageFromNetwork = Image.network(assetNameUrl);

    // Image changedImage = Image(
    //   image: imageFromNetwork.image,
    //   color: Colors.green,
    //   colorBlendMode: BlendMode.color,
    // );

    return Container(
      constraints: BoxConstraints.expand(height: double.infinity),
      child: Image(image: imageFromAssetImage, fit: BoxFit.cover),
    );
  }
}
