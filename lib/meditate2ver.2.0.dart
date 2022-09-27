import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Meditate2ver2 extends StatelessWidget {
  const Meditate2ver2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: const Text(
          "Meditate",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.search,
              size: 30,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: SizedBox(
                height: 73.0,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) =>
                        categoryWidget(index, context)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  Card(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                    child: Column(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                            color: Color.fromRGBO(242, 201, 76, 1),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 60.0, right: 60.0, bottom: 10.0),
                            child: Image.asset("assets/sun.png"),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(top: 10.0, left: 10),
                              child: Text(
                                "A Song of Moon",
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 20.0),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(top: 7.0, left: 10),
                              child: Text(
                                "Start with the basics",
                                style: TextStyle(fontSize: 16.0),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 1.0, left: 10.0),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.favorite_border,
                                size: 20,
                              ),
                              Expanded(
                                child: Text(
                                  "  9 Sessions",
                                  style: TextStyle(
                                    fontSize: 13.0,
                                    color: Colors.black.withOpacity(0.5),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: TextButton(
                                  onPressed: (() {
                                    
                                  }),
                                  child: Wrap(
                                    children: [
                                      Text(
                                        "Start",
                                        style: TextStyle(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            fontSize: 13.0),
                                      ),
                                      const Icon(
                                        Icons.navigate_next,
                                        color: Color.fromRGBO(30, 43, 114, 1),
                                        size: 18.0,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: cardWidget(
                              context,
                              const Color.fromRGBO(240, 146, 53, 1),
                              "assets/picture1.png",
                              "The Sleep Hour",
                              "Asha Mukherjee",
                              " 3 Session"),
                        ),
                        Expanded(
                          child: cardWidget(
                              context,
                              const Color.fromRGBO(242, 201, 76, 1),
                              "assets/picture2.png",
                              "Easy on the Mission",
                              "Peter Mach",
                              " 5 minutes"),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: cardWidget(
                              context,
                              const Color.fromRGBO(47, 128, 237, 1),
                              "assets/picture3.png",
                              "Relax with Me",
                              "Amanda James",
                              " 3 Session"),
                        ),
                        Expanded(
                          child: cardWidget(
                              context,
                              const Color.fromRGBO(3, 158, 162, 1),
                              "assets/picture4.png",
                              "Sun and Energy",
                              "Michael Hiu",
                              " 5 minutes"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  static const Map<int, String> categories = {
    0: "All",
    1: "Bible In a Year",
    2: "Dailies",
    3: "Minutes",
    4: "November"
  };
  
  Card cardWidget(BuildContext context, Color backgroundColor, String pathImage,
      String nameSong, String authorName, String session) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(15.0)),
              color: backgroundColor,
            ),
            child: Center(child: Image.asset(pathImage)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10),
                child: Text(
                  nameSong,
                  style: const TextStyle(
                      fontWeight: FontWeight.w800, fontSize: 15.0),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 3.0, left: 10),
                child: Text(
                  authorName,
                  style: TextStyle(
                      fontSize: 13.0, color: Colors.black.withOpacity(0.5)),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Row(
              children: [
                const Icon(
                  Icons.favorite_border,
                  size: 12,
                ),
                Expanded(
                  child: Text(
                    session,
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: TextButton(
                    onPressed: () {},
                    child: Wrap(
                      children: [
                        Text(
                          "Start",
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                              fontSize: 12.0),
                        ),
                        const Icon(
                          Icons.navigate_next,
                          color: Color.fromRGBO(30, 43, 114, 1),
                          size: 16.0,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget categoryWidget(int index, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 5),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(100.0)),
          color: index == 0
              ? const Color.fromRGBO(3, 158, 162, 1)
              : const Color.fromRGBO(230, 254, 255, 1),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Center(
            child: Text(
              categories[index]!,
              style: TextStyle(
                  fontSize: 13.0,
                  color: index != 0
                      ? const Color.fromRGBO(3, 158, 162, 1)
                      : const Color.fromRGBO(230, 254, 255, 1),
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
    );
  }
}
