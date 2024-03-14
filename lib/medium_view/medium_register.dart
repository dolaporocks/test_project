import 'package:flutter/material.dart';
import 'package:test_project/components/button.dart';
import 'package:test_project/components/mobile_drawer.dart';
import 'package:test_project/components/text_field.dart';

class MediumRegister extends StatefulWidget {
  const MediumRegister({super.key});

  @override
  State<MediumRegister> createState() => _MediumRegisterState();
}

class _MediumRegisterState extends State<MediumRegister> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _streetController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _countryController = TextEditingController();
  final TextEditingController _postalCodeController = TextEditingController();
  final TextEditingController _phonenumController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _cpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
  final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[50],
        title: const Text("REGISTER HERE",
        style: TextStyle(
          color: Colors.brown,
          fontWeight: FontWeight.bold
        ),
        ),
      ),
      drawer: const MobileDrawer(),

      body: SingleChildScrollView(
      child: SizedBox(
        height: height,
        width: width,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                height: height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/hyc4.JPG'))
                ),
                child: Center(
                  child: Text('Her Yes Club'),
                ),
              )
              ),
              Expanded(
                child: Container(
                height: height,
                color: Colors.brown[50],
                child: SafeArea(
                  child: SingleChildScrollView(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  const SizedBox(height: 10),
                  MyTextField(
                    controller: _firstNameController,
                    hintText: 'FirstName',
                    obscureText: false,
                  ),

                  const SizedBox(height: 10),
                  MyTextField(
                    controller: _lastNameController,
                    hintText: 'LastName',
                    obscureText: false,
                  ),

                  const SizedBox(height: 10),
                  MyTextField(
                    controller: _emailController,
                    hintText: 'EmailAddress',
                    obscureText: false,
                  ),

                  const SizedBox(height: 10,
                  width: 10,),
                  MyTextField(
                    controller: _streetController,
                    hintText: 'Street',
                    obscureText: false,
                  ),

                  const SizedBox(height: 10,
                    width: 10,),
                    MyTextField(
                      controller: _countryController,
                      hintText: 'Country',
                      obscureText: false,
                    ),

                    const SizedBox(height: 10,
                    width: 10,),
                    MyTextField(
                      controller: _cityController,
                      hintText: 'City',
                      obscureText: false,
                    ),

                    const SizedBox(height: 10,
                  width: 10,),
                  MyTextField(
                    controller: _postalCodeController,
                    hintText: 'Postal Code',
                    obscureText: false,
                  ),

                  const SizedBox(height: 10),
                  MyTextField(
                    controller: _phonenumController,
                    hintText: 'Phone Number',
                    obscureText: false,
                  ),

                  SizedBox(height: 10),
                  MyTextField(
                    controller: _passwordController,
                    hintText: 'Password',
                    obscureText: true,
                  ),

                  SizedBox(height: 10),
                  MyTextField(
                    controller: _cpasswordController,
                    hintText: 'Confirm Password',
                    obscureText: true,
                  ),

                  const SizedBox(height: 25),
                  MyButton(
                    onTap: (){

                    }
                  )
              ]
              ),
                  ),
                )
                )
              )
          ],
        ),
      ),
    ),
    );
  }
}