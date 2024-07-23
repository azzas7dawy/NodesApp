import 'package:flutter/material.dart';
import 'package:notessapp/widgets/Custombuttom.dart';
import 'package:notessapp/widgets/cutomTextfield.dart';

class NotesModelSheet extends StatelessWidget {
  const NotesModelSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: AddNoteForm(),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

final GlobalKey<FormState> formKey = GlobalKey();
AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

String? title, subtitle;

class _AddNoteFormState extends State<AddNoteForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          CustomtextFiled(
            onSeved: (value) {
              title = value;
            },
            hint: "Title",
          ),
          const SizedBox(
            height: 13,
          ),
          CustomtextFiled(
            onSeved: (value) {
              subtitle = value;
            },
            hint: "SubTitle",
            maxLines: 5,
          ),
          const SizedBox(
            height: 50,
          ),
          CustomTextButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },
          )
        ],
      ),
    );
  }
}
