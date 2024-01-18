import 'dart:io';
class Calculator{
    double num1;
    double num2;

  Calculator(this.num1,this.num2);
  
  double add(){
  
    return num1 + num2 ;
  
  }
  
  double subtract(){
  
    return num1 - num2 ;
  
  }

double multiply(){

    return num1 * num2 ;

  }
double devesion(){

    if(num2 != 0){

      return num1 / num2;

    }

    else{

      print('devesion is zero');

      return double.nan;

    }
  }
}
void main(){

  print('Enter your value ');

  double num1 = double.parse(stdin.readLineSync()!);

  print ('enter your SECOND value ');

  double num2 = double.parse(stdin.readLineSync()!);

   Calculator calculator = Calculator(num1 ,num2);

   print('Select your Operator(+,-,*,/)');

   String Operator = stdin.readLineSync()!;

   double result;

   if(Operator == '+'){

    result = calculator.add();

    print (' $num1 $num2 $result');

   }

   else if(Operator =='-'){

    result = calculator.subtract();

    print('$result');

   }

    else if(Operator =='*'){

    result = calculator.multiply();

    print('$result');

   } else if(Operator =='/'){

    result = calculator.devesion();

    print('$result');

   }


}