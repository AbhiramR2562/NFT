import 'package:flutter/material.dart';
import 'package:nft/components/nft_cart.dart';

class TrendingTab extends StatelessWidget {
  const TrendingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return NftCart(imagePath: 'lib/images/apiens_1.jpg');
  }
}
