class FormValidators{

  static String? ageValidator(String? value){
    if(value?.isEmpty ?? true){
      return "Age is required.";
    } return null;
  }

  static String? weightValidator(String? value){
    if(value?.isEmpty ?? true){
      return "Weight is required.";
    } return null;
  }

  static String? feetValidator(String? value){
    if(value?.isEmpty ?? true){
      return "Feet is required.";
    } return null;
  }

  static String? inchValidator(String? value){
    if(value?.isEmpty ?? true){
      return "Inch is required.";
    } return null;
  }

}