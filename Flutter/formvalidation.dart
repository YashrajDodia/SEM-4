import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yashraj_4thsem/home.dart';
import 'package:yashraj_4thsem/page1.dart';

class FormValidation extends StatefulWidget {
  FormValidation({super.key});

  @override
  State<FormValidation> createState() => _FormValidationState();
}

class _FormValidationState extends State<FormValidation> {
  GlobalKey<FormState> _key = GlobalKey<FormState>();
  bool isHide = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Form Validation"),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _key,
            child: Column(
              children: [
                TextFormField(
                  decoration: (
                      InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                          label: Text("Enter Name")
                      )
                  ),
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return "Please Enter your name";
                    }else if(value.length < 5){
                      return "Username should contain more than 5 character";
                    }else{
                      return null;
                    }
                  },
                ),
                SizedBox(height: 10,),

                TextFormField(
                  obscureText: isHide,
                  decoration: (
                  InputDecoration(
                    suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          isHide = !isHide;
                        });
                    }, icon: Icon(isHide ?  Icons.visibility : Icons.visibility_off)),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    label: Text("Enter Password")
                  )
                  ),
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return "Please Enter password";
                    }else if(value.length < 5){
                      return "Password should contain more than 5 character";
                    }else{
                      return null;
                    }
                  },
                ),
                SizedBox(height: 10,),

                ElevatedButton(onPressed: () {
                  if(_key.currentState!.validate()){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home(),));
                  }
                }, child: Text("Sign in")),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Aleready Registered ?   " , style: TextStyle(color: Colors.grey , fontSize: 13),),
                    ElevatedButton(onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Page1(),));
                    }, child: Text("Register" , style: TextStyle(color: Colors.blue, fontSize: 15),))
                  ],
                )
              ],
            ),
        ),
      ),
    );
  }
}
