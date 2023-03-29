import 'package:flutter/material.dart';

class BuyTicketButton extends StatelessWidget {
  final String buttonText;
  final IconData buttonIcon;
  final VoidCallback onPressed;

  const BuyTicketButton({
    Key? key,
    required this.buttonText,
    required this.buttonIcon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 66,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              height: 44,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 24,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: ElevatedButton(
                  onPressed: onPressed,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(buttonText),
                      const SizedBox(width: 8),
                      Icon(buttonIcon),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
