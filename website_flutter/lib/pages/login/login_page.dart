import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isRead = true;
  final key = GlobalKey<FormState>();
  TextEditingController _userController = TextEditingController();
  TextEditingController _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Container(
          width: 500,
          height: 400,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32), color: Colors.white),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Padding(padding: EdgeInsets.symmetric()),
              Text(
                "ĐĂNG NHẬP",
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                    fontSize: 32),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              Form(
                key: key,
                child: Container(
                  width: 400,
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (value) =>
                            value.trim().isEmpty ? "Empty" : null,
                        controller: _userController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person_pin_outlined),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(32)),
                          hintText: "Nhập tên tài khoản hoặc email",
                          labelText: 'Tài khoản',
                        ),
                      ),
                      Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                      TextFormField(
                        validator: (value) => value.isEmpty ? "Empty" : null,
                        obscureText: isRead == true ? true : false,
                        controller: _passController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: IconButton(
                              onPressed: () {
                                isRead = !isRead;
                                setState(() {});
                              },
                              icon: isRead == false
                                  ? Icon(Icons.remove_red_eye)
                                  : Icon(Icons.visibility_off)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(32)),
                          hintText: "Nhập mật khẩu của bạn",
                          labelText: 'Mật khẩu',
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Padding(padding: EdgeInsets.symmetric(vertical: 10)),

              Container(
                width: 400,
                child: RaisedButton(
                  elevation: 10.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                  highlightElevation: 20.0,
                  // hoverColor: Colors.white,
                  padding: EdgeInsets.all(0.0),
                  child: Container(
                    child: Text(
                      "Đăng nhập",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    padding: EdgeInsets.all(20.0),
                  ),
                  color: Colors.blue,
                  //padding: EdgeInsets.all(0.0),

                  disabledTextColor: Colors.black,
                  disabledColor: Colors.red,
                  onPressed: () {
                    if (key.currentState.validate()) {}
                  },
                ),
              ),
              // Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              // TextButton(
              //   child: Text(
              //     'Quên mật khẩu !!!',
              //     style: TextStyle(color: Colors.blue, fontSize: 15),
              //   ),
              //   onPressed: () {},
              // )
            ],
          ),
        ),
      ),
    );
  }
}
