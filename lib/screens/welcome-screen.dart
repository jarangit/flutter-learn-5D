import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() =>
      _WelcomeState();
}

class _WelcomeState
    extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    const htmlData =
        '<div style=" font-size: 12px; display: flex; flex-direction: column; justify-content: space-between; align-items: between; gap: 10px;  height: 100%; background-size: contain; padding: 10px; background-repeat: no-repeat; width: 100%; " > <div style="display: flex; gap: 10px; align-items: center; ">  <div style="text-align: center; display: flex; flex-direction: column; gap: 3px; justify-content: space-between; " > <div style="font-weight: bold">title</div> <div>content</div> <div *ngIf="textBut" style=" background-color: #b8f416; padding: 3px 20px; border-radius: 8px; font-weight: bold; font-size: 12px; " > textBut </div> </div> </div> </div>';
    return Scaffold(
      body: Container(
        width: double.infinity,
        // decoration: BoxDecoration(
        //     gradient: LinearGradient(
        //   colors: [
        //     Colors.white,
        //     Colors.lightGreen.shade200
        //   ],
        //   // ทิศทางของสี
        //   begin: Alignment.topLeft,
        //   end: Alignment.bottomRight,
        //   tileMode: TileMode.repeated,
        // )),
        child: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.only(
                    bottom: 32.0),
            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment
                      .spaceBetween,
              children: [
                _textHeader(),
                _textWelcome(),
                Html(data: htmlData),
                _buttonStart()
              ],
            ),
          ),
        ),
      ),
    );
  }

  //header widget
  Widget _textHeader() {
    return Row(
      mainAxisAlignment:
          MainAxisAlignment.end,
      children: [
        IconButton(
            onPressed: () => "",
            icon: Icon(Icons.help)),
        TextButton(
            onPressed: () {},
            child: Text(
              "Help",
            )),
        Text(
          "|",
        ),
        TextButton(
            onPressed: () {},
            child: Text("English")),
      ],
    );
  }

  //welcome widget
  Widget _textWelcome() {
    return Column(
      children: [
        Text("welcome"),
        Text(
            "lorem ipsum lorem ipsum lorem ipsum")
      ],
    );
  }

  //button widget
  Widget _buttonStart() {
    return SizedBox(
        width: MediaQuery.of(context)
                .size
                .width *
            0.9,
        child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                shape:
                    RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius
                                .circular(
                                    8)),
                backgroundColor:
                    Colors.green,
                foregroundColor:
                    Colors.white),
            child: Text(
              "Get Started",
              style: TextStyle(
                  fontWeight:
                      FontWeight.bold),
            )));
  }
}
