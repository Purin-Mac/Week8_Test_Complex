String a = "3+2i",b = "5-1i";
char[] Index = {'+', '-', '*', '/'};
char Operator_number1;
int Operator_index;
Complex Eq;
void setup(){
  Eq = new Complex();
  print(Eq.Add(a,b));
}

class Complex{
  String Add(String Number1, String Number2){
      for(char i : Index){
        Operator_index = Number1.indexOf(i);
        if(Operator_index != 0 && Operator_index != -1){
          break;
        }
      }
      String Number1_int = Number1.substring(0, Operator_index); 
      String Number1_complex = Number1.substring(Operator_index, Number1.length()-1);
      for(char i : Index){
        Operator_index = Number2.indexOf(i);
        if(Operator_index != 0 && Operator_index != -1){
          break;
        }
      }
      String Number2_int = Number2.substring(0, Operator_index);
      String Number2_complex = Number2.substring(Operator_index, Number2.length()-1);
      int result_int = int(Number1_int) + int(Number2_int);
    return str(result_int);
  }
}
