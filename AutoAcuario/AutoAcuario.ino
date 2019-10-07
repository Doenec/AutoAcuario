
// ASIGNACION DE PINES
  //Para probar el codigo en proteus
const  int adclRT   =A0;  
const  int adclMT   =A1;  
const  int adclsalt =A2;  
const  int adclfood =A3;  
const  int adcph    =A4;  
const  int adcammonia=A5;  
const  int adcecMT  =A6;  
const  int adcecRT  =A7;  
const  int setDatos =4;  

  
  //Sensores de nivel
const  int trigRT  = 34;
const  int echoRT  = 36;
const  int trigMT  = 50;
const  int echoMT  = 52;
const  int trigSalt= 42;
const  int echoSalt= 44;
const  int trigFood= 38;
const  int echoFood= 40;
  
  //Sensor de PH
const  int rxPH    = 28;
const  int txPH    = 26;
  
  //Sensores de electroconductividad
const  int rxECMT  = 34;
const  int txECMT  = 36;
const  int rxECRT  = 32;
const  int txECRT  = 30;

  //Bus de sensores 1Wire
const  int oneWire = 22;

  //Sensor de amoniaco
const  int rxAmonio= 15;
const  int txAmonio= 14;
  
//ACTUADORES
  //Motores paso a paso
const  int ma1 = 18;
const  int ma2 = 19;
const  int ma3 = 23;
const  int ma4 = 25;
const  int mb1 = 27;
const  int mb2 = 29;
const  int mb3 = 31;
const  int mb4 = 33;

  //Indicadores
const  int buzz= 3;
const  int ledR= 7;
const  int ledG= 6;
const  int ledB= 5;

  //Valvulas
const  int val1= 47;
const  int val2= 45;
const  int val3= 43;
const  int val4= 41;
const  int val5= 39;
const  int val6= 37;
const  int val7= 35;

  //BOMBAS
const  int str1=A15;
const  int stp1=A14;
const  int str2=53;
const  int stp2=56;
const  int str3=49;
const  int stp3=A9;
const  int str4=A10;
const  int stp4=A11;
const  int str5=A12;
const  int stp5=A13;
  
//VARIABLES
float ammonia =0;//Concentracion de amonio
float ph      =0;//ph en tanque de circulacion
float ecMT    =0;//ec en tanque de mezclas
float ecRT    =0;//ec en tanque de circulacion
float lfood   =0;//nivel de comida
float lsalt   =0;//nivel de sal
float lRT     =0;//nivel en tanque de circulacion
float lMT     =0;//nivel en tanque de mezclas

// Retardo de pulsador
int debounce=150;

void setup() {
  //CONFIGURACION DE PUERTOS  
    //Puertos de salida
      //Motores de dispensadores
    pinMode(ma1, OUTPUT);
    pinMode(ma2, OUTPUT);
    pinMode(ma3, OUTPUT);
    pinMode(ma4, OUTPUT);
    pinMode(mb1, OUTPUT);
    pinMode(mb2, OUTPUT);
    pinMode(mb3, OUTPUT);
    pinMode(mb4, OUTPUT);
    
      //Valvulas
    pinMode(val1, OUTPUT);
    pinMode(val2, OUTPUT);
    pinMode(val3, OUTPUT);
    pinMode(val4, OUTPUT);
    pinMode(val5, OUTPUT);
    pinMode(val6, OUTPUT);
    pinMode(val7, OUTPUT);
      
      //Reles para bombas
    pinMode(str1, OUTPUT);
    pinMode(stp1, OUTPUT);
    pinMode(str2, OUTPUT);
    pinMode(stp2, OUTPUT);
    pinMode(str3, OUTPUT);
    pinMode(stp3, OUTPUT);
    pinMode(str4, OUTPUT);
    pinMode(stp4, OUTPUT);
    pinMode(str5, OUTPUT);
    pinMode(stp5, OUTPUT);
 
              }
  void loop()
  {
    if(digitalRead(setDatos)==0){
      delay(debounce);
      int adc=0;
      ammonia  =analogRead(adcammonia);
      ammonia  =ammonia*0.001/1023;
      ph       =analogRead(adcph);
      ph       =ph*14/1023;
      ecMT     =analogRead(adcecMT);
      ecMT     =ecMT*30/1023;
      ecMT     =1+ecMT/100;
      ecRT     =analogRead(adcecRT);
      ecRT     =ecRT*30/1023;
      ecRT     =1+ecRT/100;
      lMT      =analogRead(adclMT);
      lMT      =lMT*795;
      lRT      =analogRead(adclRT);
      lRT      =lRT*1142/1023;
      lfood    =analogRead(adclfood);
      lfood    =lfood*100/1023;
      lsalt    =analogRead(adclsalt);
      lsalt    =lsalt*100/1023;

      
      }



    
    }  
 


