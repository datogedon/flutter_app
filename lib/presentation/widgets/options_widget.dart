import 'package:flutter/material.dart';

class OptionsObject{
  final String name;
  final String value;
  const OptionsObject({required this.name, required this.value});

  @override
  String toString() => "{name: $name, value: $value}";
}

class OptionsWidget extends StatelessWidget {
  final ValueChanged<OptionsObject> onChanged;
  const OptionsWidget({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    List<OptionsObject> options = [
      OptionsObject(name: "Opcion 1", value: "opcion1"),
      OptionsObject(name: "Opcion 2", value: "opcion2"),
      OptionsObject(name: "Opcion 3", value: "opcion3"),
      OptionsObject(name: "Opcion 4", value: "opcion4"),
      OptionsObject(name: "Opcion 5", value: "opcion5"),
    ];
    return Card(
      child: Column(
        children: options.map((option) =>
            ListTile(
              title: Text(option.name),
              subtitle: Text(option.value),
              onTap: (){
                onChanged(option);
              },
            )
        ).toList(),
      ),
    );
  }
}
