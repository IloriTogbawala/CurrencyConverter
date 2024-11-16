import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        width: 2.0,
        style: BorderStyle.none,
        strokeAlign: BorderSide.strokeAlignInside,
      ),
      borderRadius: BorderRadius.all(Radius.circular(30)),
    );

    return Scaffold(
        backgroundColor: Color.fromARGB(58, 136, 152, 10),
        body: ColoredBox(
            //the colored box is to give the column a column...more like a space beside your widgets
            color: Color.fromRGBO(20, 80, 80, 0.945),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text(
                '0',
                style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255)),
              ),
              TextField(
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: ('Please enter the amount in USD'),
                  hintStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  prefixIcon: const Icon(Icons
                      .monetization_on_outlined), //prefixIcon does a proper job of putting an icon in front of your prev. text in this case
                  prefixIconColor: (Colors.deepPurple),
                  filled: true,
                  fillColor: Colors.white70,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                //inpput decoration has to do with how you want to design the textfield which is a kinda backgnd for yor texts.
                //so the keyboard kini we want to put now will still be in the textfield and not in the input decoration.
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
              //Button...we have 2 of em and they are the raised and the text button.
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: TextButton(
                    onPressed: () {
                      debugPrint('button clicked');
                    },
                    child: const Text('Convert'),
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(179, 98, 122, 29)),
                        foregroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(153, 255, 255, 255)),
                        fixedSize: MaterialStatePropertyAll(Size(200, 50)))),
              )
            ])));
  }
}
