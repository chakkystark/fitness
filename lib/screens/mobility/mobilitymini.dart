import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MobilityMini extends StatefulWidget {
  MobilityMini({Key? key}) : super(key: key);

  @override
  _MobilityMiniState createState() => _MobilityMiniState();
}

class _MobilityMiniState extends State<MobilityMini> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            height: 800,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage(
                  'assets/cd_logo.png',
                ),
              ),
            ),
            child: StaggeredGridView.countBuilder(
              crossAxisCount: 4,
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) => Card(
                elevation: 10,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(1.0),
                  ),
                ),
                child: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/hd/13.jpg')),
                        color: Colors.black12,
                        borderRadius: BorderRadius.all(Radius.circular(1))),
                    child: Center(
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Text('$index'),
                      ),
                    )),
              ),
              staggeredTileBuilder: (int index) =>
                  StaggeredTile.count(1, index.isEven ? 1 : 1),
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
            )),
      ),
    );
  }
}