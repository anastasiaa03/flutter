import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Meditate extends StatefulWidget {
  const Meditate({super.key});
  @override
  State<Meditate> createState() => _MeditateState();
}

class _MeditateState extends State<Meditate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xFFF2C94C)),
              alignment: Alignment.center,
              child: Image.asset("assets/medit.png"),
            ),
            // const Spacer(),
            const Text(
              "Peter Mach",
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            // const Spacer(),
            const Text(
              "Mind Deep Relax",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Join the Community as we prepare over 33 days to relax and feel joy with the mind and happnies session across the World.",
              style: TextStyle(fontSize: 15),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 7.0),
              decoration: BoxDecoration(
                  color: const Color(0xFF039EA2),
                  borderRadius: BorderRadius.circular(15)),
              alignment: Alignment.center,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.play_arrow_outlined, color: Colors.white),
                    Text("Play Next Session",
                        style: TextStyle(color: Colors.white, fontSize: 17))
                  ]),
            ),
            const SizedBox(height: 24),

            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  padding: const EdgeInsets.all(13),
                  decoration: BoxDecoration(
                      color: const Color(0xFF2F80ED),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Icon(Icons.play_arrow_outlined,
                      color: Colors.white),
                ),
                const SizedBox(width: 13),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Sweet Memories",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                          textAlign: TextAlign.left),
                      Text("December 29 Pre-Launch",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                          textAlign: TextAlign.left)
                    ],
                  ),
                ),
                const Icon(
                  Icons.more_horiz,
                  color: Colors.grey,
                )
              ],
            ),

            Container(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    padding: const EdgeInsets.all(13),
                    decoration: BoxDecoration(
                        color: const Color(0xFF039EA2),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Icon(Icons.play_arrow_outlined,
                        color: Colors.white),
                  ),
                  const SizedBox(width: 13),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("A Day Dream",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                            textAlign: TextAlign.left),
                        Text("December 29 Pre-Launch",
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                            textAlign: TextAlign.left)
                      ],
                    ),
                  ),
                  const Icon(
                    Icons.more_horiz,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    padding: const EdgeInsets.all(13),
                    decoration: BoxDecoration(
                        color: const Color(0xFFF09235),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Icon(Icons.play_arrow_outlined,
                        color: Colors.white),
                  ),
                  const SizedBox(width: 13),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Mind Explore",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                            textAlign: TextAlign.left),
                        Text("December 29 Pre-Launch",
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                            textAlign: TextAlign.left)
                      ],
                    ),
                  ),
                  const Icon(
                    Icons.more_horiz,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
