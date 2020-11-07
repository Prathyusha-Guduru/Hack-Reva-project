import 'package:PLANTIFY/home.dart';
import 'package:flutter/material.dart';

class Myplant extends StatefulWidget {
  @override
  _MyplantState createState() => _MyplantState();
}

class _MyplantState extends State<Myplant> {
  List<Data> dataList = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dataList.add(Data(
        'assets/plants1.png', 'assets/p1', 'plant1', '10-10-10', 'shrubs'));
    dataList.add(Data(
        'assets/plants2.png', 'assets/p1', 'plant1', '10-10-10', 'shrubs'));
    dataList.add(Data(
        'assets/plants3.png', 'assets/p1', 'plant1', '10-10-10', 'shrubs'));
    dataList.add(Data(
        'assets/plants4.png', 'assets/p1', 'plant1', '10-10-10', 'shrubs'));
    dataList.add(Data(
        'assets/plants5.png', 'assets/p1', 'plant1', '10-10-10', 'shrubs'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            itemBuilder: (builder, index) {
              return LimitedBox(
                maxHeight: 350,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    decoration: new BoxDecoration(
                        color: Colors.white,
                        borderRadius: new BorderRadius.all(
                          const Radius.circular(10.0),
                        )),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 22, horizontal: 8),
                                child: Text(
                                  'Nick Name : ${dataList[index].name}',
                                  style: TextStyle(
                                      fontFamily: 'BalsamiqSans_Blod',
                                      fontSize: 20,
                                      color: Colors.black),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 22),
                                child: Text(
                                  ' Date Planted :${dataList[index].detail}',
                                  style: TextStyle(
                                      fontFamily: 'BalsamiqSans_Regular',
                                      fontSize: 18,
                                      color: Colors.black),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 22),
                                child: Text(
                                  ' Plant Category :${dataList[index].type}',
                                  style: TextStyle(
                                      fontFamily: 'BalsamiqSans_Regular',
                                      fontSize: 18,
                                      color: Colors.black),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            '${dataList[index].image}',
                            width: MediaQuery.of(context).size.width * 0.4,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (builder, index) {
              return Divider(
                height: 10,
                thickness: 0,
              );
            },
            itemCount: dataList.length),
      ),
    );
  }
}

class Data {
  String image;
  String nimage;
  String name;
  String detail;
  String type;

  Data(this.image, this.nimage, this.name, this.detail, this.type);
}
