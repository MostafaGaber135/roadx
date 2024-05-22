import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:roadx/main.dart';

class CustomEventCard extends StatelessWidget {
  const CustomEventCard(
      {super.key,});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Container(
            height: 140,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                right: BorderSide(
                  width: 3,
                  color: colorList[index],
                ),
                bottom: BorderSide(
                  width: 3,
                  color: colorList[index],
                ),
              ),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 3,
                  color: Colors.black26,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    timeLineList[index].title,
                    style: TextStyle(
                      fontSize: getResponsiveFontSize(context, fontSize: 22),
                      fontWeight: FontWeight.bold,
                      color: colorList[index],
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Text(
                        timeLineList[index].description,
                        style: TextStyle(
                          fontSize:
                              getResponsiveFontSize(context, fontSize: 13),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ));
      },
    );
  }
}

List<Color> colorList = [
  Colors.blue,
  Colors.green,
  Colors.deepOrangeAccent,
  Colors.indigo,
];

List<TimeLineClass> timeLineList = [
  TimeLineClass(
    "HTML",
    "HTML is the standard markup language for Web pages. With HTML you can create your own Website.you will find complete references about HTML elements, attributes, events, color names, entities, character-sets, URL encoding, language codes, HTTP messages, browser support, and more:\nHTML stands for Hyper Text Markup Language\nHTML is the standard markup language for creating Web pages\nHTML describes the structure of a Web page\nHTML consists of a series of elements\nHTML elements tell the browser how to display the content\nHTML elements label pieces of content such as\"this is a heading\", \"this is a paragraph\", \"this is a link\", etc",
    const Icon(Symbols.counter_1),
  ),
  TimeLineClass(
    "CSS",
    "CSS is the language we use to style a Web page.\nCSS is the language we use to style an HTML document.\nCSS describes how HTML elements should be displayed.\nCSS references of all properties and selectors with syntax, examples, browser support, and more.\nCSS stands for Cascading Style Sheets.\nCSS describes how HTML elements are to be displayed on screen, paper, or in other media.\nCSS saves a lot of work.\nIt can control the layout of multiple web pages all at once External stylesheets are stored in CSS files",
    const Icon(Symbols.counter_2),
  ),
  TimeLineClass(
    "Javascript",
    "JavaScript is the Programming Language for the Web.\nJavaScript can update and change both HTML and CSS.\nJavaScript can calculate, manipulate and validate data.",
    const Icon(Symbols.counter_3),
  ),
];

class TimeLineClass {
  String title;
  String description;
  Icon iconData;
  TimeLineClass(this.title, this.description, this.iconData);
}
