import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarsScreen extends StatelessWidget {

    static const name = 'Snackbar_screen';

  const SnackbarsScreen({super.key});

  void showCustomSnackBar(BuildContext context) {

      ScaffoldMessenger.of(context).clearSnackBars();

      final snackbar = SnackBar(
        content: const Text('Hola Mundo'),
        action: SnackBarAction(label: 'Ok!', onPressed: (){}),
        duration: const Duration(seconds: 2),
      );

      ScaffoldMessenger.of(context).showSnackBar(snackbar);
        
  }


    void openDialog(BuildContext context) {
      showDialog(
        barrierDismissible: false,
        context: context, 
        builder: (context) => AlertDialog(
          title: const Text('¿Estás seguro?'),
          content: const Text('Fugiat ullamco consequat anim ipsum commodo eiusmod et deserunt. Cupidatat sunt cillum laboris consectetur esse cupidatat proident culpa pariatur adipisicing dolor nulla incididunt occaecat. Cillum non ex ipsum veniam. Sit consequat occaecat ad nulla magna consequat reprehenderit ipsum tempor enim. Reprehenderit ea occaecat minim tempor amet id et ut ad incididunt enim amet minim irure. Anim sunt magna aliqua anim laboris anim dolore enim adipisicing est irure aliquip sint sint.'),
          actions: [
            TextButton(onPressed:() => context.pop(), child:const Text('Cancelar')),
            FilledButton(onPressed:()=> context.pop(), child:const Text('Aceptar')),
          ],
        ),
      );
    }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBars y Diálogos'),
      ),

      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
          FilledButton.tonal(
          onPressed: () {
            showAboutDialog(
              context: context,
              children: [
                const Text('Irure qui qui elit quis nostrud officia excepteur est non sint quis. Occaecat magna nisi veniam officia esse nisi velit commodo veniam velit labore fugiat velit id. Do amet veniam deserunt enim veniam do quis id. Incididunt cillum commodo ullamco reprehenderit sunt commodo irure exercitation ipsum ipsum laboris mollit incididunt. Pariatur velit nulla enim in in culpa amet quis aute fugiat aliqua. Excepteur et fugiat duis deserunt sit ipsum veniam magna proident enim. Cillum quis quis qui esse deserunt nisi exercitation.'),
              ]);
          }, child: const Text('Licencias usadas')),
          
          FilledButton.tonal(
          onPressed: () =>openDialog(context), 
          child: const Text('Mostrar diálogo'))
          ],
          
        ),
      ) ,


      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar snackbar'),
        icon: const Icon( Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackBar(context),
        )
    );
  }
}