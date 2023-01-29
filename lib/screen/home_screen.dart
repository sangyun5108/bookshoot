import 'package:flutter/material.dart';
import 'package:hello_word/screen/blog_screen.dart';
import 'package:hello_word/screen/naver_login.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  WebViewController? controller;

  final String homeUrl = "https://blog.naver.com/owenew1743";

  final Map<String, String> blogData = {
    '박상윤': 'https://m.blog.naver.com/sangyunpark99',
    '정광희': 'https://m.blog.naver.com/owenew1743',
    '정문기': 'https://m.blog.naver.com/PostList.naver?blogId=akfyddmlqnssh',
    '방다영': 'https://m.blog.naver.com/tnv3157'
  };

  final List<String> blogImage = [
    "asset/img/sangyun.png",
    "asset/img/gwanghee.png",
    "asset/img/mungi.png",
    "asset/img/dayoung.png"
  ];

  @override
  Widget build(BuildContext context) {
    // 기본값
    // TODO: implement buildR
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF345457),
        title: const Text('Book Shoot'),
        centerTitle: true,
      ),
      body: SafeArea(
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: GridView.builder(
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10),
                itemBuilder: (BuildContext context, int index) {
                  List<String> names = blogData.keys.toList();
                  List<String> blogUrls = blogData.values.toList();

                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  BlogScreen(webUrl: blogUrls[index])));
                    },
                    child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 6.0,
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              flex: 9,
                              child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                child: SizedBox.fromSize(
                                  size: const Size.fromRadius(10),
                                  child: Image.asset(
                                    blogImage[index],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Center(
                                child: Text(
                                  names[index],
                                  style: const TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ],
                        )),
                  );
                }),
          )),
    );
  }
}
