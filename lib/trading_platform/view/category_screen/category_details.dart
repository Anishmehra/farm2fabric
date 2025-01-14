import 'package:farm2fabric/authentication/widgets_common/bg_widget.dart';
import 'package:farm2fabric/consts/consts.dart';
import 'package:farm2fabric/trading_platform/view/category_screen/item_details.dart';

class CategroryDetails extends StatelessWidget {
  final String? title;
  const CategroryDetails({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      appBar: AppBar(
        title: title!.text.fontFamily(bold).white.make(),
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: Column(children: [
          SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    6,
                    (index) => "Tools"
                        .text
                        .fontFamily(semibold)
                        .color(darkFontGrey)
                        .size(12)
                        .makeCentered()
                        .box
                        .roundedSM
                        .white
                        .size(150, 60)
                        .margin(EdgeInsets.symmetric(horizontal: 4))
                        .make()),
              )),
          20.heightBox,
          Expanded(
              child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 6,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 250,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8),
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          imgP5,
                          height: 150,
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                        10.heightBox,
                        "Wool 4kg"
                            .text
                            .fontFamily(semibold)
                            .color(darkFontGrey)
                            .make(),
                        10.heightBox,
                        "Rs. 2000"
                            .text
                            .fontFamily(bold)
                            .color(redColor)
                            .size(16)
                            .make(),
                      ],
                    )
                        .box
                        .white
                        .margin(const EdgeInsets.symmetric(horizontal: 4))
                        .outerShadow
                        .roundedSM
                        .padding(EdgeInsets.all(12))
                        .make()
                        .onTap(() {
                      Get.to(() => ItemDetails(title: "Wool"));
                    });
                  })),
        ]),
      ),
    ));
  }
}
