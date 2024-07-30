import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notessapp/Cubits/cubit/add_note_edit_cubit.dart';
import 'package:notessapp/Cubits/cubit/notes_cubit_cubit.dart';
import 'package:notessapp/Models/cardmodel.dart';
import 'package:notessapp/views/colors_listview.dart';
import 'package:notessapp/widgets/Custombuttom.dart';
import 'package:notessapp/widgets/coloritem.dart';
import 'package:notessapp/widgets/cutomTextfield.dart';

class NotesModelSheet extends StatefulWidget {
  const NotesModelSheet({super.key});

  @override
  State<NotesModelSheet> createState() => _NotesModelSheetState();
}

class _NotesModelSheetState extends State<NotesModelSheet> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteEditCubit(),
      child: BlocConsumer<AddNoteEditCubit, AddNoteEditState>(
        listener: (context, state) {
          if (state is AddNoteEditFlauiler) {}

          // ignore: unnecessary_type_check
          if (state is AddNoteEditState) {
            BlocProvider.of<NotesCubitCubit>(context).fetchNotes();
            Navigator.pop(context);
          }
        },
        // ignore: unused_label
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteEditLodeding ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: const SingleChildScrollView(
                child: AddNoteForm(),
              ),
            ),
          );
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
            height: 10,
          ),
  const ColorsListView(),

          const SizedBox(
            height: 50,
          ),
          BlocBuilder<AddNoteEditCubit, AddNoteEditState>(
            builder: (context, state) {
              return CustomTextButton(
                isLoading: state is AddNoteEditLodeding ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    
                    // ignore: prefer_typing_uninitialized_variables
                    // String? content;
                    var currentDate = DateTime.now();
                    var formattedCurrentDate =
                        DateFormat.yMd().format(currentDate);
                    var cardModel = CardModel(
                      title: title!,
                      content: '',
                      date: formattedCurrentDate,
                      color: Colors.blue.value,
                    );

                    BlocProvider.of<AddNoteEditCubit>(context)
                        .addNote(cardModel);
                      
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                  }
                    
                },
                
              );
            },
          )
        ],
      ),
    );
  }
}

