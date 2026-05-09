import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  Contact({super.key});

  final List<ContactModel> contacts = [
    ContactModel("Ahmed Emam", "010611122222"),
    ContactModel("Aya Emam", "011611122222"),
    ContactModel("Eman Emam", "012711122222"),
    ContactModel("Mahmoud Emam", "013611122222"),
    ContactModel("Eman Emam", "012711122222"),
    ContactModel("Mahmoud Emam", "013611122222"),
    ContactModel("Ali Emam", "015611122222"),
    ContactModel("Ibrahim Emam", "019611122222"),
    ContactModel("Ahmed Emam", "010611122222"),
    ContactModel("Aya Emam", "011611122222"),
    ContactModel("Eman Emam", "012711122222"),
    ContactModel("Mahmoud Emam", "013611122222"),
    ContactModel("Ali Emam", "015611122222"),
    ContactModel("Ibrahim Emam", "019611122222"),
    ContactModel("Ahmed Emam", "010611122222"),
    ContactModel("Aya Emam", "011611122222"),
    ContactModel("Eman Emam", "012711122222"),
    ContactModel("Mahmoud Emam", "013611122222"),
    ContactModel("Ali Emam", "015611122222"),
    ContactModel("Ibrahim Emam", "019611122222"),
    ContactModel("Ahmed Emam", "010611122222"),
    ContactModel("Aya Emam", "011611122222"),
    ContactModel("Eman Emam", "012711122222"),
    ContactModel("Mahmoud Emam", "013611122222"),
    ContactModel("Ali Emam", "015611122222"),
    ContactModel("Ibrahim Emam", "019611122222"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Contacts'),
      ),

      body: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),

        itemBuilder: (context, index) {
          return ContactItem(contact: contacts[index]);
        },

        separatorBuilder: (context, index) {
          return SizedBox(height: 12);
        },

        itemCount: contacts.length,
      ),
    );
  }
}

class ContactItem extends StatelessWidget {
  final ContactModel contact;

  const ContactItem({
    super.key,
    required this.contact,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.blue,
          radius: 30,
          child: Icon(Icons.person, color: Colors.white, size: 32),
        ),

        SizedBox(width: 12),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              contact.name,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),

            Text(
              contact.phone,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),

        Spacer(),

        Icon(Icons.arrow_forward_ios, color: Colors.grey),
      ],
    );
  }
}

class ContactModel {
  final String name;
  final String phone;

  ContactModel(this.name, this.phone);
}