import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/Controller/eligiblity_controller.dart';

class EligiblityScreen extends StatelessWidget {
  

  const EligiblityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<EligiblityScreenProvider>(
      create: (context) => EligiblityScreenProvider(),
      child: Builder(
        builder: (context) {

          return Scaffold(
            body: Container(
              padding: const EdgeInsets.all(16),
              child: Form(
                child: Consumer<EligiblityScreenProvider>(
                  builder: (context, provider, child){
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              
                              //if isEligible is null then set orange color else if it is true then set green else red 
                              color: provider.isEligible == null ? Colors.orangeAccent : provider.isEligible! ? Colors.green : Colors.redAccent
                          ),
                          height: 50,
                          width: 50,
                        ),

                        const SizedBox(height: 16,),

                        TextFormField(
                          controller: provider.ageController,
                          decoration: const InputDecoration(
                            hintText: "Give your age",
                          ),
                        ),
                        const SizedBox(height: 16,),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            child: const Text("Check"),
                           
                            onPressed: (){
                              
                              //getting the text from TextField and converting it into int
                              final int age = int.parse(provider.ageController.text.trim());
                              
                              //Calling the method from provider.
                              provider.checkEligiblity(age);
                            },
                          ),
                        ),
                        const SizedBox(height: 16,),

                        Text(provider.eligiblityMessage)

                      ],
                    );
                  },
                )
              ),
            ),
          );
        }
      )
    );
  }
}