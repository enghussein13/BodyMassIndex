import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/bmi_controller.dart';

class BmiResult extends StatelessWidget {
  const BmiResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Result'),
      ),
      body: GetBuilder<BmiController>(
        //init: BmiController(),
        builder: (controller)=>Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children:  [
                Image.asset('assets/images/bmi.png',),
                SizedBox(height: 10.0,),
                Text('The Result is:',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),),
                SizedBox(
                  height: 10.0,
                ),
                Text('${controller.result!.round()}',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),),
                SizedBox(
                  height: 10.0,
                ),
                Text('You have: ${controller.classification}',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),),
                SizedBox(
                  height: 20.0,
                ),
                Text('Health risk is: ${controller.healthRisk}',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                      color: controller.massageColor
                  ),),
                SizedBox(
                  height: 20.0,
                ),
                Text('${controller.quote}',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24.0,
                    color: controller.massageColor
                  ),)
              ],
            ),
            decoration: BoxDecoration(
              borderRadius:BorderRadius.circular(10.0),
              color: Colors.grey[350] ,
            ),
          ),
        ),
      ),
    );
  }
}
