import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ordo_ui_test/components/lacakpage/driver_profile.dart';
import 'package:ordo_ui_test/components/lacakpage/lacak_app_bar.dart';
import 'package:ordo_ui_test/components/lacakpage/lacak_bottom_app_bar.dart';
import 'package:ordo_ui_test/components/lacakpage/log_status.dart';
import 'package:ordo_ui_test/components/lacakpage/order_list_item.dart';
import 'package:ordo_ui_test/components/lacakpage/order_note.dart';
import 'package:ordo_ui_test/style.dart';

class LacakPage extends StatelessWidget {
  const LacakPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: LacakBottomAppBar(),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              LacakAppBar(),
              Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height -
                            (MediaQuery.of(context).size.height * 0.25),
                        child: Image.asset(
                          "assets/images/maps.png",
                          fit: BoxFit.cover,
                          alignment: Alignment.topCenter,
                        ),
                      ),
                      SizedBox(height: 54),
                    ],
                  ),
                  Positioned.fill(
                    bottom: -1,
                    child: DraggableScrollableSheet(
                      initialChildSize: 0.22,
                      minChildSize: 0.22,
                      maxChildSize: 0.6,
                      builder: (context, scrollController) {
                        return Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade100,
                                blurRadius: 10,
                              )
                            ],
                            borderRadius: BorderRadiusDirectional.only(
                              topStart: Radius.circular(20),
                              topEnd: Radius.circular(20),
                            ),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 8),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 150),
                                child: Container(
                                  height: 5,
                                  color: LACAK_DARK_GREEN_COLOR,
                                ),
                              ),
                              SizedBox(height: 8),
                              Expanded(
                                child: SingleChildScrollView(
                                  controller: scrollController,
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        DriverProfile(),
                                        LogStatus(
                                          label: "Status",
                                          status: "Sedang Mengambil Barang",
                                          leading: SvgPicture.asset(
                                            "assets/icons/lacak-clock.svg",
                                            width: 24,
                                            height: 24,
                                          ),
                                        ),
                                        SizedBox(height: 24),
                                        LogStatus(
                                          label: "Alamat Anda",
                                          status: "Taman Indah Dago No. 612",
                                          leading: SvgPicture.asset(
                                            "assets/icons/lacak-location.svg",
                                            width: 24,
                                            height: 24,
                                          ),
                                        ),
                                        SizedBox(height: 18),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Text(
                                            "Pesanan",
                                            style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                        OrderListItem(),
                                        OrderListItem(),
                                        OrderNote(),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
