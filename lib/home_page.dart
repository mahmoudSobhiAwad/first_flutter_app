import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // using scaffold that include many built in widget , to help handle page
    return Scaffold(
      body: SafeArea(
        // using safe area to make widget take padding from phone app bar itself which contain time and battery .. etc
        child: SingleChildScrollView( // scroll view incase user has diffrent layout to avoid render flex error .
          child: Column(
            // column is vertical sized widget
            children: [
              const Text(
                "Free Palestine",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight
                        .bold), //using text style to controll text theme
              ),
              //size widget is used to take space between above and below widget (using height parameter) and also right and left (using width parameter)
              const SizedBox(
                height: 20,
              ),
              
              //row is horizontally sized widget
              Row(
                // we use main axis space between to set the availabe space between two images
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // first image , using image network , include image link directly
                  Expanded(
                      child: Image.network(
                        fit: BoxFit.fill, // add fit to fill all avalibe space
                    "https://wallpapercave.com/wp/wp5314635.jpg",
                  )),
                  // first image , using image network , include image link directly
                  Expanded(
                      child: Image.network(
                        fit: BoxFit.fill,//// add fit to fill all avalibe space
                    "https://th.bing.com/th/id/OIP.sMrn_Q6Z1HCL-DnTvhHaBQHaEK?rs=1&pid=ImgDetMain",
                  )),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
