import 'package:flutter/material.dart';

class Seemore extends StatefulWidget {
  const Seemore({super.key});

  @override
  State<Seemore> createState() => _SeemoreState();
}

class _SeemoreState extends State<Seemore> {
  final String text = '''Flutter is an open-source UI 
  software development kit created by Google. It can
   be used to develop cross platform applications from 
   a single codebase for the web, Fuchsia, Android,
    iOS, Linux, macOS.Flutter is an open-source UI 
  software development kit created by Google. It can
   be used to develop cross platform applications from 
   a single codebase for the web, Fuchsia, Android,
    iOS, Linux, macOS.Flutter is an open-source UI 
  software development kit created by Google. It can
   be used to develop cross platform applications from 
   a single codebase for the web, Fuchsia, Android,
    iOS, Linux, macOS.''';

  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Text(
                text,
                maxLines: isExpanded ? null : 4,
                overflow: isExpanded
                    ? TextOverflow.visible
                    : TextOverflow.ellipsis,
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                },
                child: Text(isExpanded ? "See less" : "see more"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
