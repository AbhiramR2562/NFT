import 'package:flutter/material.dart';
import 'package:nft/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 20, 17, 82),
      body: SafeArea(
        minimum: EdgeInsets.all(10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Image.asset(
                  'lib/images/261379125315467.611664c2156eb.jpeg',
                  height: 200,
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                "Find Your",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 236, 235, 235),
                    fontSize: 57),
              ),
              const Text(
                "Best NFT",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 236, 235, 235),
                    fontSize: 56),
              ),
              const Text(
                "Market",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 236, 235, 235),
                    fontSize: 57),
              ),
              const SizedBox(height: 60),
              GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage())),
                child: Container(
                  height: 52,
                  width: 200,
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Center(
                    child: Text(
                      "Start",
                      style: TextStyle(
                          color: Color.fromARGB(255, 236, 235, 235),
                          fontWeight: FontWeight.bold,
                          fontSize: 34),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
