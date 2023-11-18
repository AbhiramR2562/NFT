import 'package:flutter/material.dart';
import 'package:nft/components/nft_cart.dart';

class RecentTab extends StatelessWidget {
  const RecentTab({super.key});

  @override
  Widget build(BuildContext context) {
    return NftCart(
      imagePath: 'lib/images/apiens_2.jpg',
    );
  }
}
