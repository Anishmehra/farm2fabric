import 'package:farm2fabric/consts/consts.dart';

class TradingCartScreen extends StatelessWidget {
  const TradingCartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: "Cart is Empty"
          .text
          .size(20)
          .color(Colors.white)
          .fontFamily(semibold)
          .makeCentered(),
    );
  }
}
