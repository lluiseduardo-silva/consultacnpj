import 'package:consultacnpj/bloc/conulstav2/search_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

void main() {
  runApp(const BlocSetup());
}

class BlocSetup extends StatelessWidget {
  const BlocSetup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => SearchBloc())],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
        home: MyAppScaffold());
  }
}
class MyAppScaffold extends StatelessWidget {
  const MyAppScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    InputMask mask = InputMask(formatter: MaskTextInputFormatter(mask: "##.###.###/####-##"), hint: '00.000.000/0000-00', textInputType: TextInputType.number);
    return Scaffold(
      appBar: AppBar(title:const  Text('Consulta CNPJ')),
      backgroundColor: Colors.grey,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.search),
        onPressed: () {
          showDialog(context: context, builder: (context)=>AlertDialog(
            title:const  Text("Digite o CNPJ para realizar a busca"),
            content: TextFormField(
              controller: mask.textController,
              inputFormatters: [mask.formatter],
              autocorrect: false,
              keyboardType: mask.textInputType,
              autovalidateMode: AutovalidateMode.always,
              decoration: InputDecoration(
                hintText: mask.hint,
                hintStyle: const TextStyle(color: Colors.grey),
                fillColor: Colors.white,
                filled: true,
              ),
            ),
            actions: [
              TextButton(onPressed: (){
                Navigator.of(context).pop();
              }, child:const  Text("Cancelar")),
              TextButton(onPressed: (){
                // print(mask.textController.value.text);
                context.read<SearchBloc>().add(SearchEvent.search(mask.textController.text));
                Navigator.of(context).pop();
              }, child: const Text('Buscar')),
            ],
          ));

        },
      ),
      body: context.watch<SearchBloc>().state.when(
          initial: () => const Center(
            child:Text("Aperte o botão para começar"),
          ),
          loading: () =>const Center(
            child: CircularProgressIndicator(),
          ),
          loaded: (data) => GridView(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 16/3,
                crossAxisSpacing: 3,
                mainAxisSpacing: 5),
            children: data.entries.map((e) => infoTile(e.key, e.value)).toList(),
          )
      ),
    );
  }
}


Widget infoTile(String title, String? info){
  return ClipRRect(
    borderRadius: BorderRadius.circular(15),
    child: Container(
      color: Colors.blueGrey,
      child: ListTile(
        title: Text(title,style: const TextStyle(color: Colors.white)),
        subtitle: Text(info??"",style: const TextStyle(color: Colors.white),),
      ),
    ),
  );
}

class InputMask{
  final TextEditingController textController = TextEditingController();
  final MaskTextInputFormatter formatter;
  final FormFieldValidator<String>? validator;
  final String hint;
  final TextInputType textInputType;

  InputMask({
    required this.formatter,
    this.validator,
    required this.hint,
    required this.textInputType
  });
}
