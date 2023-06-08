import 'package:final_project/constants/constants.dart';
import 'package:final_project/widgets/order_list_view.dart';
import 'package:flutter/material.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item Details'),
        centerTitle: true,
        toolbarHeight: 80,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: GradientConstants.gradient2
          ),
        ),
      ),//EAEFFF
      body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Color(0xFFEAEFF5),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30))),
          child: DefaultTabController(
            length: 3,
            child: Column(
              children: [
                Container(
                  color: Colors.white,
                  child: const TabBar(
                    indicatorSize: TabBarIndicatorSize.label,
                      indicatorColor: ColorConstants.primaryColor1,
                      unselectedLabelColor: Color(0xFF646781),
                      labelColor: ColorConstants.primaryColor1,
                      tabs: [
                        Tab(text: 'Pending'),
                        Tab(text: 'Underway',),
                        Tab(text: 'Completed'),
                      ]),
                ),
                const Expanded(
                  child: TabBarView(children: [
                    order_list_view_items(),
                    order_list_view_items(),
                    order_list_view_items(),
                  ]),
                )
              ],
            ),
          ),
        ),

    );
  }
}

