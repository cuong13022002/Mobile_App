import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key, required this.image, required this.name}) : super(key: key);
  final String image;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20 * 2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 45,
                      width: 55,
                      decoration: const BoxDecoration(
                        color: Colors.white38,
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: Image.network(
                  image,
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              name,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              name,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white60,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Cock-tail is a stimulating liquor, composed of spirits of any kind, sugar, water, and bitters—it is vulgarly called bittered sling, and is supposed to be an excellent electioneering potion, in as much as it renders the heart stout and bold, at the same time that it fuddles the head. It is said, also to be of great use to a democratic candidate: because a person, having swallowed a glass of it, is ready to swallow any thing else.",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white54,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(
              height: 30,
            ),


            Container(
              height: 50,
              width: MediaQuery.of(context).size.width / 1.1,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: const Center(
                child: Text(
                  "Add to Cart",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),

                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
