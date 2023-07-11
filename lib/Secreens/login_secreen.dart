import 'package:flutter/material.dart';

class LoginSecreen extends StatefulWidget {
  const LoginSecreen({Key? key}) : super(key: key);

  @override
  State<LoginSecreen> createState() => _LoginSecreenState();
}

class _LoginSecreenState extends State<LoginSecreen> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  bool obsecureText = true;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  validator() {
    if (_formKey.currentState != null && _formKey.currentState!.validate()) {
      print("Validated");
      userNameController.text = "";
      passwordController.text = "";
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          'تم تسجيل الدخول بنجاح',
          textDirection: TextDirection.rtl,
        ),
        backgroundColor: Colors.green,
      ));
      Navigator.pushNamed(context, 'home');
    } else {
      print("Not Validated");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 75),
                    child: Image(
                      image: AssetImage('assets/bl.jpg'),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Center(
                    child: Container(
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'بلدية رفح',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 24,
                                color: Colors.white),
                          ),
                          Text(
                            'مرحبا بكم في',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 1.0),
                        child: Text(
                          'إسم المستخدم',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Theme(
                        data: Theme.of(context).copyWith(
                          colorScheme: Theme.of(context).colorScheme.copyWith(
                                primary: Colors.green,
                              ), // Set your desired color here
                        ),
                        child: TextFormField(
                          textAlign: TextAlign.right,
                          controller: userNameController,
                          // onFieldSubmitted: (value) {
                          //   print(value);
                          // },
                          // onSaved: (value){
                          //
                          // },
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 1,
                                color: Colors.black26,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.green,
                                width: 1.5,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            hintText: 'إسم المستخدم',
                            suffixIcon: Icon(
                              Icons.person,
                            ),
                          ),
                          validator: (String? value) {
                            if (value == null || value.trim().length == 0) {
                              return "هذا الحقل مطلوب";
                            } else if (value.length < 3) {
                              return "يجب أن يكون الاسم أكبر من أو يساوي 3 أحرف";
                            } else
                              null;
                          },
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 1.0),
                        child: Text(
                          'كلمة المرور',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Theme(
                        data: Theme.of(context).copyWith(
                          colorScheme: Theme.of(context).colorScheme.copyWith(
                                primary: Colors.green,
                              ), // Set your desired color here
                        ),
                        child: TextFormField(
                          textAlign: TextAlign.right,
                          controller: passwordController,
                          obscureText: obsecureText,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 1,
                                color: Colors.black26,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.green,
                                width: 1.5,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            hintText: 'كلمة المرور',
                            suffixIcon: Icon(
                              Icons.lock,
                            ),
                            prefixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  obsecureText = !obsecureText;
                                });
                              },
                              icon: obsecureText
                                  ? Icon(Icons.visibility)
                                  : Icon(Icons.visibility_off),
                            ),
                          ),
                          validator: (String? value) {
                            if (value == null || value.trim().length == 0) {
                              return "هذا الحقل مطلوب";
                            } else if (value.length <= 6) {
                              return "يجب أن تكون كلمة المرور أكبر من 6 أحرف";
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'هل نسيت كلمة المرور ؟',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    height: 45,
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 15, bottom: 25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green,
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        validator();
                      },
                      child: Text(
                        'تسجيل الدخول',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'register');
                        },
                        child: Text(
                          'إنشاء حساب',
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Text(
                        'ليس لديك حساب ؟',
                        style: TextStyle(
                          color: Colors.black26,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
