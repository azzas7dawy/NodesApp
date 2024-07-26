import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notessapp/Cubits/cubit/add_note_edit_cubit.dart';
import 'package:notessapp/widgets/Custombuttom.dart';
import 'package:notessapp/widgets/cutomTextfield.dart';

// ignore: must_be_immutable
class NotesModelSheet extends StatefulWidget {
  const NotesModelSheet({super.key});

  @override
  State<NotesModelSheet> createState() => _NotesModelSheetState();
}

class _NotesModelSheetState extends State<NotesModelSheet> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BlocConsumer<AddNoteEditCubit, AddNoteEditState>(
        listener: (context, state) {
          if (state is AddNoteEditFlauiler) {
            print('Falied ${state.errorMessage}');
          }
          // ignore: unnecessary_type_check
          if (state is AddNoteEditState) {
            Navigator.pop(context);
          }
        },
        // ignore: unused_label
        builder: (context, state) {
          return ModalProgressHUD(
              inAsyncCall: state is AddNoteEditLodeding ? true : false,
              child: const AddNoteForm());
        },
      ),
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
                setState(() {});
              }
            },
          )
        ],
      ),
    );
  }
}
