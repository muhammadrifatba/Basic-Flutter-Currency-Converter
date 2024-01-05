import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});
  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
        borderSide: const BorderSide(
          width: 2.0,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(8));
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: const Text('Currency Converter'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Test',
              style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Please Enter The Amount in USD',
                  hintStyle: const TextStyle(color: Colors.black),
                  prefixIcon: const Icon(Icons.monetization_on),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    if (kDebugMode) {
                      debugPrint('button Clicked');
                    }
                  },
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      elevation: 5,
                      backgroundColor: Colors.grey,
                      foregroundColor: Colors.white,
                      minimumSize: const Size(double.infinity, 45)),
                  child: const Text('Convert')),
            )
          ],
        ),
      ),
    );
  }
}
