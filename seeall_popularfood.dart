import 'package:flutter/material.dart';

class SeeallPopularfood extends StatelessWidget {
  const SeeallPopularfood({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 2,
        title: Text(
          'Remita',
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        backgroundColor: Colors.orange[800],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    '   welcome to remita. Remita is a financial services platform that allows individuals, businesses, and governments to make and receive payments online and offline. ',
                    softWrap: true,
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange[800],
                      foregroundColor: Colors.black,
                    ),
                    child: Text(
                      'Remita',
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, top: 15),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.yellow[700],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        child: Image.asset(
                          'assets/testassets/Remita.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  'Services include:',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                )
              ],
            ),
            ServiceList(servicename: 'Money transfers'),
            ServiceList(servicename: 'Bill payments'),
            ServiceList(servicename: 'Salary payments etc...'),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  'visit us at:',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Social_container(
                  socialname: 'Twitter',
                  socialimage: 'assets/testassets/twitter.png',
                ),
                Social_container(
                  socialname: 'Facebook',
                  socialimage: 'assets/testassets/facebook.jpg',
                ),
                Social_container(
                  socialname: 'Instagram',
                  socialimage: 'assets/testassets/instagram.jpg',
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ServiceList extends StatelessWidget {
  final String servicename;
  const ServiceList({super.key, required this.servicename});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            servicename,
            style: TextStyle(color: Colors.black),
          )
        ],
      ),
    );
  }
}

class Social_container extends StatelessWidget {
  final String socialname;
  final String socialimage;
  const Social_container(
      {super.key, required this.socialname, required this.socialimage});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              height: 45,
              width: 45,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                child: Image.asset(
                  socialimage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [Text(socialname)],
        )
      ],
    );
  }
}
