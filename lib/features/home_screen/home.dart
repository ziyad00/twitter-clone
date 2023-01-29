import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        bottomOpacity: 1,
        elevation: 0.0,
        leading: GestureDetector(
            onTap: () {},
            child: SizedBox(
                height: 32,
                width: 32,
                child: Image.asset('assets/account.png'))),
        title: Center(
          child: Image.asset('assets/logo.png'),
        ),
        bottom: PreferredSize(
            child: Container(
              // height: 4.0,
              child: Divider(),
            ),
            preferredSize: Size.fromHeight(5.0)),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Image.asset('assets/Feature.png'),
              )),
        ],
      ),
      body: Column(
        children: [
          TweetCard(),
          TweetCard(),
          TweetCard(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Colors.blue,
        child: Image.asset('assets/Add_text_icon.png'),
      ),
    );
  }
}

class TweetCard extends StatelessWidget {
  const TweetCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 5,
                ),
                child: SizedBox(
                  height: 55,
                  width: 55,
                  child: Image.asset('assets/account2.png'),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 1),
                    child: Text("Maximmilian @maxjacobson ·3h"),
                  ),
                  Text("Y’all ready for this next post?"),
                  // Text("ziyad"),
                  SizedBox(
                    height: 15,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 25.0, left: 50),
                child: Image.asset('assets/DownArrowicon.png'),
              ),
            ],
          ),
        ),
        Divider(),
      ],
    );
  }
}
