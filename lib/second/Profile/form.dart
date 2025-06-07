import 'package:flutter/material.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({Key? key}) : super(key: key);

  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  String? _selectedTitle = 'Dr'; // Default value for the dropdown

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min, // Prevent overflow
          children: [
            // Title Dropdown (Dr, St, Pr, etc)
            Row(
              children: [
                const Icon(Icons.emoji_emotions_outlined, color: Colors.teal),
                const SizedBox(width: 8),
                SizedBox(
                  width: 40, // Fixed width for the dropdown
                  child: DropdownButtonFormField<String>(
                    value: _selectedTitle,
                    decoration: const InputDecoration(
                        isDense: true, // Prevents height overflow
                        contentPadding: EdgeInsets.symmetric(vertical: 8),
                        border: UnderlineInputBorder()),
                    items: ['Dr', 'St', 'Pr']
                        .map((title) => DropdownMenuItem(
                              value: title,
                              child: Text(title),
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        _selectedTitle = value;
                      });
                    },
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: TextFormField(
                    controller: _nameController,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                      fontFamily: 'Roboto',
                    ),
                    decoration: const InputDecoration(
                      hintText: "Name",
                      border: UnderlineInputBorder(),
                      isDense: true, // Makes it compact
                      contentPadding: EdgeInsets.symmetric(vertical: 8),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),

            // Email Field
            Row(
              children: [
                const Icon(Icons.email_outlined, color: Colors.teal),
                const SizedBox(width: 8),
                Expanded(
                  child: TextFormField(
                    controller: _emailController,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                      fontFamily: 'Roboto',
                    ),
                    decoration: const InputDecoration(
                      hintText: "Email",
                      border: UnderlineInputBorder(),
                      isDense: true,
                      contentPadding: EdgeInsets.symmetric(vertical: 8),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                          .hasMatch(value)) {
                        return 'Enter a valid email';
                      }
                      return null;
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),

            // Phone Number Field
            Row(
              children: [
                const Icon(Icons.phone_outlined, color: Colors.teal),
                const SizedBox(width: 8),
                Expanded(
                  child: TextFormField(
                    controller: _phoneController,
                    keyboardType: TextInputType.phone,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                      fontFamily: 'Roboto',
                    ),
                    decoration: const InputDecoration(
                      hintText: "Phone Number",
                      border: UnderlineInputBorder(),
                      isDense: true,
                      contentPadding: EdgeInsets.symmetric(vertical: 8),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your phone number';
                      } else if (!RegExp(r'^\d{10}$').hasMatch(value)) {
                        return 'Enter a valid 10-digit phone number';
                      }
                      return null;
                    },
                  ),
                ),
              ],
            ),

            // Submit Button
          ],
        ),
      ),
    );
  }
}
