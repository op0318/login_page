import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myheight=MediaQuery.of(context).size.height;
    var mywidth=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.only(
            top: 40,left: 30,right: 30,bottom: 50
          ),
          height: double.infinity,
          width: mywidth,
          child: SingleChildScrollView(
            child: Column(
              children: [Image.asset('assets/images/livelocation.jpg',
              height: 150,width: 150,),
              Text('Let\'s sign you in.',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Text('Signin with you data that you have',style: TextStyle(color: Colors.grey)),
              SizedBox(height: 3,),
              Text('entered during you resignation',style: TextStyle(color: Colors.grey),),
              SizedBox(height: 40,),
              Container(width: double.infinity,
                  child: TextField(decoration: InputDecoration(label: Text('Email',
                  style: TextStyle(color: Colors.grey),)),)),
                SizedBox(height: 10,),
                Container(width: double.infinity,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(suffixIcon: Icon(Icons.remove_red_eye_outlined),
                        label: Text('Password',
                      style: TextStyle(

                          color: Colors.grey),)),)),
              Row(mainAxisAlignment: MainAxisAlignment.end,crossAxisAlignment: CrossAxisAlignment.end,
                children: [TextButton(
                    onPressed: (){}, child: Text('Forgot password?',style: TextStyle(color: Colors.deepPurple),))],),
              SizedBox(height: 20,),
              ElevatedButton(

                style:
                ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo.shade900,
                  shape:RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))) ,


                    minimumSize: Size(350, 50)),
                  onPressed: (){}, child: Text('Sign in')),
                SizedBox(height: 20,),
                Container(height: 50,width: 350,decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Colors.white,border: Border.all(color: Colors.deepPurple)),
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    backgroundColor: Colors.white,
                      minimumSize: Size(350, 50)),
                    onPressed: (){}, icon: Image.asset('assets/images/google.jpg'),
                    label: Text('Sign in with google',style: TextStyle(
                      fontSize: 16,
                        color: Colors.black),)),),
                SizedBox(height: 18,),
                Row( mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  Text('Don\'t have an account',style: TextStyle(color: Colors.grey)),
                    TextButton(onPressed: (){}, child: Text('Register',
                        style: TextStyle(color: Colors.indigo.shade900)),)
                ],)

              ],
            ),
          ),
        ),
      )

    );
  }
}
