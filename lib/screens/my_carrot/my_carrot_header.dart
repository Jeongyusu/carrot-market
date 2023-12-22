import 'package:carrot_market_01/thema.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyCarrotHeader extends StatelessWidget {
  const MyCarrotHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0.5,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: Column(
          children: [
            _buildProfileRow(),
            const SizedBox(
              height: 30,
            ),
            _buildRoundTextButton(),
           SizedBox(height: 30,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
             _buildRoundMenuButton('판매 내역', FontAwesomeIcons.receipt),
             _buildRoundMenuButton('구매 내역', FontAwesomeIcons.shoppingBag),
             _buildRoundMenuButton('관심 목록', FontAwesomeIcons.heart),
           ],),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileRow() {
    return Row(
      children: [
        Stack(
          children: [
            SizedBox(
              width: 65,
              height: 65,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(32.5),
                child: Image.network(
                  'https://picsum.photos/200/100',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey),
                child: const Icon(
                  Icons.camera_alt,
                  size: 15,
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          width: 16,
        ),
        Column(
          children: [
            Text('developer', style: textTheme().displayMedium),
            const SizedBox(
              height: 4,
            ),
            Text('좌동 #00912'),

          ],
        )
      ],
    );
  }

  Widget _buildRoundTextButton() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFFD4D5DD),
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(6.0),
      ),
      height: 45,
      child: Center(
        child: Text(
          '프로필 보기',
          style: textTheme().titleMedium,
        ),
      ),
    );
  }

  Widget _buildRoundMenuButton(String title, IconData iconData){
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Color.fromRGBO(255, 226, 208, 1),
            border: Border.all(color: Color(0xFFD4DD), width: 0.5),
          ),
          child: Icon(iconData, color: Colors.orange,),
        ),
        SizedBox(height: 10,),
        Text(title),
      ],
    );
  }
} //end of class
