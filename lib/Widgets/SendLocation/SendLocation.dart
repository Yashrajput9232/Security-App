import 'package:flutter/material.dart';

class SendLocation extends StatelessWidget {
  const SendLocation({super.key});
  ShowModel(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height / 1.4,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => ShowModel(context),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          height: 180,
          width: MediaQuery.of(context).size.width * 0.7,
          decoration: BoxDecoration(),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        'Send Location',
                        style: TextStyle(fontSize: 25),
                      ),
                      subtitle: Text('Share You Location'),
                    ),
                  ],
                ),
              ),
              ClipRRect(
                  child: Image.asset(
                'assets/map.png',
                height: 150,
                width: 150,
              ))
            ],
          ),
        ),
      ),
    );
  }
}
