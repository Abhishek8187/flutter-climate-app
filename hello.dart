import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_text.dart';
import '../widgets/custom_textfield.dart';

class JoinRoomScreen extends StatefulWidget {
  static String routeName='/join-room';
  const JoinRoomScreen({Key? key}) : super(key: key);

  @override
  State<JoinRoomScreen> createState() => _JoinRoomScreenState();
}

class _JoinRoomScreenState extends State<JoinRoomScreen> {
  final TextEditingController _controller1=TextEditingController();
  final TextEditingController _controller2=TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller1.dispose();
    _controller2.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
        body:Container(
          margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(shadow:[Shadow(blurRadius: 40,color: Colors.blue)], text: "Join Room", fontsize: 70),
              SizedBox(height: size.height*0.08,),
              CustomTextField(controller:_controller1 , hint: 'Enter your nickname',),
              SizedBox(height: size.height*0.02,),
              CustomTextField(controller:_controller2 , hint: 'Game ID',),
              SizedBox(height: size.height*0.045,),
              CustomButton(onTap: (){}, text: "Create")

            ],
          ),
        )

    );
  }
}
