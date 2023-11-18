import 'package:flutter/material.dart';
import 'package:nft/components/nft_cart.dart';

class TopTab extends StatelessWidget {
  const TopTab({super.key});

  @override
  Widget build(BuildContext context) {
    return NftCart(imagePath: 'lib/images/apiens_3.jpg');
  }
}
