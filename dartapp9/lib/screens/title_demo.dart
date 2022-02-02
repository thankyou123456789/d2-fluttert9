import 'package:flutter/material.dart';

class TitleDemo extends StatelessWidget {
  const TitleDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: IconTitleWidget(),
        leading: IconButton(
          onPressed: () {
            showAleart(context);
          },
          icon: Icon(Icons.notifications_active),
        ),
      ),
      body: Center(
        child: Text("AppBar Centered Title"),
      ),
    );
  }
}

void showAleart(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      content: Text("Hi"),
    ),
  );
}

class IconTitleWidget extends StatelessWidget {
  const IconTitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Icon(Icons.train),
        Icon(Icons.place),
        SizedBox(width: 3.0),
        Text("Place"),
      ],
    );
  }
}
