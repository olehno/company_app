import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "News",
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.grey,
            ),
            tooltip: 'Open shopping cart',
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Image.network(
            "https://www.tastingtable.com/img/gallery/coffee-brands-ranked-from-worst-to-best/l-intro-1645231221.jpg",
            fit: BoxFit.fitWidth,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 32,
            ),
            child: Text(
              "Woman buys out shoe store to help",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            child: Text(
              "LA year has passed since Greece and what is now called North Macedonia signed a historic deal ending a 27-year dispute between them, in a rare diplomatic success in the Balkans.",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            child: Text(
              "Now the EU is, yet again, kicking the can down the road on starting accession talks with North Macedonia, and with Albania.",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            child: Text(
              "After a postponement a year ago. it has put the decision off from a summit until October",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          const Spacer(),
          const Divider(),
          Row(
            children: [
              const SizedBox(width: 10),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                    "https://media.gq.com/photos/566ac3fec0f741b430e641e7/1:1/w_1407,h_1407,c_limit/elon-musk-gq-1215-01-sq.jpg",
                  ),
                ),
              ),
              Expanded(
                child: TextFormField(

                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Please write a response...',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
