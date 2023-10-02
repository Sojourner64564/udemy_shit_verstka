import 'package:flutter/cupertino.dart';
import 'package:udemy_shit_verstka/assets/colors/my_colors.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/cart_screen/widgets/loading_product_tile.dart';

class LoadingListview extends StatelessWidget{
  const LoadingListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return const LinearGradient(
          colors: [
            MyColors.whiteColor, MyColors.whiteColor, MyColors.transparrant
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [ 0.3, 0.9, 1],
        ).createShader(bounds);
      },
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return const LoadingProductTile();
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(height: 40);
        },
      ),
    );
  }

}