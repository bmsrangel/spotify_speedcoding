import 'package:flutter/material.dart';
import 'package:spotify_speedcoding/app_text_styles.dart';

class NewCustomPlaylistSectionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Nova playlist personalizada',
            style: AppTextStyles.headerStyle,
          ),
          const SizedBox(height: 15.0),
          Card(
            margin: EdgeInsets.zero,
            color: Color(0xFF2A2A2A),
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Container(
              padding: const EdgeInsets.all(15.0),
              height: 100,
              child: Row(
                children: [
                  Image.network(
                    'https://picsum.photos/100',
                    fit: BoxFit.fitHeight,
                  ),
                  const SizedBox(width: 8.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Caminho Diário',
                          style: AppTextStyles.cardTitleStyle,
                        ),
                        Text(
                          'Um mix de músicas e notícias feito para você',
                          style: AppTextStyles.cardBodyStyle,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 30.0,
                    height: 30.0,
                    decoration: BoxDecoration(
                      color: Color(0xFF555555),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 18.0,
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
}
