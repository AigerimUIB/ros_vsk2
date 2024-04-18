import 'package:flutter/material.dart';
import 'package:ROS_VSK2/page/page_7.dart';

class Pagesix extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('PageView Widget'),
          leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          }
          ),
        ),
        body: PageViewWidget(),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  final String text;
  const TextWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration:
          BoxDecoration(border: Border.all(color: Colors.black, width: 1)),
      child: Text(
        text,
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}

class PageViewWidget extends StatelessWidget {
  final PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      // pageSnapping: false,
      // physics: BouncingScrollPhysics(),
      // physics: NeverScrollableScrollPhysics(),
      controller: controller,
      // onPageChanged: (number) {
      //   print("Page number $number");
      // },
      children: <Widget>[
        Container(
          color: Colors.red,
          child: Center(
            child: Text('Остановись!'),
          ),
        ),
        Container(
          color: Colors.orange,
          child: Center(
            child: Text('Уверен?'),
          ),
        ),
        Container(
          color: Colors.green,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Погнали!',
                style: TextStyle(fontSize: 40),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Pageseven()),
                  );
                },
                icon: Icon(Icons.web),
                tooltip: 'Следующая страница',
              ),
              ElevatedButton(
                child: Text('Перезагрузка'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  controller.jumpToPage(0);
                  controller.animateToPage(
                    0,
                    duration: Duration(seconds: 1),
                    curve: Curves.easeInBack,
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class PageViewBuilderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      // itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          color: index % 2 == 0 ? Colors.red : Colors.greenAccent,
          alignment: Alignment.center,
          child: Text('$index'),
        );
      },
    );
  }
}

class PageViewCustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView.custom(
      childrenDelegate: SliverChildListDelegate([
        Text('1'),
        Text('2'),
        Text('3'),
      ]),
    );
  }
}
