import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_data.dart';
import '../../../../../core/utils/styles/text_styles.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 10),
      child: TextField(
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          hintText: 'Search a book',
          hintStyle: TextStyles.s14,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white.withOpacity(0.5)),
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white.withOpacity(0.8),
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Image(
              image: AssetImage(
                AssetsData.searchIcon,
              ),
              height: 20,
            ),
          ),
        ),
      ),
    );
  }
}
