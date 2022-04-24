import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:fly_app/data/dummy_data.dart';
import 'package:fly_app/ui/components/custom_header.dart';
import 'package:fly_app/ui/components/custom_search.dart';
import 'package:fly_app/ui/components/custom_tap_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              const CustomHeader(),
              // sorry we did't add widget to tree
              // haha
              const CustomSearch(),
              const CustomTapBar(),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: StaggeredGridView.countBuilder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: trips.length,
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    itemBuilder: (context, index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.network(
                                trips[index].imgUrl,
                                fit: BoxFit.cover,
                              ),
                            ),
                            // every image should cover entire stack but this not happened
                            // i found i the trick sizebox should be on image not stack
                            // no it work
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    trips[index].locationName,
                                    style: AppColor.cardTextStyle,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    padding: const EdgeInsets.all(12),
                                    child: Text(
                                      "\$${trips[index].price}",
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  // thanks for watching
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    // now it work fine
                    staggeredTileBuilder: (index) {
                      // not in cross we should give it every card one cell
                      // and in main one should have 1.8 and other should have 1.2
                      return StaggeredTile.count(1, index.isEven ? 1.6 : 0.8);
                    }),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
