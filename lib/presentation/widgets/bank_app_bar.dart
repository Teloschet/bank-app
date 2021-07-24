import 'package:bank/presentation/payment_story.dart';
import 'package:flutter/material.dart';

class BankAppBar extends StatelessWidget {
  const BankAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: const <Widget>[
          CircleAvatar(
            radius: 24,
            backgroundImage: NetworkImage(''),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Text(
              'Hi, Christopher!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
          )
        ],
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: IconButton(
            icon: const Icon(
              Icons.notifications_none,
              size: 32,
            ),
            onPressed: () {
              Navigator.of(context).push<Widget>(
                MaterialPageRoute<Widget>(
                    builder: (BuildContext context) => const PaymentStory()),
              );
            },
          ),
        )
      ],
    );
  }
}
