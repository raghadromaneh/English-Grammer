import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri nounurl = Uri.parse('https://www.youtube.com/watch?v=gES-AewCOAI');
final Uri verbsurl = Uri.parse('https://www.youtube.com/watch?v=SsnGevphX6Q');
final Uri adjectivesurl =
    Uri.parse('https://www.youtube.com/watch?v=9KahrrivdQQ');
final Uri adverbsurl = Uri.parse('https://www.youtube.com/watch?v=n0fuame4hSQ');
final Uri pastsurl = Uri.parse('https://www.youtube.com/watch?v=5TjpEcrNbCc');
final Uri presentsurl =
    Uri.parse('https://www.youtube.com/watch?v=rlbFDiuwlF0&t=4s');
final Uri futursurl = Uri.parse('https://www.youtube.com/watch?v=TDh-m2xLyg8');
final Uri pastcurl = Uri.parse(
    'https://www.youtube.com/watch?v=oBzkMfEXj1s&list=PL5isa5XjlZ5roRlz3R6453BIxknfoBiwZ&index=5');
final Uri presentcurl = Uri.parse(
    'https://www.youtube.com/watch?v=ZqQG54yds-Y&list=PL5isa5XjlZ5roRlz3R6453BIxknfoBiwZ&index=4');
final Uri futurcurl = Uri.parse(
    'https://www.youtube.com/watch?v=Q2Vkhcvq9uw&list=PL5isa5XjlZ5roRlz3R6453BIxknfoBiwZ&index=6');
final Uri pastpurl = Uri.parse(
    'https://www.youtube.com/watch?v=8QehpHhgN04&list=PL5isa5XjlZ5roRlz3R6453BIxknfoBiwZ&index=7');
final Uri presentpurl = Uri.parse(
    'https://www.youtube.com/watch?v=cfYSzcZSw3U&list=PL5isa5XjlZ5roRlz3R6453BIxknfoBiwZ&index=8');
final Uri futurpurl = Uri.parse(
    'https://www.youtube.com/watch?v=Uu-u3gBSHzA&list=PL5isa5XjlZ5roRlz3R6453BIxknfoBiwZ&index=10');

final Uri conditionalsentencesurl =
    Uri.parse('https://www.youtube.com/watch?v=3yBK_an3aDA');

Future<void> nounUrl() async {
  if (!await launchUrl(nounurl)) {
    throw 'Could not launch $nounurl';
  }
}

Future<void> verbsUrl() async {
  if (!await launchUrl(verbsurl)) {
    throw 'Could not launch $verbsurl';
  }
}

Future<void> adjectiveUrl() async {
  if (!await launchUrl(adjectivesurl)) {
    throw 'Could not launch $adjectivesurl';
  }
}

Future<void> adverbsUrl() async {
  if (!await launchUrl(adverbsurl)) {
    throw 'Could not launch $adverbsurl';
  }
}

Future<void> pastsUrl() async {
  if (!await launchUrl(pastsurl)) {
    throw 'Could not launch $pastsurl';
  }
}

Future<void> presentsUrl() async {
  if (!await launchUrl(presentsurl)) {
    throw 'Could not launch $presentsurl';
  }
}

Future<void> futursUrl() async {
  if (!await launchUrl(futursurl)) {
    throw 'Could not launch $futursurl';
  }
}

Future<void> pastcUrl() async {
  if (!await launchUrl(pastcurl)) {
    throw 'Could not launch $pastcurl';
  }
}

Future<void> presentcUrl() async {
  if (!await launchUrl(presentcurl)) {
    throw 'Could not launch $presentcurl';
  }
}

Future<void> futurcUrl() async {
  if (!await launchUrl(futurcurl)) {
    throw 'Could not launch $futurcurl';
  }
}

Future<void> pastpUrl() async {
  if (!await launchUrl(pastpurl)) {
    throw 'Could not launch $pastpurl';
  }
}

Future<void> presentpUrl() async {
  if (!await launchUrl(presentpurl)) {
    throw 'Could not launch $presentpurl';
  }
}

Future<void> futurpUrl() async {
  if (!await launchUrl(futurpurl)) {
    throw 'Could not launch $futurpurl';
  }
}

Future<void> conditionalsentencesUrl() async {
  if (!await launchUrl(conditionalsentencesurl)) {
    throw 'Could not launch $conditionalsentencesurl';
  }
}

class URLclass extends StatelessWidget {
  URLclass({
    required this.mylatfotmtitle,
    required this.mylatformicon,
    required this.myfunction,
  });

  final String? mylatfotmtitle;

  IconData? mylatformicon;
  Function()? myfunction;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myfunction,
      child: Container(
        child: ListTile(
          title: Text(
            "$mylatfotmtitle",
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: "Cormorant"),
          ),
          leading: Icon(
            mylatformicon,
            size: 25,
            color: Color.fromARGB(255, 238, 53, 40),
          ),
        ),
      ),
    );
  }
}
