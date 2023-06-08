import 'package:flutter/material.dart';

class order_list_view_items extends StatelessWidget {
  const order_list_view_items({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) =>
          Container(
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 20,vertical: 20),
            color: Colors.white,
            width: double.infinity,
            margin: const EdgeInsetsDirectional.only(top: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const[
                    Text(
                      'Order #52001',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                      ),
                    ),
                    Spacer(),
                    Text(
                      '28 Nov 2019',
                      style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF8393A9),
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  children: const[
                    Text(
                      'Service Type:',
                      style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF8393A9),
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      ' Carpenter',
                      style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF648DFC),
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
      itemCount: 4,
    );
  }
}
