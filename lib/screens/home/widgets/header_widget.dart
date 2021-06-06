import 'package:flutter/material.dart';
import 'package:spotify_speedcoding/app_text_styles.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15.0, 15.0, 0.0, 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Boa tarde',
            style: AppTextStyles.headerStyle,
          ),
          Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.history,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.settings_outlined,
                  color: Colors.white,
                ),
                onPressed: () {},
              )
            ],
          ),
        ],
      ),
    );
  }
}