void valvulas(int v1, int v2,int v3, int v4,int v5, int v6, int v7)
{
  if(v1==0||v1==1){
  digitalWrite(val1 ,v1);}
  if(v2==0||v2==1){
  digitalWrite(val2 ,v2);}
  if(v3==0||v3==1){
  digitalWrite(val3 ,v3);}
  if(v4==0||v4==1){
  digitalWrite(val4 ,v4);}
  if(v5==0||v5==1){
  digitalWrite(val5 ,v5);}
  if(v6==0||v6==1){
  digitalWrite(val6 ,v6);}
  if(v7==0||v7==1){
  digitalWrite(val7 ,v7);}
                   
}

void bombas(int nBomba, bool orden  ){
  //Apagar o encencer bombas mediante
  //usando reles para controlar contactores
  switch (nBomba) {
    case 1:
          if(orden==1)digitalWrite(str1, HIGH);
          if(orden==0)digitalWrite(stp1, HIGH);        
      break;
    case 2:
          if(orden==1)digitalWrite(str2, HIGH);
          if(orden==0)digitalWrite(stp2, HIGH);        
      break;
    case 3:
          if(orden==1)digitalWrite(str3, HIGH);
          if(orden==0)digitalWrite(stp3, HIGH);        
      break;
    case 4:
          if(orden==1)digitalWrite(str4, HIGH);
          if(orden==0)digitalWrite(stp4, HIGH);        
      break;
     case 5:
          if(orden==1)digitalWrite(str5, HIGH);
          if(orden==0)digitalWrite(stp5, HIGH);        
      break;

    default:
     
    break;
  }

  delay(2000);
    //Apagar reles
    digitalWrite(str1, LOW);
    digitalWrite(stp1, LOW);
    digitalWrite(str2, LOW);
    digitalWrite(stp2, LOW);
    digitalWrite(str3, LOW);
    digitalWrite(stp3, LOW);
    digitalWrite(str4, LOW);
    digitalWrite(stp4, LOW);
    digitalWrite(str5, LOW);
    digitalWrite(stp5, LOW); 
             }

//FUNCION PARA DISPENSADOR DE COMIDA
void food(int pasos){
 int posSec=0;
 bool sec[4][4]={  {1,0,0,1},
            {1,0,1,0},
            {0,1,1,0},
            {0,1,0,1}};
  
  for (int x=0;x<pasos;x++ ) {
    if (posSec==4)posSec=0;//return the position to zero
    
    digitalWrite(mb1, sec[posSec][ 0]);
    digitalWrite(mb2, sec[posSec][ 1]);
    digitalWrite(mb3, sec[posSec][ 2]);
    digitalWrite(mb4, sec[posSec][ 3]);
    delay(200);//time between steps
    posSec++;
    } 
  }
//FUNCION PARA DISPENSADOR DE SAL  
void salt(int pasos){
 int posSec=0;
 bool sec[4][4]={  {1,0,0,1},
            {1,0,1,0},
            {0,1,1,0},
            {0,1,0,1}};
  
  for (int x=0;x<pasos;x++ ) {
    if (posSec==4)posSec=0;//return the position to zero
    
    digitalWrite(ma1, sec[posSec][ 0]);
    digitalWrite(ma2, sec[posSec][ 1]);
    digitalWrite(ma3, sec[posSec][ 2]);
    digitalWrite(ma4, sec[posSec][ 3]);
    delay(200);//time between steps
    posSec++;
    } 
  }
