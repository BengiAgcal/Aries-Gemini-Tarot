/* COMP 4521
   Bengi Agcal, 20455419, bagcal@connect.ust.hk
Priyanshi Milan Mehta, 20479544, pmmehta@connect.ust.hk
*/

import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {

  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {

  double pers= 0.003;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Browse cards'),
        backgroundColor: Color(0xFF08091C),
        elevation: 0.0,
          ),

      body: Center(
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),

          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/GeneralBG.png'),
                fit: BoxFit.cover,

              )

          ),
          child: ListWheelScrollView(

            itemExtent: 420,
            squeeze: 0.9,
            renderChildrenOutsideViewport: false,
            perspective:pers,



              children: <Widget>[
              Container(

                child:
                Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/fool.jpg'),
                alignment: Alignment.center,
              ),

                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/magician.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/highpriestess.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/empress.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/emperor.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/heirophant.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/lovers.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/chariot.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/strength.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/hermit.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/wheeloffortune.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/justice.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/hangedman.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/death.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/temperance.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/devil.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/tower.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/star.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/moon.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/sun.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/judgment.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/world.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/acewands.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/2wands.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/3wands.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/4wands.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/5wands.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/6wands.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/7wands.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/8wands.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/9wands.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/10wands.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/pagewands.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/knightwands.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/queenwands.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/kingwands.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/acecups.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/2cups.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/3cups.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/4cups.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/5cups.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/6cups.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/7cups.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/8cups.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/9cups.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/10cups.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/pagecups.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/knightcups.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/queencups.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/kingcups.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/aceswords.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/2swords.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/3swords.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/4swords.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/5swords.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/6swords.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/7swords.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/8swords.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/9swords.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/10swords.jpg'),
                ),

                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/pageswords.jpg'),
                ),

                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/knightswords.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/queenswords.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/kingswords.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/acepent.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/2pent.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/3pent.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/4pent.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/5pent.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/6pent.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/7pent.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/8pent.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/9pent.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/10pent.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/pagepent.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/knightpent.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/queenpent.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/kingpent.jpg'),
                ),














              ],

          ),
        ),
      ),
    );
  }
}
