
void main(){
  int number=5;

  /*
  * *
  * * *
  * * * *
  */
  for(int i=0;i<number;i++){
    var star='';
    //space
    for(int j=number-i;j>0;j--){
      star +="";
    }
   // print stars
    for(int s=0;s<=i;s++){
      star+="* ";
    }
    print(star);

  }
  /*
         *
       * *
     * * *
   * * * *

   */
  for(int i=0;i<number;i++){
    var star='';
    //space
    for(int j=number-i;j>0;j--){
      star +="  ";
    }
    // print stars
    for(int s=0;s<=i;s++){
      star+="* ";
    }
    print(star);

  }

  /*
       *
      * *
     * * *
    * * * *

   */
  for(int i=0;i<number;i++){
    var star='';
    //space
    for(int j=number-i;j>0;j--){
      star +=" ";
    }
    // print stars
    for(int s=0;s<=i;s++){
      star+="* ";
    }
    print(star);

  }
  /*

   *
   * *
   * * *
   * *
   *

   */
  for(int i=0;i<number;i++){
    var star='';
    //space
    for(int j=number-i;j>0;j--){
      star +="";
    }
    // print stars
    for(int s=0;s<=i;s++){
      star+="* ";
    }
    print(star);

  }
  for(int i=number;i>=0;i--){
    var star='';
    //space
    for(int j=number-i;j>0;j--){
      star +="";
    }
    // print stars
    for(int s=0;s<=i;s++){
      star+="* ";
    }
    print(star);

  }


}