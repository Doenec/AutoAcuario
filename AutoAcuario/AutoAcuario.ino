#include <LiquidCrystal_I2C.h>

LiquidCrystal_I2C lcd(0x27,20,4);

// ASIGNACION DE PINES EN PROTEUS
const  int adclRT     =A0;//  
const  int adclMT     =A1;  
const  int adclsalt   =A2;  
const  int adclfood   =A3;  
const  int adcph      =A4;  
const  int adcammonia =A5;  
const  int adcecMT    =A6;  
const  int adcecRT    =A7;  
const  int setDatos   =4;
const  int alimentar  =5;
const  int llenarmt   =6;
const  int llenarrt   =7;
const  int desague    =8;
const  int salinidad  =9;
  
//POTENCIÓMETROS DE VARIABLES EN PROTEUS
float pammonia =0;//CONCENTRACIÓN DE AMONIO
float pph      =0;//PH EN TANQUE DE RECIRCULACIÓN
float pecMT    =0;//CONDUCTIVIDAD ELÉCTRICA EN TANQUE DE MEZCLA
float pecRT    =0;//CONDUCTIVIDAD ELÉCTRICA EN TANQUE DE RECIRCULACIÓN
float plfood   =0;//NIVEL EN TOLVA DE COMIDA
float plsalt   =0;//nivel EN TOLVA DE SAL
float plRT     =0;//NIVEL EN TANQUE DE RECIRCULACIÓN
float plMT     =0;//NIVEL EN TANQUE DE MEZCLAS

// S E N S O R E S//

//SENSORES DE NIVEL
const  int trigRT     =34;//
const  int echoRT     =36;
const  int trigMT     =50;
const  int echoMT     =52;
const  int trigSalt   =42;
const  int echoSalt   =44;
const  int trigFood   =38;
const  int echoFood   =40;
  
//SENSOR DE PH
const  int rxPH   =28;
const  int txPH   =26;
  
//SENSORES DE ELECTROCONDUCTIVIDAD
const  int rxECMT  =34;
const  int txECMT  =36;
const  int rxECRT  =32;
const  int txECRT  =30;

//BUS DE SENSORES 1WIRE
const  int oneWire =22;

//SENSOR DE AMONÍACO
const  int rxAmonio =15;
const  int txAmonio =14;
  
//A C T U A D O R E S//

//MOTOR PAP SAL
const  int ma1 =18;
const  int ma2 =19;
const  int ma3 =23;
const  int ma4 =25;


//MOTOR PAP COMIDA 
const  int mb1 =27;
const  int mb2 =29;
const  int mb3 =31;
const  int mb4 =33;


//INDICADORES VISUALES Y SÓNICOS
const  int buzz =3;
const  int ledR =7;
const  int ledG =6;
const  int ledB =5;

//ELECTROVÁLVULAS
const  int val1 =47;
const  int val2 =45;
const  int val3 =43;
const  int val4 =41;
const  int val5 =39;
const  int val6 =37;
const  int val7 =35;

//RELÉS BOMBAS CENTRÍFUGAS
const  int str1=A15;
const  int stp1=A14;
const  int str2=53;
const  int stp2=51;
const  int str3=49;
const  int stp3=A9;
const  int str4=A10;
const  int stp4=A11;
const  int str5=A12;
const  int stp5=A13;
  
//VARIABLES REALES
float ammonia =0;//Concentracion de amonio
float ph      =0;//ph en tanque de circulacion
float ecMT    =0;//ec en tanque de mezclas
float ecRT    =0;//ec en tanque de circulacion
float lfood   =0;//nivel de comida
float lsalt   =0;//nivel de sal
float lRT     =12.31;//nivel en tanque de circulacion
float lMT     =12.310;//nivel en tanque de mezclas
//FUNCIONES
String funcion []={"Alimentando", "Desague",};
// Retardo de pulsador
int debounce=150;
//Retardo proteus
int   proteus     =700;
bool  horapar     =HIGH;
long  ultimoTiempo=0;

