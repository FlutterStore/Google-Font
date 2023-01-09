import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List fonts = [
    'Roboto',
    'Playfair Display',
    'Moon Dance',
    'Quicksand',
    'Rubik Bubbles',
    'Dancing Script',
    'Patrick Hand',
    'Jost',
    'East Sea Dokdo',
    'Caveat',
    'Yanone Kaffeesatz',
    'Indie Flower',
    'Yeon Sung',
    'Passions Conflict',
    'Courgette',
    'Great Vibes',
    'Poiret One',
    'Sacramento',
    'Playfair Display SC',
    'Khand',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Google Fonts',style: TextStyle(fontSize: 15),),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: fonts.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      minLeadingWidth: 0,
                      leading: const Icon(Icons.brush_outlined),
                      title: Text("Successoft Infotech",
                        style: GoogleFonts.getFont(
                          fonts[index],
                          // background: Paint(),
                          // backgroundColor: Colors.green,
                          color: Colors.black,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.black,
                          // decorationStyle: TextDecorationStyle.dashed,
                          decorationThickness: 2,
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.normal,
                          // foreground: Paint(),
                          height: 1,
                          letterSpacing: 1.0,
                          // locale: Locale('',''),
                          shadows: [
                            BoxShadow(
                              offset: Offset(0.5,2.0),
                              blurRadius: 5,
                              color: Colors.black.withOpacity(0.5)
                            )
                          ],
                          textBaseline: TextBaseline.alphabetic,
                          // textStyle: TextStyle(),
                          wordSpacing: 1,
                        ),
                      ),
                      subtitle: const Text("Google Fonts",style: TextStyle(fontSize: 12),),
                      trailing: const Icon(Icons.keyboard_arrow_right,size: 15,),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Details(font: fonts[index],),));
                      },
                    ),
                    const Divider(
                      height: 1,
                      indent: 60,
                    )
                  ],
                );
              },
            ),
          )
        ],
      )
    );
  }
}

class Details extends StatefulWidget {
  Details({super.key, required this.font});

  String font;

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text("Flutter is Google's portable UI toolkit for crafting beautiful, natively compiled applications for mobile, web, and desktop from a single codebase. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source.\n\nFlutter is a free and open-source mobile UI framework created by Google and released in May 2017. In a few words, it allows you to create a native mobile application with only one codebase. This means that you can use one programming language and one codebase to create two different apps (for iOS and Android).\n\nFlutter consists of two important parts:\n An SDK (Software Development Kit): A collection of tools that are going to help you develop your applications. This includes tools to compile your code into native machine code (code for iOS and Android).\n\nA Framework (UI Library based on widgets): A collection of reusable UI elements (buttons, text inputs, sliders, and so on) that you can personalize for your own needs.To develop with Flutter, you will use a programming language called Dart. The language was created by Google in October 2011, but it has improved a lot over these past years. Dart focuses on front-end development, and you can use it to create mobile and web applications. If you know a bit of programming, Dart is a typed object programming language. You can compare Dart's syntax to JavaScript.",
          textAlign: TextAlign.justify,
          style: GoogleFonts.getFont(widget.font),
        ),
      ),
    );
  }
}



