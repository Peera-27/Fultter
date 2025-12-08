import 'dart:math';

class Bmi {
  static (double, String, String) calculate(
    double WeightInKg,
    double heightInCm,
  ) {
    String catagory = "";
    String description = "";
    
   double bmi = WeightInKg / pow((heightInCm / 100), 2);
if (bmi <16) {
  catagory = "serve thinness";
  description = "You need to eat more nutritious food";
} else if (bmi >=16 && bmi <=17) {
  catagory = "moderate thinness";
  description = "You need to eat more nutritious food";
}
else if (bmi >=17 && bmi <18.5) {
  catagory = "Mild thinness";
  description = "You need to eat more nutritious food";
} else if (bmi >=18.5 && bmi <25) {
  catagory = "Normal";
  description = "You are fit as a fiddle!";
} else if (bmi >=25 && bmi <30) {
  catagory = "Overweight";
  description = "You need to workout more!";
} else if (bmi >=30) {
  catagory = "Obese I";
  description = "Please consult a doctor!";
} else if (bmi >=35) {
  catagory = "Obese II";
  description = "Please consult a doctor!";
} else if (bmi >=40) {
  catagory = "Obese III";
  description = "Please consult a doctor!";
}
    return (bmi, catagory, description);
  }
}
