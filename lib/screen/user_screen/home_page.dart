import 'package:dental/constant.dart';
import 'package:dental/widgets/icon_content.dart';
import 'package:dental/widgets/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// const bottomContainerHeight = 60.0;
// const activeCardColor = ActivColor;
// const inactiveCardColor = InactivColor;
// const bottomContainerColor = SecondColor;

class HomePage extends StatelessWidget {
  static String id = 'HomePage';
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: MainColor,
      appBar: AppBar(
        title: Center(
          child: Text(
            'Welcom to El-Grahy Dentail',
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                  image: AssetImage('assets/img/intro.png'),
                  height: height * .2,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('AboutusPage');
                    },
                    child: ReusableCard(
                      cardChild: IconContent(
                        height: height,
                        icon: FontAwesomeIcons.stethoscope,
                        lable: 'About Us',
                      ),
                      colour: activeCardColor,
                    ),
                  ),
                ),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('ServicesPage');
                  },
                  child: ReusableCard(
                    cardChild: IconContent(
                        height: height,
                        icon: FontAwesomeIcons.tooth,
                        lable: 'Services'),
                    colour: activeCardColor,
                  ),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('AppointmentPage');
                  },
                  child: ReusableCard(
                    cardChild: IconContent(
                      height: height,
                      icon: FontAwesomeIcons.notesMedical,
                      lable: 'Appointment',
                    ),
                    colour: activeCardColor,
                  ),
                )),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('BlogPage');
                  },
                  child: ReusableCard(
                    cardChild: IconContent(
                      height: height,
                      icon: FontAwesomeIcons.blog,
                      lable: 'Blog',
                    ),
                    colour: activeCardColor,
                  ),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('TestimonialsPage');
                  },
                  child: ReusableCard(
                    cardChild: IconContent(
                      height: height,
                      icon: FontAwesomeIcons.fileAlt,
                      lable: 'Testimonials',
                    ),
                    colour: activeCardColor,
                  ),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('GalleryPage');
                  },
                  child: ReusableCard(
                    cardChild: IconContent(
                      height: height,
                      icon: FontAwesomeIcons.photoVideo,
                      lable: 'Gallery',
                    ),
                    colour: activeCardColor,
                  ),
                )),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('AvailibilityPage');
                  },
                  child: ReusableCard(
                    cardChild: IconContent(
                      height: height,
                      icon: FontAwesomeIcons.calendarAlt,
                      lable: 'Availibility',
                    ),
                    colour: activeCardColor,
                  ),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('ReachusPage');
                  },
                  child: ReusableCard(
                    cardChild: IconContent(
                      height: height,
                      icon: FontAwesomeIcons.map,
                      lable: 'Reach Us',
                    ),
                    colour: activeCardColor,
                  ),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('ContactusPage');
                  },
                  child: ReusableCard(
                    cardChild: IconContent(
                      height: height,
                      icon: FontAwesomeIcons.phoneVolume,
                      lable: 'Contact Us',
                    ),
                    colour: activeCardColor,
                  ),
                )),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('AppointmentPage');
            },
            child: Container(
              margin: EdgeInsets.all(10),
              width: width * 1,
              height: bottomContainerHeight,
              decoration: BoxDecoration(
                color: bottomContainerColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Book an appointment',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
