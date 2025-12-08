class Bmi {
  static (double, String , String) calculate(double WeightInKg , double heightInCm){
double bmi = 10;
String catagory = "Overweight"  ;
String description = "You have a normal body weight. 😍❤️" ;
bmi = WeightInKg / (heightInCm / 100);

return (bmi, catagory, description);
  }
}
