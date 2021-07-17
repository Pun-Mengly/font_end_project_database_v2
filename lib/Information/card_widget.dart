import 'package:flutter/material.dart';

class CardInfo extends StatelessWidget {
  final String image;
  const CardInfo({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Container(
        height: 700,
        child: Column(
          children: [
            Expanded(
              flex: 8,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset(
                  image.toString(),
                  // fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
            ),
            Expanded(
                child: Padding(
              padding: EdgeInsets.only(left: 40, right: 40, bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.thumb_up_alt_outlined),
                        label: Text('Like')),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    flex: 2,
                    child: TextField(
                        decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blueAccent,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: "Comment",
                    )),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.reply_all_outlined),
                        label: Text('Share')),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
