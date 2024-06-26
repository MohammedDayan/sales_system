import 'package:flutter/material.dart';
import '../widgets/line_chart.dart';
import 'home.dart';

class RevenueView extends StatefulWidget {
  static const routeName = '/revenue';

  const RevenueView({super.key});

  @override
  State<RevenueView> createState() => _RevenueViewState();
}

class _RevenueViewState extends State<RevenueView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ColorScheme color = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Revenue and Stastistics",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      backgroundColor: color.tertiary,
      body: Padding(
        padding: const EdgeInsets.only(right: 15.0),
        child: Row(
          children: [
            // const SideBar(currentIndex: 3),
            Expanded(
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40.0),
                    child: SizedBox(
                      height: 50,
                      width: 500,
                      child: DefaultTabController(
                        length: 5,
                        child: Scaffold(
                          // backgroundColor: color.tertiary,
                          appBar: AppBar(
                            backgroundColor: color.tertiary,
                            bottom: const TabBar(
                              tabs: [
                                Tab(icon: Text("Yesterday")),
                                Tab(icon: Text("Today")),
                                Tab(icon: Text("Week")),
                                Tab(icon: Text("Month")),
                                Tab(icon: Text("Year"))
                              ],
                            ),
                          ),
                          // body: const TabBarView(
                          //   children: [
                          //     Text("Yesterday"),
                          //     Text("Today"),
                          //     Text("Week"),
                          //     Text("Month"),
                          //     Text("Year")
                          //   ],
                          // ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    height: 345,
                    // height: 400,
                    width: 650,
                    decoration: ShapeDecoration(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                        ),
                        color: color.onPrimary),
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Daily Sales"),
                          ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              shape: MaterialStatePropertyAll<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                            ),
                            child: const Text(
                              "View Report",
                            ),
                          ),
                        ],
                      ),
                      // SizedBox(
                      //   height: 10,
                      // ),
                      const Expanded(child: SalesLineChart())
                    ]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
