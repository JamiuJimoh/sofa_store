import 'package:flutter/material.dart';
import 'package:sofa_store/widgets/item_card.dart';

import 'data.dart';
import 'details_screen.dart';
import 'text_style_constants.dart';
import 'widgets/chips_row.dart';
import 'widgets/search_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Best Furniture', style: heading),
                const SizedBox(height: 8.0),
                Text('Perfect Choice!', style: heading2),
                const SizedBox(height: 30.0),
                const SearchBar(),
                const SizedBox(height: 20.0),
                const ChipsRow(),
                const SizedBox(height: 25.0),
                // const ItemCard(),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: sofas.length,
                  itemBuilder: (_, i) => Column(
                    children: [
                      ItemCard(
                        name: sofas[i].name,
                        seller: sofas[i].seller,
                        description: sofas[i].description,
                        price: sofas[i].price,
                        imagePath: sofas[i].imagePath,
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (_) => DetailsScreen(sofa: sofas[i])),
                        ),
                      ),
                      const SizedBox(height: 25.0),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
