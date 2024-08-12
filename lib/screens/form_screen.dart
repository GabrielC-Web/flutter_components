import 'package:flutter/material.dart';
import 'package:flutter_components_1/widgets/Custom_form_field.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Anakin',
      'last_name': 'Skywalker',
      'email': 'choosen_one@mail.com',
      'password': 'IlovePadme123',
      'role': 'Master'
    };

    return Scaffold(
      appBar: AppBar(title: const Text('Formulario')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomFormField(
                  hintText: 'Hola',
                  labelText: 'Nombre',
                  helperText: 'aver',
                  icon: Icons.grade_outlined,
                  formProperty: 'first_name',
                  formValues: formValues,
                ),
                const SizedBox(
                  width: 30,
                  height: 30,
                ),
                CustomFormField(
                  hintText: 'Hola',
                  labelText: 'Apellido',
                  helperText: 'aver',
                  formProperty: 'last_name',
                  formValues: formValues,
                ),
                const SizedBox(
                  width: 30,
                  height: 30,
                ),
                CustomFormField(
                  hintText: 'Hola',
                  labelText: 'Email',
                  helperText: 'aver',
                  icon: Icons.email,
                  textInputType: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                const SizedBox(
                  width: 30,
                  height: 30,
                ),
                CustomFormField(
                  hintText: 'Hola',
                  labelText: 'Contraseña',
                  helperText: 'aver',
                  textInputType: TextInputType.emailAddress,
                  obscureText: true,
                  formProperty: 'password',
                  formValues: formValues,
                ),
                const SizedBox(
                  width: 30,
                  height: 30,
                ),
                DropdownButtonFormField<String>(
                    value: 'Master',
                    items: const [
                      DropdownMenuItem(value: 'Master', child: Text('Master')),
                      DropdownMenuItem(value: 'Jedi', child: Text('Jedi')),
                      DropdownMenuItem(
                          value: 'Padawan', child: Text('Padawan')),
                    ],
                    onChanged: (value) {
                      formValues['role'] = value ?? 'Master';
                    }),
                ElevatedButton(
                    onPressed: () {
                      // FocusScope.of(context).requestFocus(FocusNode());

                      if (!myFormKey.currentState!.validate()) {
                        return;
                      }
                      print(formValues);
                    },
                    child: const SizedBox(
                      width: double.infinity,
                      child: Center(child: Text('Guardar formulario')),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
