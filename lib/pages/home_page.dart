import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:showcaseview/showcaseview.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Your Cart",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Spacer(),
                  Text("See All"),
                ],
              ),
              Spacer(),
              CupertinoButton(
                color: Colors.yellow,
                onPressed: () {},
                child: Center(child: Text("Order Now")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ShowcaseWidget extends StatelessWidget {
  final GlobalKey key;
  final String desc;
  final Widget child;

  const ShowcaseWidget({
    required this.key,
    required this.desc,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Showcase(
      key: key,
      description: desc,
      child: child,
    );
  }
}
