import 'package:flutter/material.dart';
import 'package:pro_connect/views/colors/app_colors.dart';
import 'package:pro_connect/views/models_ui/App_text_field.dart';
class PortfolioPage extends StatefulWidget {

   PortfolioPage({super.key});

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  final List villes = ['Cotonou','Abomey calavi', 'Abidjan','Bouaké',];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(foregroundColor: Colors.white,
        backgroundColor: AppColors.primaryColor,
        title: Text('Proconnect'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20,left: 10),
                child: Text('Créer  votre Portfolio' , style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text('Information personnelles',style: TextStyle(fontSize: 20),),
              ),
             SizedBox(height: 10,),
              ModelTextField(
                hintText:'Nom',
              ),
              ModelTextField(
                hintText:'Profession',
              ),
              ModelTextField(
                hintText:'Contact',
              ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: DropdownButtonFormField(
                   borderRadius: BorderRadius.circular(15),
                              hint: Text(' Sélectionnée votre ville'),
                   items: villes.map((ville) => DropdownMenuItem( value:ville ,child: Text(ville))).toList()
                   , onChanged:(value){
                 print("ville sélectionnée:$value");
                   }
               ),
             )

             /* Row(
                children: [
                  ModelTextField(labelText: Text('Nom'),),
                  ModelTextField(labelText: Text('prénom'),),
                ],
              ),
              ModelTextField(labelText: Text("Domaine d'activités"),),
              Row(
                children: [
              //    SelectableRegion(selectionControls: , child: Text('Pays'))
                //  SelectableRegion(selectionControls: selectionControls, child: Text('Ville'))
                ],
              ),
              ModelTextField(labelText: Text('Email'),
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}
