import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  final List<Map<String, dynamic>> sliderItems = [
    {
      'text': 'Bem-vindo ao Recomendation ML!\nDescubra as melhores recomendações para você.',
      'icon': Icons.search,
    },
    {
      'text': 'Explore\nEntenda como funciona os algoritmos.',
      'icon': Icons.explore,
    },
    {
      'text': 'Use o aplicativo para explorar recomendações baseadas em seus interesses.\nComece agora!\nToque em iniciar para começar a explorar.',
      'icon': Icons.arrow_downward,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(150.0),
        child: AppBar(
          flexibleSpace: Image.asset(
            'assets/images/initial_screen 2.png',
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: CarouselSlider.builder(
                carouselController: _controller,
                itemCount: sliderItems.length,
                itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              sliderItems[itemIndex]['icon'],
                              size: 50.0,
                              color: Theme.of(context).primaryColor,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                sliderItems[itemIndex]['text'],
                                style: const TextStyle(
                                  fontSize: 18.0,
                                  height: 1.4,
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            if (itemIndex == 1)
                              ElevatedButton(
                                onPressed: () => Navigator.pushNamed(context, '/conceitos'),
                                child: const Text('Ver Mais'),
                              ),
                          ],
                        ),
                        if (itemIndex < 2)
                          Positioned(
                            bottom: 10,
                            left: 0,
                            right: 0,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: const TextSpan(
                                  text: 'Passe para o lado ',
                                  style: TextStyle(fontSize: 12.0, color: Colors.black),
                                  children: [
                                    TextSpan(
                                      text: '👉',
                                      style: TextStyle(fontSize: 12.0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  );
                },
                options: CarouselOptions(
                  height: 400,
                  autoPlay: false,
                  enlargeCenterPage: true,
                  aspectRatio: 2.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  },
                  enableInfiniteScroll: false,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _current == sliderItems.length - 1 ? () => Navigator.pushNamed(context, '/questionario') : null,
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Theme.of(context).primaryColor,
                minimumSize: const Size(double.infinity, 50),
                disabledBackgroundColor: const Color.fromARGB(255, 169, 167, 167),
              ),
              child: const Text('Iniciar'),
            ),
          ],
        ),
      ),
    );
  }
}
