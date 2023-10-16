import 'package:flutter/material.dart';

import 'Ktext.dart';

class kcardview extends StatelessWidget {
  const kcardview({
    super.key,
    required this.Ksize,
  });
  final String Ksize;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 100,
        color: Color.fromARGB(255, 6, 154, 195),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Ktext(
                  text: "HelloWorld $Ksize",
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  height: 5,
                ),
                Ktext(text: "Upload On: 2023-10-16"),
              ],
            ),
            ElevatedButton(onPressed: () {}, child: Text("Public"))
          ],
        ),
      ),
    );
  }
}
