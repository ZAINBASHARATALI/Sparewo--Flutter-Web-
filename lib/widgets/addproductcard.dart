import 'package:flutter/material.dart';
import 'package:sparewo/utils/colors.dart';
import 'package:sparewo/widgets/addproductfields.dart';
import 'package:sparewo/widgets/productlist_card.dart';

class AddProductCard extends StatelessWidget {
  const AddProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        // height: context.height * 0.7,
        decoration: BoxDecoration(
          color: AppColors.white,
          border: Border.all(color: AppColors.grey),
          borderRadius: BorderRadius.circular(8),
        ),
        margin: const EdgeInsets.all(25),
        padding: const EdgeInsets.symmetric(vertical: 25),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              TopRow(),
              SizedBox(height: 10),
              AddProductFields(),
            ],
          ),
        ),
      );
    });
  }
}
