// ignore_for_file: prefer_const_constructors

class News {
  const News({
    required this.title,
    required this.newsbody,
  });
  final String title;
  final String newsbody;
}

class NewsCategory {
  NewsCategory({
    required this.categoryName,
    required this.categoryNewsList,
  });
  final String categoryName;
  final List<News> categoryNewsList;
}

List newsCategories = [
  NewsCategory(
    categoryName: 'politics', 
    categoryNewsList: [
      News(
        title: '2023 election', 
        newsbody: 'expensive party ticket'),

      News(
        title: 'party presidential tickets', 
        newsbody: 'expensive party ticket'),

      News(
        title: 'godfatherisms in politics', 
        newsbody: 'expensive party ticket'),

      News(
        title: '2023 election', 
        newsbody: 'expensive party ticket')
    ]
    
    ),

     NewsCategory(
    categoryName: 'Tech', 
    categoryNewsList: [
      News(
            title: 'software', 
            newsbody: 'android'),

        News(
            title: 'ui/ux', 
            newsbody: 'android'),

        News(
            title: 'cyber security', 
            newsbody: 'android'),
        News(
              title: 'engine maths', 
              newsbody: 'android'),
    ]
    
    )
];
