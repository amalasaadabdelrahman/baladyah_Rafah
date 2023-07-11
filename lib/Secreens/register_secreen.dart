import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final gonvermentController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool obsecureText = true;
  bool confirmObsecureText = true;
  validator() {
    if (_formKey.currentState != null && _formKey.currentState!.validate()) {
      print("Validated");
      firstNameController.text = "";
      lastNameController.text = "";
      passwordController.text = "";
      confirmPasswordController.text = "";
      gonvermentController.text = "";
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          'تم إنشاء حساب بنجاح',
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
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "إنشاء حساب",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pushNamed(context, 'login');
          },
        ),
      ),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 1.0),
                        child: Text(
                          'الإسم الأول',
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
                          controller: firstNameController,
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
                            hintText: 'الإسم الاول',
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
                          'الإسم الأخير',
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
                          controller: lastNameController,
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
                            hintText: 'الإسم الأخير',
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
                          'الدائرة',
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
                          controller: gonvermentController,
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
                            hintText: 'الدائرة',
                            suffixIcon: Icon(
                              Icons.circle,
                            ),
                          ),
                          validator: (String? value) {
                            if (value == null || value.trim().length == 0) {
                              return "هذا الحقل مطلوب";
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
                          keyboardType: TextInputType.visiblePassword,
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
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 1.0),
                        child: Text(
                          'تأكيد كلمة المرور',
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
                          controller: confirmPasswordController,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: confirmObsecureText,
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
                                  confirmObsecureText = !confirmObsecureText;
                                });
                              },
                              icon: confirmObsecureText
                                  ? Icon(Icons.visibility)
                                  : Icon(Icons.visibility_off),
                            ),
                          ),
                          validator: (String? value) {
                            if (value == null || value.trim().length == 0) {
                              return "هذا الحقل مطلوب";
                            }
                            if (value != passwordController.text) {
                              return "كلمة المرور غير متطابقة";
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 45,
                    width: double.infinity,
                    margin: EdgeInsets.only(
                      top: 50,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green,
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        validator();
                      },
                      child: Text(
                        'إنشاء حساب',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
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
