import 'package:eclinic_mobile/models/post.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News'),
      ),
      body: ListView.builder(
        itemCount: newsPosts.length,
        itemBuilder: (context, index) {
          final newsPost = newsPosts[index];
          return Container(
            decoration: const BoxDecoration(
              color: Color(0xFF353E4F), // Dark transparent color
            ),
            margin:
                const EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 20),
            padding:
                const EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  newsPost.title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  newsPost.content,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  newsPost.publicationDate.toString(),
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

List<Post> newsPosts = [
  Post(
    id: 1,
    title: 'News Post 1',
    content: 'This is the content of News Post 1.',
  ),
  Post(
    id: 2,
    title: 'News Post 2',
    content: 'This is the content of News Post 2.',
  ),
  Post(
    id: 3,
    title: 'News Post 3',
    content: 'This is the content of News Post 3.',
  ),
  Post(
    id: 4,
    title: 'News Post 4',
    content: 'This is the content of News Post 4.',
  ),
  Post(
    id: 5,
    title: 'News Post 5',
    content: 'This is the content of News Post 5.',
  ),
  Post(
    id: 6,
    title: 'News Post 6',
    content: 'This is the content of News Post 6.',
  ),
  Post(
    id: 7,
    title: 'News Post 7',
    content: 'This is the content of News Post 7.',
  ),
];
