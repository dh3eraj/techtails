import 'package:flutter/material.dart';

// class CommonPage extends StatefulWidget {
//   final widget2;

//   const CommonPage({super.key,required this.widget2});
//   @override
//   State<CommonPage> createState() => _CommonPageState();
// }

class CommonPage extends StatelessWidget {
  CommonPage({super.key, required Widget? this.child});
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
          color: Colors.white,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.headphones),
                  Icon(Icons.home),
                  Icon(Icons.headphones)
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60))),
          ),
        ),
        Container(
          height: 300,
          decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60))),
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Padding(
                        padding: EdgeInsets.all(16), child: Icon(Icons.menu)),
                    Padding(
                        padding: EdgeInsets.all(16),
                        child: Icon(
                          Icons.favorite,
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
        child ??
            Container(
              color: Colors.red,
              height: 100,
              width: 100,
            )
      ]),
    );
  }
}
