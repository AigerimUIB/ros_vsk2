import 'package:flutter/material.dart';
import 'package:ROS_VSK2/utils.dart/theme_data.dart';

class NamedRoutesWithParams extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: basicTheme(),
      routes: {
        '/': (context) => HomeScreen(),
        '/details': (context) => DetailScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Named Routes'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          }
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://adminapi.applegadgetsbd.com/storage/media/large/4973-92116.jpg',
              width: 200,
            ),
            ElevatedButton(
              child: Text('Подробнее'),
              onPressed: () {
                Product product = Product(
                  imageUrl:
                      'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.applegadgetsbd.com%2Fproduct%2Fipad-air-5-2022&psig=AOvVaw0npzxlxAqUkdcZP5JhsbbF&ust=1713558786544000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCPD2n5POzIUDFQAAAAAdAAAAABAE',
                  name: 'Ipad Air 5, 2022',
                  description:
                      'Liquid Retina IPS LCD, 500 nits (typ), 10.9 inches',
                );
                Navigator.pushNamed(context, '/details', arguments: product);
              },
            )
          ],
        ),
      ),
    );
  }
}

class Product {
  final String imageUrl;
  final String name;
  final String description;

  Product(
      {required this.imageUrl, required this.name, required this.description});
}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Product product =
        ModalRoute.of(context)!.settings.arguments as Product;

    return Scaffold(
      appBar: AppBar(
        title: Text('Подробная информация'),
      ),
      body: Center(
        child: Column(
          children: [
            Card(
              child: Column(
                children: [
                  Image.network(
                    product.imageUrl,
                    width: 300,
                  ),
                  ListTile(
                    title: Text(product.name),
                    subtitle: Text(product.description),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              child: Text('Назад'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
