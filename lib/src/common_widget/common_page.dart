import 'package:flutter/material.dart';
import 'package:techtails/src/feature/profile/application/profile_widget.dart';

// class CommonPage extends StatefulWidget {
//   final widget2;

//   const CommonPage({super.key,required this.widget2});
//   @override
//   State<CommonPage> createState() => _CommonPageState();
// }

class CommonPage extends StatefulWidget {
  CommonPage({super.key, Widget? this.child});

  final Widget? child;

  @override
  _CommonPageState createState() => _CommonPageState();
}

class _CommonPageState extends State<CommonPage> {
  bool isAccountlicked = false;
  bool isCartlicked = false;
  bool isCategoryclicked = false;
  bool isHomeclicked = false;
  bool isNotificationclicked = false;
  Widget? top;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
          color: Colors.white,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 65,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20, bottom: 5, top: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                isCartlicked = !true;
                                isAccountlicked = false;
                                isNotificationclicked = false;
                                isHomeclicked = !false;
                                isCategoryclicked = false;
                                ;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.home_outlined,
                                  color: isHomeclicked
                                      ? Colors.blue
                                      : Colors.black,
                                ),
                                Text(
                                  "Home",
                                  style: TextStyle(
                                      height: 1,
                                      fontSize: 12,
                                      color: isHomeclicked
                                          ? Colors.blue
                                          : Colors.black),
                                )
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                isCartlicked = !true;
                                isAccountlicked = false;
                                isNotificationclicked = false;
                                isHomeclicked = false;
                                isCategoryclicked = !false;
                                ;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.category_outlined,
                                  color: isCategoryclicked
                                      ? Colors.blue
                                      : Colors.black,
                                ),
                                Text(
                                  "Category",
                                  style: TextStyle(
                                      height: 1,
                                      fontSize: 12,
                                      color: isCategoryclicked
                                          ? Colors.blue
                                          : Colors.black),
                                )
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                isCartlicked = !true;
                                isAccountlicked = false;
                                isNotificationclicked = !false;
                                isHomeclicked = false;
                                isCategoryclicked = false;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.notifications_outlined,
                                  color: isNotificationclicked
                                      ? Colors.blue
                                      : Colors.black,
                                ),
                                Text(
                                  "Notifications",
                                  style: TextStyle(
                                      height: 1,
                                      fontSize: 12,
                                      color: isNotificationclicked
                                          ? Colors.blue
                                          : Colors.black),
                                )
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                isCartlicked = false;
                                isAccountlicked = true;
                                isNotificationclicked = false;
                                isHomeclicked = false;
                                isCategoryclicked = false;
                                top = ProfilePage();
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.person_outlined,
                                  color: isAccountlicked
                                      ? Colors.blue
                                      : Colors.black,
                                ),
                                Text(
                                  "Account",
                                  style: TextStyle(
                                      height: 1,
                                      fontSize: 12,
                                      color: isAccountlicked
                                          ? Colors.blue
                                          : Colors.black),
                                )
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                isCartlicked = true;
                                isAccountlicked = false;
                                isNotificationclicked = false;
                                isHomeclicked = false;
                                isCategoryclicked = false;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  IconData(0xf37f, fontFamily: 'MaterialIcons'),
                                  color:
                                      isCartlicked ? Colors.blue : Colors.black,
                                ),
                                Text(
                                  "Cart",
                                  style: TextStyle(
                                      height: 1,
                                      fontSize: 12,
                                      color: isCartlicked
                                          ? Colors.blue
                                          : Colors.black),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ]),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(padding: EdgeInsets.all(16), child: Icon(Icons.menu)),
                  Padding(
                      padding: EdgeInsets.all(16),
                      child: Icon(
                        Icons.person_outline_rounded,
                      ))
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 100, bottom: 58),
          child: Container(
            decoration: BoxDecoration(
                // color: Colors.red,
                ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
        ),
        top ?? Container(),
        widget.child ?? Container()
      ]),
    );
  }
}

class BottomNavBarFb2 extends StatelessWidget {
  const BottomNavBarFb2({Key? key}) : super(key: key);

  final accentColor = const Color(0xffffffff);
  final backgroundColor = const Color(0xffffffff);
  final errorColor = const Color(0xffEF4444);
  final primaryColor = const Color(0xff4338CA);
  final secondaryColor = const Color(0xff6D28D9);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: SizedBox(
        height: 56,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconBottomBar(
                  text: "Home",
                  icon: Icons.home,
                  selected: true,
                  onPressed: () {}),
              IconBottomBar(
                  text: "Search",
                  icon: Icons.search_outlined,
                  selected: false,
                  onPressed: () {}),
              IconBottomBar(
                  text: "Cart",
                  icon: Icons.local_grocery_store_outlined,
                  selected: false,
                  onPressed: () {}),
              IconBottomBar(
                  text: "Calendar",
                  icon: Icons.date_range_outlined,
                  selected: false,
                  onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}

class IconBottomBar extends StatelessWidget {
  const IconBottomBar(
      {Key? key,
      required this.text,
      required this.icon,
      required this.selected,
      required this.onPressed})
      : super(key: key);

  final IconData icon;
  final Function() onPressed;
  final primaryColor = const Color(0xff4338CA);
  final bool selected;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            size: 25,
            color: selected ? primaryColor : Colors.black54,
          ),
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 12,
              height: .1,
              color: selected ? primaryColor : Colors.grey.withOpacity(.75)),
        )
      ],
    );
  }
}
