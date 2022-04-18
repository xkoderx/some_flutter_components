import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final maFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'nombre': 'Erick',
      'apellido': 'Deloera',
      'correo': 'erick@deloera.com',
      'contraseña': '123456',
      'rol': 'Admin',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: maFormKey,
            child: Column(
              children: [
                CustomInputField(
                  labelText: 'Nombre',
                  hintText: 'Nombre de usuario',
                  formProperty: 'nombre',
                  formValue: formValues,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                    labelText: 'Apellido',
                    hintText: 'Apellido de usuario',
                    formProperty: 'apellido',
                    formValue: formValues,
                    keyboardType: TextInputType.name),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  labelText: 'Correo',
                  hintText: 'Correo electronico',
                  formProperty: 'correo',
                  formValue: formValues,
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  labelText: 'Contraseña',
                  hintText: 'Password',
                  esContrasenia: true,
                  keyboardType: TextInputType.emailAddress,
                  formProperty: 'contraseña',
                  formValue: formValues,
                ),
                const SizedBox(
                  height: 30,
                ),
                DropdownButtonFormField<String>(items: const[
                  DropdownMenuItem(value: 'Admin', child: Text('Admin'))
                ], onChanged: (value) => formValues['rol'] = value ?? 'Admin'),
                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text('Guardar'),
                    ),
                  ),
                  onPressed: () {
                    FocusScope.of(context).requestFocus();
                    if (!maFormKey.currentState!.validate()) {
                      print('No valido');
                      return;
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
