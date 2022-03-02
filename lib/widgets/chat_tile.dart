import 'package:flutter/material.dart';
import 'package:bwa_chatty/theme.dart';

class ChatTile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String text;
  final String time;
  final bool unread;

  ChatTile({required this.imageUrl, required this.name, required this.text, required this.time, required this.unread});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16),
      child: Row(
        children: [
          ClipOval(
            child: Image.asset(
              imageUrl,
              width: 55,
              height: 55,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: titleTextStyle,
              ),
              Text(
                text,
                style: unread ? subtitleTextStyle.copyWith(
                    color: blackColor
                ) : subtitleTextStyle,
              )
            ],
          ),
          Spacer(),
          Text(time, style: subtitleTextStyle,),
        ],
      ),
    );

  }
}