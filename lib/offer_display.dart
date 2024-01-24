import 'package:flutter/material.dart';
import 'info_page.dart';
import 'offer.dart';
import 'tab_content.dart';

class OfferDisplay extends StatefulWidget {
  const OfferDisplay({super.key});

  @override
  State<OfferDisplay> createState() => _OfferDisplayState();
}

class _OfferDisplayState extends State<OfferDisplay>
    with TickerProviderStateMixin {
  late TabController _controller;
  final List<Tab> topTabs = [
    const Tab(text: 'Masculino'),
    const Tab(text: 'Femenino')
  ];

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 20, 20, 48),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 20, 20, 48),
          title: const Text(
            'Tienda virtual',
          ),
          actions: [
            IconButton(
                padding: const EdgeInsets.only(right: 20),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InfoPage()),
                  );
                },
                icon: const Icon(Icons.info_outline)),
          ],
          bottom: TabBar(
            controller: _controller,
            tabs: topTabs,
          ),
        ),
        body: TabBarView(controller: _controller, children: [
          TabContent(items: shoesMan),
          TabContent(items: shoesWoman)
        ]));
  }
}
