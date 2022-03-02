import 'package:bwa_chatty/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff8fafc),
      floatingActionButton: chatInput(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Column(
          children: [
            header(),
            body(),
          ],
        )
      ),
    );
  }

  Widget chatInput(context) {
    return Container(
      width: MediaQuery.of(context).size.width - (2 * 30),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(75)
      ),
      child: Row(
        children: [
          Text(
            'Type message...',
            style: subtitleTextStyle,
          ),
          Spacer(),
          Image.asset(
            'assets/images/send_btn.png',
            width: 35,
          )
        ],
      ),
    );
  }

  Widget receiverBubble({
    required String imageUrl,
    required String text,
    required String time
  }) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 30
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ClipOval(
            child: Image.asset(
              imageUrl,
              width: 40,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 12
            ),
            decoration: BoxDecoration(
              color: Color(0xffEBEFF3),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: titleTextStyle,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  time,
                  style: subtitleTextStyle,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget senderBubble({
    required String imageUrl,
    required String text,
    required String time
  }) {
    return Container(
      margin: EdgeInsets.only(
          bottom: 30
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 12
            ),
            decoration: BoxDecoration(
                color: Color(0xffEBEFF3),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  text,
                  style: titleTextStyle,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  time,
                  style: subtitleTextStyle,
                )
              ],
            ),
          ),
          SizedBox(
            width: 12,
          ),
          ClipOval(
            child: Image.asset(
              imageUrl,
              width: 40,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }

  Widget header() {
    return Container(
      width: double.infinity,
      height: 115,
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(30)
        )
      ),
      child: Row(
        children: [
          ClipOval(
            child: Image.asset(
              'assets/images/grup1.png',
              width: 55,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            children: [
              Text(
                'Forum Xiaomi',
                style: titleTextStyle.copyWith(
                  color: Color(0xff2C3A59),
                  fontSize: 16,
                  fontWeight: FontWeight.w500
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                '15,231 members',
                style: subtitleTextStyle,
              ),
            ],
          ),
          Spacer(),
          Image.asset(
            'assets/images/call_btn.png',
            width: 35,
            height: 35,
          )
        ],
      ),
    );
  }

  Widget body() {
    return Expanded(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal:30
          ),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              receiverBubble(
                  imageUrl: 'assets/images/kelinci.jpg',
                  text: 'Cara atasi lag gimana?',
                  time: '12.15'),
              senderBubble(
                  imageUrl: 'assets/images/kucing.jpg',
                  text: 'Clear cache bro',
                  time: '12.20'),
              senderBubble(
                  imageUrl: 'assets/images/rakun.jpg',
                  text: 'Format aja biar bersih',
                  time: '12.22'),
              receiverBubble(
                  imageUrl: 'assets/images/kelinci.jpg',
                  text: 'Oke terima kasih atas\nmasukkannya',
                  time: '12.30'),
            ],
          ),
        )
    );
  }
}