void setup() {
  Serial2.begin(9600);
  //CONFIGURACION DE PUERTOS

    //B O T O N E S  P R O T E U S
    pinMode(setDatos,INPUT_PULLUP);
    pinMode(alimentar,INPUT_PULLUP);
    pinMode(llenarmt,INPUT_PULLUP);
    pinMode(llenarrt,INPUT_PULLUP);
    pinMode(desague,INPUT_PULLUP);
    pinMode(salinidad,INPUT_PULLUP);

    //P U E R T O S  D E  S A L I D A//
    
    //MOTORES PAP DISPENSADORES
    pinMode(ma1, OUTPUT);
    pinMode(ma2, OUTPUT);
    pinMode(ma3, OUTPUT);
    pinMode(ma4, OUTPUT);
    pinMode(mb1, OUTPUT);
    pinMode(mb2, OUTPUT);
    pinMode(mb3, OUTPUT);
    pinMode(mb4, OUTPUT);
    
    //ELECTROVÁLVULAS
    pinMode(val1, OUTPUT);
    pinMode(val2, OUTPUT);
    pinMode(val3, OUTPUT);
    pinMode(val4, OUTPUT);
    pinMode(val5, OUTPUT);
    pinMode(val6, OUTPUT);
    pinMode(val7, OUTPUT);
    
    //BOMAS CENTRÍFUGAS
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

    
  //INICIALIZACIÓN LCD
    lcd.init();
    lcd.backlight();
  lcd.setCursor(0,0);//Primera fila
  lcd.print("    Acuario");
  lcd.setCursor(0,1);//Segunda fila
  lcd.print("     Sambil");
  lcd.setCursor(0,2);//Tercera fila
  lcd.print("  San");
  lcd.setCursor(0,3);//Cuarta fila
  lcd.print("Cristobal");
  delay(1000); 
  lcd.clear();
              }
  void loop()
  {

    
      //LEER DATOS DE POTENCIOMETROS
      pammonia  =analogRead(adcammonia);
      pammonia  =pammonia*0.002/1023;
      pph       =analogRead(adcph);
      pph       =pph*14/1023;
      pecMT     =analogRead(adcecMT);
      pecMT     =pecMT*30/1023;
      pecMT     =1.1+pecMT/100;
      pecRT     =analogRead(adcecRT);
      pecRT     =pecRT*30/1023;
      pecRT     =1.1+pecRT/100;
      plMT      =analogRead(adclMT);
      plMT      =plMT*795/1023;
      plRT      =analogRead(adclRT);
      plRT      =plRT*1142/1023;
      plfood    =analogRead(adclfood);
      plfood    =plfood*100/1023;
      plsalt    =analogRead(adclsalt);
      plsalt    =plsalt*100/1023;
      Serial2.print("LMT:");
      Serial2.println(plMT);
      Serial2.print("LRT:");
      Serial2.println(plRT);
      Serial2.print("Ammonia:");
      Serial2.println(pammonia);
      Serial2.print("PH:");
      Serial2.println(pph);
      Serial2.print("CERT:");
      Serial2.println(pecRT);
      Serial2.print("CEMT:");
      Serial2.println(pecMT);
              //LEER DATOS DE POTENCIOMETROS
              if(digitalRead(setDatos)==0)  {
                valvulas(1,1,1,1,1,1,1);
              delay(debounce);
                valvulas(0,0,0,0,0,0,0);
              ammonia =pammonia;//CONCENTRACIÓN DE AMONIO
              ph      =pph;//PH EN TANQUE DE RECIRCULACIÓN
              ecMT    =pecMT;//ELECTROCONDUCTIVIDAD EN TANQUE DE MEZCLA
              ecRT    =pecRT;//ELECTROCONDUCTIVIDAD EN TANQUE DE RECIRCULACIÓN
              lfood   =plfood;//NIVEL EN TOLVA DE COMIDA
              lsalt   =plsalt;//NIVEL EN TOLVA DE SAL
              lRT     =plRT;//NIVEL EN TANQUE DE RECIRCULACIÓN
              lMT     =plMT;//NIVEL EN TANQUE DE MEZCLA
              
                                            }
              
              if(digitalRead(alimentar)==0){
              delay(debounce);
              valvulas(0,0,0,0,0,0,0);              
              digitalWrite(str1, LOW);
              digitalWrite(str2, LOW);
              digitalWrite(str3, LOW);
              food(15);
              delay(proteus);
               
                                          }
              if(digitalRead(llenarmt)==0){
              delay(debounce);
              valvulas(2,2,2,2,2,1,2);
              digitalWrite(str3, HIGH);
              delay(proteus); 
              valvulas(2,2,2,2,2,0,2);
              digitalWrite(str3, LOW);
                                          }
              if(digitalRead(llenarrt)==0){
              delay(debounce);
              
              valvulas(2,2,0,0,1,2,2);
              digitalWrite(str3, HIGH);
              delay(proteus*2);
              valvulas(2,2,0,1,0,2,2);
              digitalWrite(str3, LOW);
              delay(proteus);
               
                                          }
              if(digitalRead(desague)==0){
               valvulas(2,2,1,2,2,2,2); 
              delay(debounce);              
              delay(proteus);
              valvulas(0,0,0,0,0,0,0);
              delay(proteus);
               
                                          }

              if(digitalRead(salinidad)==0){
              delay(debounce);
              valvulas(2,2,2,1,0,0,2);
              salt(10);
              valvulas(2,2,2,0,1,0,2);
              digitalWrite(str1, HIGH);
              delay(proteus);
              digitalWrite(str3, LOW);
              valvulas(2,2,2,1,0,0,2);
               
                                          }


  //MOSTRAR VALORES EN PANTALLA LCD
  lcd.clear();
  lcd.setCursor(0,0);//Primera fila
  lcd.print("LMT:");
  lcd.print(lMT, 0);
  lcd.print("LRT:");
  lcd.print(lRT,0);
  lcd.setCursor(0,1);//Segunda fila
  lcd.print("FOOD:");
  lcd.print(lfood,0);
  lcd.print("SAL:");
  lcd.print(lsalt,0);
  lcd.setCursor(-4,2);//Tercera fila
  lcd.print("CER:");
  lcd.print(ecMT);
  lcd.print("CEM:");
  lcd.print(ecMT);
  lcd.setCursor(-4,3);//Cuarta fila
  lcd.print(funcion[1]);
  delay(100); 
  
    

  if (millis() - ultimoTiempo >=  proteus*5) {
    horapar=!horapar;
    ultimoTiempo = millis();
    if (horapar){
      
      digitalWrite(str1, LOW);
      digitalWrite(str2, HIGH);
      digitalWrite(str3, LOW);
      valvulas(1,0,2,0,2,2,2);
      }
      else 
      {
      digitalWrite(str1, HIGH);
      digitalWrite(str2, LOW);
      digitalWrite(str3, HIGH);
      valvulas(0,1,2,1,2,2,2); 
      
        }
    
    
    
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
  //APAGAR O ENCENDER BOMBAS USANDO INTEGRADO DARLINGTON
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

  //delay(2000);// TIEMPO PARA ACTIVAR
    //Apagar reles
    /*
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
      */       }

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
    delay(200);//TIEMPO ENTRE PASOS
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
    if (posSec==4)posSec=0;//RETORNAR A CERO
    
    digitalWrite(ma1, sec[posSec][ 0]);
    digitalWrite(ma2, sec[posSec][ 1]);
    digitalWrite(ma3, sec[posSec][ 2]);
    digitalWrite(ma4, sec[posSec][ 3]);
    delay(200);//TIEMPO ENTRE PASOS
    posSec++;
    } 
  }
