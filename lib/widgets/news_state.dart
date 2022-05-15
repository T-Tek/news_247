import 'package:flutter/widgets.dart';

import 'package:news_247/widgets/news_data.dart';

class NewsState extends ChangeNotifier {
  

}

class NewsTabCategory {
  const NewsTabCategory({
    required this.category,
    required this.selected,
  });

  final NewsCategory category;
  final bool selected;
}
