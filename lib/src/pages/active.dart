import 'package:flutter/material.dart';
import 'package:imstagram_clone/src/components/avatar_widget.dart';

class Active extends StatelessWidget {
  const Active({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          '활동',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _newRecentlyActiveView('오늘'),
            _newRecentlyActiveView('이번주'),
            _newRecentlyActiveView('이번달'),
          ],
        ),
      ),
    );
  }

  Widget _activeItemOne() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          AvatarWidget(
            type: AvatarType.TYPE2,
            size: 40,
            thumbPath:
                'https://i.pinimg.com/564x/8f/d2/90/8fd290feb2a63363d9b72d9e23712bec.jpg',
          ),
          const SizedBox(width: 10),
          const Expanded(
            child: Text.rich(
              TextSpan(
                text: 'pepsi',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: '님이 회원님의 게시물을 좋아합니다.',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  TextSpan(
                    text: ' 5 일전',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _newRecentlyActiveView(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
          _activeItemOne(),
          _activeItemOne(),
          _activeItemOne(),
          _activeItemOne(),
        ],
      ),
    );
  }
}
