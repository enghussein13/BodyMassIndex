import 'package:bmi_calculator/BMI_CALC/views/result_screen.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../controller/bmi_controller.dart';

class BmiPageScreen extends StatelessWidget {
   const BmiPageScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return GetBuilder<BmiController>(
        init: BmiController(),
        builder: (controller)=>Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(onTap: (){},title: const Text('Test1'),trailing:const Icon(Icons.arrow_forward_ios)),
            ListTile(onTap: (){},title: const Text('Test2'),trailing:const Icon(Icons.arrow_forward_ios)),
            ListTile(onTap: (){},title: const Text('Test3'),trailing:const Icon(Icons.arrow_forward_ios)),
            ListTile(onTap: (){},title: const Text('Test4'),trailing:const Icon(Icons.arrow_forward_ios)),
          ],
        ),
      ),
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            if(Get.isDarkMode){
              Get.changeThemeMode(ThemeMode.light);
            }else{
              Get.changeThemeMode(ThemeMode.dark);
            }
          }, icon: const Icon(Icons.dark_mode_outlined)),
          IconButton(onPressed: (){}, icon:const Icon(Icons.language)),
        ],
        title:const Center(child: Text('BMI Calculator')),
      ),
      body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                            controller.gestureChangeMale();
                        },
                        child: Container(

                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(10.0),
                            color: controller.male?Colors.blue : Colors.grey[350],
                          ),

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.male,
                                size: 110.0,),
                              Text('MALE',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                ),)
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),

                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                            controller.gestureChangeFemale();
                        },
                        child: Container(

                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(10.0),
                            color: controller.male? Colors.grey[350] :Colors.blue,
                          ),

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.female,
                                size: 110.0,),

                              Text('FEMALE',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                ),)
                            ],
                          ),
                        ),
                      ),
                    )

                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0
                ),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey[350],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('HEIGHT',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('${controller.height.round()}',
                            style: const TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          const Text('CM',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),)

                        ],
                      ),
                      Slider(
                          value: controller.height,
                          max: 220.0,
                          min: 80.0,
                          onChanged:(value){
                              controller.changeSlider(value);

                          })



                    ],
                  ),

                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey[350],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('AGE',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),),
                            Text('${controller.age}',
                              style: const TextStyle(
                                fontSize: 40.0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(onPressed: (){
                                  controller.fabAgeDecrease();

                                },
                                  heroTag: 'ag--',
                                  mini: true,
                                  child: const Icon(Icons.remove),
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                FloatingActionButton(onPressed: (){
                                  controller.fabAgeIncrease();
                                },
                                  heroTag: 'age++',
                                  mini: true,
                                  child: const Icon(Icons.add),
                                ),
                              ],
                            )

                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey[350],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('WEIGHT',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),),
                            Text('${controller.weight}',
                              style: const TextStyle(
                                fontSize: 40.0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(onPressed: (){
                                  controller.fabWeightDecrease();
                                },
                                  heroTag: "weight--",
                                  mini: true,
                                  child: const Icon(Icons.remove),
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                FloatingActionButton(onPressed: (){
                                  controller.fabWeightIncrease();
                                },
                                  heroTag: 'weight++',
                                  mini: true,
                                  child:const Icon(Icons.add),
                                ),
                              ],
                            )

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.blue,
              width: double.infinity,
              height: 50.0,
              child: MaterialButton(
                onPressed: (){
                  controller.bmiResult();
                  controller.calcBmi();
                  Get.to(()=>const BmiResult()
                  );
                }
                ,child: const Text('Calculate',
                style: TextStyle(
                  color: Colors.white,
                ),),),
            )
          ],
        ),
      )
    );
  }
}

