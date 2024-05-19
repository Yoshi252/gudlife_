import 'package:flutter/material.dart';

class InputFields extends StatefulWidget {
  const InputFields({super.key});

  @override
  State<InputFields> createState() => _InputFieldsState();
}

class _InputFieldsState extends State<InputFields> {

  var _enteredEmail = '';
  var _enteredPassword = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 300,
          child: TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter Email';
              }
              return null;
            },
            decoration: InputDecoration(
              label: const Text('Email'),
              hintText: 'Enter Email',
              hintStyle: const TextStyle(
                color: Color.fromARGB(255, 165, 165, 165),
              ),
              border: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color(0xFFE9EC19), // Default border color
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    color: Color(0xFFE9EC19), width: 2 // Default border color
                    ),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    color: Color.fromARGB(255, 200, 218, 233),
                    width: 2 // Default border color
                    ),
                borderRadius: BorderRadius.circular(10),
              ),
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
              ),
            ),
            keyboardType: TextInputType.emailAddress,
            autocorrect: false,
            textCapitalization: TextCapitalization.none,
            style: const TextStyle(
              color: Colors.white,
              height: 1,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none,
            ),
            onSaved: (value){
              _enteredEmail = value!;
            },

          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          width: 300,
          child: TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter Email';
              }
              return null;
            },
            decoration: InputDecoration(
              label: const Text('Password'),
              hintText: 'Enter Password',
              hintStyle: const TextStyle(
                color: Color.fromARGB(255, 165, 165, 165),
              ),
              border: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color(0xFFE9EC19), // Default border color
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    color: Color(0xFFE9EC19), width: 2 // Default border color
                    ),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    color: Color.fromARGB(255, 200, 218, 233),
                    width: 2 // Default border color
                    ),
                borderRadius: BorderRadius.circular(10),
              ),
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
              ),
            ),
            keyboardType: TextInputType.emailAddress,
            obscureText: true,
            style: const TextStyle(
              color: Colors.white,
              height: 1,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none,
            ),
            onSaved: (value) {
              _enteredPassword = value!;
            },
          ),
        ),
      ],
    );
  }
}
