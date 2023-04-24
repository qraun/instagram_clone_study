import 'package:flutter/material.dart';
import 'package:imstagram_clone/src/components/avatar_widget.dart';

class UserCard extends StatelessWidget {
  final String userId;
  final String description;
  const UserCard({Key? key, required this.userId, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 3),
      width: 150,
      height: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.black12),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 15,
            bottom: 0,
            right: 15,
            child: Column(
              children: [
                const SizedBox(height: 10),
                AvatarWidget(
                  type: AvatarType.TYPE2,
                  size: 80,
                  thumbPath:
                      'https://i.pinimg.com/564x/8c/b6/55/8cb655bad9b2a26620db279c20ce572f.jpg',
                ),
                const SizedBox(height: 10),
                Text(
                  userId,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 13,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 5),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Follow'),
                ),
              ],
            ),
          ),
          Positioned(
              right: 5,
              top: 5,
              child: GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.close,
                  size: 14,
                  color: Colors.grey,
                ),
              )),
        ],
      ),
    );
  }
}
