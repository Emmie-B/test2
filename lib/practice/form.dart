import 'package:flutter/material.dart';
import 'package:test/models/user.dart';

class MyForm extends StatelessWidget {
  const MyForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forms"),
      ),
      body: FormBody(),
    );
  }
}

class FormBody extends StatefulWidget {
  const FormBody({super.key});

  @override
  State<FormBody> createState() => _FormBodyState();
}

class _FormBodyState extends State<FormBody> {
  final _user = User();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Builder(builder: (context) {
        return Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: TextEditingController(),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter Something";
                      }
                      return null;
                    },
                    onSaved: (val) => setState(() {
                      _user.firstname = val!;
                    }),
                    // initialValue: _user.firstname,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.lock), labelText: "Name"),
                  ),
                  SwitchListTile(
                      title: Text("Subscribe"),
                      value: _user.newsletter,
                      onChanged: (bool val) => {
                            setState(() => {_user.newsletter = val, print(val)})
                            // ignore: avoid_print
                          }),
                        
                  CheckboxListTile(
                    title: Text('Cooking'),
                    value: _user.passions[User.PassionCooking],
                    onChanged: ((val) => {
                          setState(() => {
                                _user.passions[User.PassionCooking] = val!,
                                print(val)
                              })
                        }),
                  ),
                  CheckboxListTile(
                    title: Text('Fightng'),
                    value: _user.passions[User.PassionFighting],
                    onChanged: ((val) => {
                          setState(() => {
                                _user.passions[User.PassionFighting] = val!,
                                print(val)
                              })
                        }),
                  ),
                  CheckboxListTile(
                    title: Text('Singing'),
                    value: _user.passions[User.PassionSinging],
                    onChanged: ((val) => {
                          setState(() => {
                                _user.passions[User.PassionSinging] = val!,
                                print(val)
                              })
                        }),
                  ),
                  ElevatedButton(
                      onPressed: () => {
                            if (_formKey.currentState!.validate())
                              {
                                _formKey.currentState!.save(),
                                _user.save(),
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text("validated")))
                              }
                          },
                      child: Text("Submit"))
                ],
              ),
            ),
          ],
        );
      }),
    );
  }
}
