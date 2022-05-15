// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> 
with SingleTickerProviderStateMixin {

    TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 5);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body:SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start
                      ,
                      children: [
                        Text('Headline', 
                        style: Theme.of(context)
                        .textTheme
                        .headline2
                        ?.copyWith(
                          color: Color(0XFF50B5B0
                          )
                          )
                          ),
                         Text('Today, February 23rd', 
                         style: Theme.of(context).textTheme.headline4
                        )
                      ],
                    ),
                    CircleAvatar(child: Icon(Icons.notifications)),
                  ],
                ),
              ),
               Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          width: double.infinity,
          height: 150,
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(20)),
          child: Stack(
            children: [
              Positioned(
                left: 20,
                top: 14,
                child: Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    child: Text(
                      'Trending',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Text(
          'Ukrain conflict: Kyiv brace for a Russian assault',
          style: Theme.of(context).textTheme.headline2,
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('World', style: Theme.of(context).textTheme.headline4),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.timelapse),
                  Text('1h ago', style: Theme.of(context).textTheme.headline4),
                  Icon(Icons.comment_rounded),
                  Text('5', style: Theme.of(context).textTheme.headline4),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Following',
              style: Theme.of(context).textTheme.headline3,
            ),
            Text(
              'View more',
              style: Theme.of(context)
                  .textTheme
                  .headline3
                  ?.copyWith(color: Color(0XFF50B5B0)),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        
        Container(
          height: 50,
          child: TabBar(
              controller: _tabController,
              isScrollable: true,
              tabs: List.generate(
                5,
                (index) => CatCard(),
              )
            ),
        ),
        Expanded(
            child: Container(
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 8,
              itemBuilder: (context, index) {
                if (index.isOdd) {
                  return NewsCatList();
                } else {
                  return NewsCatName();
                }
              }),
        ))
              
              
          
            ],
          ),
        ),
      )
    );
  }
}



class CatCard extends StatelessWidget {
  const CatCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 10,
      color: Colors.grey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('News category'),
      ),
    );
  }
}

class NewsCatName extends StatelessWidget {
  const NewsCatName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('sport news', style: Theme.of(context).textTheme.headline2,),
    );
  }
}

class NewsCatList extends StatelessWidget {
  const NewsCatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).primaryColor,
      child: Text('newsbody european football clubs', 
      style: Theme.of(context).textTheme.headline4),
    );
  }
}

