import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sparewo/controllers/panel_provider.dart';
import 'package:sparewo/utils/colors.dart';
import 'package:sparewo/utils/context.dart';
import 'package:sparewo/widgets/addproductcard.dart';
import 'package:sparewo/widgets/productlist_card.dart';
import 'package:sparewo/widgets/topbar.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width * 0.875,
      color: AppColors.white,
      height: context.height,
      child: Consumer<PanelProvider>(builder: (context, value, child) {
        var provider = Provider.of<PanelProvider>(context);
        return Column(
          children: [
            const TopBar(title: 'Products'),
            Expanded(
              child: provider.isAddProduct
                  ? const AddProductCard()
                  : const ProductListCard(),
            ),
          ],
        );
      }),
    );
  }
}
