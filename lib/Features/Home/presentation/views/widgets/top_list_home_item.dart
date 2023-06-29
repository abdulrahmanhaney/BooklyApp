import 'package:bookly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/presentation/views/book_detail_view.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/book_image_widget.dart';
import 'package:flutter/material.dart';

class TopListHomeItem extends StatelessWidget {
  const TopListHomeItem({
    super.key,
    required this.index,
    this.hight = 224,
    this.width = 150,
    required this.bookModel,
  });

  final int index;
  final double hight;
  final double width;
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, BookDetailsView.id);
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: index == 0 ? 224 : 200,
            width: index == 0 ? 150 : 137,
            margin: index == 0
                ? const EdgeInsets.only(left: 30, right: 15)
                : const EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              border: Border.all(color: Colors.white.withOpacity(0.5)),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
            child: BookImageWidget(
              imageUrl: bookModel.volumeInfo!.imageLinks!.thumbnail!,
            ),
          ),
          Positioned(
            bottom: index == 0 ? 10 : 20,
            right: index == 0 ? 20 : 22,
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, BookDetailsView.id);
              },
              icon: Icon(
                Icons.play_arrow_rounded,
                color: Theme.of(context).primaryColor.withOpacity(0.6),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  Colors.white.withOpacity(0.7),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
