import 'package:flutter/material.dart';

class SelectList extends StatefulWidget{
  final List<String> items;
  SelectList({super.key, required this.items});

    @override
  State<SelectList> createState() => _SelectListState();
}

class _SelectListState extends State<SelectList> {

  final List<String> selectedItems = [];

  void _changeItem(String itemval, bool isSelected){
    setState((){
      if(isSelected){
        selectedItems.add(itemval);
      }else{
        selectedItems.remove(itemval);
      }
    });
  }

  void _cancel(){
    Navigator.pop(context);
  }

  void _submit(){
    Navigator.pop(context, selectedItems);
  }
  
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Select your Certifications'),
      content: SingleChildScrollView(
        child: ListBody(
          children: widget.items
            .map((item) => CheckboxListTile(
              value: selectedItems.contains(item),
              title: Text(item),
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (isChecked) => _changeItem(item, isChecked!),
            )).toList(),
        )
      ),
      actions: [
        TextButton(
          onPressed: _cancel,
          child: const Text('Cancel')),

        TextButton(
        onPressed: _submit,
        child: const Text('Submit')),
      ],
    );
  }
}
