import 'package:fluter_components/widgets/custom_input_field.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValue = {
      'first_name': 'Sebastian',
      'last_name': 'Uyaguari',
      'email': 'sebastianuyaguari@gmail.com',
      'password': 'hola1234',
      'role': 'Admin'
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs y Forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  const Text(
                    'TextField Normal',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  TextFormField(
                    autofocus: false,
                    initialValue: 'Hola Mundo',
                    textCapitalization: TextCapitalization.words,
                    onChanged: (value) => {},
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'TextField Personalizado',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomInputField(
                    labelText: "Nombre",
                    helperText: "Nombre del usuario",
                    formProperty: 'first_name',
                    formValues: formValue,
                  ),
                  CustomInputField(
                    labelText: "Apellido",
                    helperText: "Apellido del usuario",
                    formProperty: 'last_name',
                    formValues: formValue,
                  ),
                  CustomInputField(
                    labelText: "Email",
                    helperText: "Correo del usuario",
                    keyboardType: TextInputType.emailAddress,
                    formProperty: 'email',
                    formValues: formValue,
                  ),
                  CustomInputField(
                    labelText: "Contraseña",
                    helperText: "Contraseña del usuario",
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    formProperty: 'password',
                    formValues: formValue,
                  ),
                  DropdownButtonFormField(
                    items: const [
                      DropdownMenuItem(
                        value: 'Admin',
                        child: Text('Admin'),
                      ),
                      DropdownMenuItem(
                        value: 'User',
                        child: Text('User'),
                      ),
                      DropdownMenuItem(
                        value: 'Esclavo',
                        child: Text('Esclavo'),
                      ),
                      DropdownMenuItem(
                        value: 'Papaya',
                        child: Text('Papaya'),
                      )
                    ],
                    onChanged: (value) {
                      formValue['role'] = value ?? 'Admin';
                    },
                  ),
                  ElevatedButton(
                    child: const SizedBox(
                      width: double.infinity,
                      child: Center(
                        child: Text('Tia paola'),
                      ),
                    ),
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());

                      if (!myFormKey.currentState!.validate()) {
                        print('Formulario No valido');
                        return;
                      }
                    },
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
