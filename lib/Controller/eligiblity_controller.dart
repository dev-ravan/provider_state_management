import 'package:flutter/material.dart';

class EligiblityScreenProvider extends ChangeNotifier{
  String _eligiblityMessage = "";
  final  _ageController = TextEditingController();
  bool? _isEligible;

  void checkEligiblity(int age){
    if(age >= 18) {
      eligibleForLicense();
    } else {
      notEligibleForLicense();
    }
  }

  void eligibleForLicense(){
    _eligiblityMessage = "You are eligible to apply for Driving License";
    _isEligible = true;

    //Call this whenever there is some change in any field of change notifier.
    notifyListeners();
  }


  void notEligibleForLicense(){
    _eligiblityMessage = "You are not eligible to apply for Driving License";
    _isEligible = false;

    //Call this whenever there is some change in any field of change notifier.
    notifyListeners();
  }

  //Getter for Eligiblity message
  String get eligiblityMessage => _eligiblityMessage;

  //Getter for Eligiblity flag
  bool? get isEligible => _isEligible;

  // Getter for ageController

  TextEditingController get ageController=> _ageController;
}

