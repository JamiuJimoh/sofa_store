import 'package:flutter/material.dart';
import 'package:sofa_store/widgets/custom_container.dart';

import '../text_style_constants.dart';

const height = 60.0;

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: height,
            child: TextField(
              decoration: InputDecoration(
                label: Row(
                  children: [
                    const Icon(Icons.search, color: kOnPrimary),
                    const SizedBox(width: 10.0),
                    Text('Search',
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1
                            ?.copyWith(color: const Color(0xFFAEACB8))),
                  ],
                ),
                filled: true,
                fillColor: Colors.white,
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 15.0),
        const CustomContainer(
          padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 18.0),
          height: height,
          child: Icon(Icons.tune, color: kOnPrimary),
        ),
      ],
    );
  }
}
