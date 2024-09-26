// Page/payment_page.dart
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:hungry_buddy/Components/my_button.dart';
import 'package:hungry_buddy/Page/delivery_page.dart';

class Paymentpage extends StatefulWidget {
  const Paymentpage({super.key});

  @override
  State<Paymentpage> createState() => _PaymentpageState();
}

class _PaymentpageState extends State<Paymentpage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;

  // user wats to pay
  void userTappedPay() {
    if (formKey.currentState!.validate()) {
      // only show dialog if form is valid
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: const Text("Confirm payment"),
                content: SingleChildScrollView(
                    child: ListBody(children: [
                  Text("Card Number:$cardNumber"),
                  Text("Expiry Date:$expiryDate"),
                  Text("Card Holder Name:$cardHolderName"),
                  Text("CVV:$cvvCode"),
                ])),
                actions: [
                  // cancel button
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text("Cancel"),
                  ),

                  // yes button
                  TextButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DeliveryPage(),
                      ),
                    ),
                    child: const Text("Yes"),
                  ),
                ],
              ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text(
            'Checkout',
          ),
        ),
        body: Column(
          children: [
            // credit card
            CreditCardWidget(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              showBackView: isCvvFocused,
              onCreditCardWidgetChange: ((p0) {}),
            ),

            // credit card form
            CreditCardForm(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              onCreditCardModelChange: (data) {
                setState(() {
                  cardNumber = data.cardNumber;
                  expiryDate = data.expiryDate;
                  cardHolderName = data.cardHolderName;
                  cvvCode = data.cvvCode;
                });
              },
              formKey: formKey,
            ),

            const Spacer(),

            MyButton(
              onTap: userTappedPay,
              text: "Pay now",
            ),

            const SizedBox(
              height: 35,
            ),
          ],
        ));
  }
}
