import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class First extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

_openLinkedin() async {
  const url = 'https://www.linkedin.com/in/maky-madi-94818570/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_openInstagram() async {
  const url = 'https://www.instagram.com/makymadi/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_openGithub() async {
  const url = 'https://github.com/madimakym?tab=repositories/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_openTel() async {
  const url = '+221784336027';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

Widget _avatar() {
  return Container(
    margin: EdgeInsets.all(10.0),
    height: 135,
    width: 135,
    decoration: BoxDecoration(
      borderRadius: new BorderRadius.circular(100),
      color: Color.fromRGBO(142, 041, 041, 1),
      image: DecorationImage(
        image: AssetImage("images/avatar.jpg"),
        fit: BoxFit.cover,
      ),
    ),
  );
}

Widget _reseauxSociaux() {
  return Container(
    child: new Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 35,
          width: 35,
          margin: const EdgeInsets.all(10),
          child: RaisedButton(
              onPressed: _openLinkedin,
              padding: const EdgeInsets.all(10.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              color: Color.fromRGBO(085, 148, 218, 1),
              child: Image(image: AssetImage("images/iconlinkedin.png"))),
        ),
        Container(
          height: 35,
          width: 35,
          margin: const EdgeInsets.all(10),
          child: RaisedButton(
              onPressed: _openInstagram,
              padding: const EdgeInsets.all(10.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              color: Color.fromRGBO(085, 148, 218, 1),
              child: Image(
                image: AssetImage("images/icon-instagram.png"),
              )),
        ),
        Container(
          height: 35,
          width: 35,
          margin: const EdgeInsets.all(10),
          child: RaisedButton(
              onPressed: _openGithub,
              padding: const EdgeInsets.all(10.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              color: Color.fromRGBO(085, 148, 218, 1),
              child: Image(
                image: AssetImage("images/icon-github.png"),
              )),
        ),
      ],
    ),
  );
}

Widget _apropos() {
  return Container(
    padding: const EdgeInsets.all(10.0),
    margin: const EdgeInsets.only(top: 10.0),
    child: new Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          'A propos',
          style: TextStyle(
            color: Colors.black,
            fontSize: 23.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}

class _LoginScreenState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new SingleChildScrollView(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 50.0),
          _avatar(),
          Text(
            'Maky madi',
            style: TextStyle(
              color: Colors.black,
              fontSize: 22.0,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            'Développeur Front end & Mobile',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 13.0,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            'Dakar - Sénégal',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 13.0,
            ),
          ),
          SizedBox(height: 16.0),
          Container(
            padding: const EdgeInsets.all(0.0),
            decoration: BoxDecoration(
                border: Border(
              top: BorderSide(color: Colors.black26, width: 0.5),
              bottom: BorderSide(color: Colors.black26, width: 0.5),
            )),
            child: _reseauxSociaux(),
          ),
          _apropos(),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Stack(
              children: <Widget>[
                Text(
                  'Développeur Front-end & Mobile, Autodidacte curieux passionné par les nouvelles technologies.Je propose un service web de qualité, tout en respectant les standards web actuels. Aujourd\'hui je profite de mon statut de freelance pour m\'investir dans des projets web innovants. Mon accompagnement peut couvrir selon vos besoins l\'ensemble des étapes d\'un projet de sa conception, à la réalisation puis son suivi. N\'hésitez pas à me contacter afin d\'échanger sur votre projet. J\'y répondrai avec plaisir! A bientôt.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.0),
          Container(
            padding: const EdgeInsets.only(bottom: 10.0),
            margin: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                border: Border(
              bottom: BorderSide(color: Colors.black26, width: 0.5),
            )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Téléphone',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  child: Text(
                    '+221784336027',
                    style: TextStyle(
                      color: Colors.black38,
                      fontSize: 15.0,
                    ),
                  ),
                  onTap: () => launch("tel:+21213123123"),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 10.0),
            margin: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                border: Border(
              bottom: BorderSide(color: Colors.black26, width: 0.5),
            )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Email',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                    child: Text(
                      'makymadi@gmail.com',
                      style: TextStyle(
                        color: Colors.black38,
                        fontSize: 15.0,
                      ),
                    ),
                    onTap: () {
                      launch('mailto:makymadi@gmail.com');
                    })
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 10.0),
            margin: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                border: Border(
              bottom: BorderSide(color: Colors.black26, width: 0.5),
            )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Skype',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'maky.madi2',
                  style: TextStyle(
                    color: Colors.black38,
                    fontSize: 15.0,
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 10.0),
            margin: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                border: Border(
              bottom: BorderSide(color: Colors.black26, width: 0.5),
            )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Portfolio',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                    child: Text(
                      'www.makymadi.com',
                      style: TextStyle(
                        color: Colors.black38,
                        fontSize: 15.0,
                      ),
                    ),
                    onTap: () {
                      launch('https://makymadi.com');
                    })
              ],
            ),
          )
        ],
      ),
    ));
  }
}
