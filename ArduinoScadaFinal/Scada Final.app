This is an Elipse Windows Application file.%   Elipse Demo v2.29 build 151 & 	Aplica��oAplica��o Elipse SCADA       
�OnKeyPressEsc(Ativado quando a tecla Esc � pressionada       () 
           #
       
TagsGrupo Principal de Tags      ��  CPlcTagEST_LED
EST_LEDVER            
         �   + + + +�               ��@             ��@
     �
EST_COOLER
EST_COOLER            
         �   + + + +�               ��@             ��@
     �Sensor_LDR_0Sensor_LDR_0            
         �   + + + +�               ��@             ��@
     �	EST_BOTAO	EST_BOTAO            
         �   + + + +�               ��@             ��@
     �
CMD_COOLER
CMD_COOLER	            
         �   + + + +�               ��@             ��@
       
TelasTelas de Aplica��o
    ��   CScreenItemTela1Tela    ��  CGaugeLDR2Objeto Gauge       
MolduraObjeto moldura       
��      �        ARIAL                   
   �� 
SENSOR LDR    ���            i� q�                    ���                           �@���         �               
��      �        ARIAL                             ��  �    �   �           ףp=
��?ffffff�?              �@      �@            p@
��      �        ARIAL       
   ��            ��      �� 	 C21ButtonBotao_do_CoolerBotao do Cooler      
 OnPress$Ativado quando o bot�o � pressionado       IF (1)
ENDIF
 
	   0      #   
	   0   
 	OnReleaseAtivado quando o bot�o � solto       IF (0)
ENDIF
 
	   0      #    
	   0   
MolduraObjeto moldura       
��      �        ARIAL          ����   �     Chave do Cooler    ���       	     ~;T�       ����   �        ����     
��      �        ARIAL   ����   4�        ����
��      �        ARIAL   ����   �        ����LIGADO	DESLIGADO    ���     ���       �?            ��  CText	EST_LEDV2Estado do Led Vermelho       
MolduraObjeto moldura       
��      �        ARIAL ��   �        ����   Cooler Manual    ���       	     }� U< ����   4�        ����   C�       
�� �� 	 CTextZone      �?      �?   � � ��� &COOLER LIGADO MANUALMENTE PELO SCADA

��      �    "MS Sans Serif                     �                   � � ��� COOLER DESLIGADO
��      �    "MS Sans Serif                     d   �	EST_LEDV3Estado do Led Vermelho       
MolduraObjeto moldura       
��      �        ARIAL ��   �        ����   LED que indica Luminosidade    ���            y � Q3 ����   4�        ����   C�       
�� �      �?      �?   �   ��� 
LED LIGADO
��      �    "MS Sans Serif                     �                   �   ��� LED DESLIGADO
��      �    "MS Sans Serif                     d   ��  	 CBmp21Obj
             ��@   5x:\downloads\logo-ifrs-cores-sem-fundo-horizontal.jpg��� Bitmap1Objeto bitmap       
MolduraObjeto moldura       
��      �        ARIAL       ����   �        T�tulo                � 	 ��        ����   k�        ����     �	EST_LEDV4Estado do Led Vermelho       
MolduraObjeto moldura       
��      �        ARIAL ��   �        ����   Cooler Automatico    ���            y 3Qy ����   4�        ����   C�       
�� �                   � � ��� COOLER LIGADO
��      �    "MS Sans Serif                     �      �?      �?   � � ��� COOLER DESLIGADO
��      �    "MS Sans Serif                     d       ���     � �        	Tela1.htm  ScriptsScripts definidos pelo Usu�rio       
ReceitaReceita       
	Hist�ricoLista de Hist�ricos       
Relat�rios Lista de relat�rios da aplica��o       
PrintersPrinter       
Drivers%Lista de drivers de comunica��o (DLL)    ��   CDriverDriver2DLL Communication Driver       sx:\downloads\projeto 3 - arduino com elipse scada\projeto 2_supervisorio com arduino elipse scada\modbus\modbus.dll0Driver Modicon Modbus v4.0.3 (IOKitLib v2.0.116)  -  -  -  -     sx:\downloads\projeto 3 - arduino com elipse scada\projeto 2_supervisorio com arduino elipse scada\modbus\modbus.dll 
�� 	Generic Config Data v1.00	IO.ConnectionMode    	IO.Debug    	IO.Ethernet.AcceptConnection    	IO.Ethernet.BackupEnable    	IO.Ethernet.BackupEnable2    	IO.Ethernet.BackupEnable3    	IO.Ethernet.BackupIP	 	IO.Ethernet.BackupIP2	 	IO.Ethernet.BackupIP3	 	IO.Ethernet.BackupLocalPort    	IO.Ethernet.BackupLocalPort2    	IO.Ethernet.BackupLocalPort3    	!IO.Ethernet.BackupLocalPortEnable    	"IO.Ethernet.BackupLocalPortEnable2    	"IO.Ethernet.BackupLocalPortEnable3    	IO.Ethernet.BackupPort    	IO.Ethernet.BackupPort2    	IO.Ethernet.BackupPort3    	IO.Ethernet.IPFilter	 	IO.Ethernet.ListenIP	 	IO.Ethernet.ListenPort    	IO.Ethernet.MainIP	 	IO.Ethernet.MainLocalPort    	IO.Ethernet.MainLocalPortEnable    	IO.Ethernet.MainPort�  	IO.Ethernet.PingEnable    	IO.Ethernet.PingTimeoutMs�  	IO.Ethernet.PingTries   	IO.Ethernet.ShareListenPort    	IO.Ethernet.SupressEcho    	IO.Ethernet.Transport	TCP	IO.Ethernet.UseIPv6    	IO.Ethernet.UseSSL    	IO.GiveUpEnable    	IO.GiveUpTries   	IO.InactivityEnable    	IO.InactivityPeriodSec    	IO.Log.Enable    	IO.Log.Filename	C:\eeLogs\Modbus_%DATE%.log	IO.RecoverEnable   	IO.RecoverPeriodSec   	IO.Serial.Baudrate�%  	IO.Serial.CTSTimeoutMs    	IO.Serial.DataBits   	IO.Serial.DelayAfterMs    	IO.Serial.DelayBeforeMs    	IO.Serial.DTR    	IO.Serial.InterbyteDelayUs    	IO.Serial.InterframeDelayMs    	IO.Serial.Parity    	IO.Serial.Port   	IO.Serial.RTS    	IO.Serial.StopBits    	IO.Serial.SupressEcho    	IO.Serial.WaitCTS    	IO.StartOffline    	IO.TAPI.AcceptIncoming    	IO.TAPI.ModemID����	IO.TAPI.PhoneNumber	 	IO.TimeoutMs�  	IO.Type	Serial	ModiconModbus.ConfigFile	�%[Functions]
Function:	1
Read:	3
Write:	16
Type:	word
Size:	2
FrameOrder:	0
ByteOrder:	0
WordOrder:	0
DWordOrder:	0
Function:	2
Read:	3
Write:	16
Type:	dword
Size:	4
FrameOrder:	0
ByteOrder:	0
WordOrder:	0
DWordOrder:	0
Function:	3
Read:	3
Write:	16
Type:	int16
Size:	2
FrameOrder:	0
ByteOrder:	0
WordOrder:	0
DWordOrder:	0
Function:	4
Read:	3
Write:	16
Type:	int32
Size:	4
FrameOrder:	0
ByteOrder:	0
WordOrder:	0
DWordOrder:	0
Function:	5
Read:	3
Write:	16
Type:	float
Size:	4
FrameOrder:	0
ByteOrder:	0
WordOrder:	0
DWordOrder:	0
Function:	6
Read:	1
Write:	15
Type:	bit
Size:	0
FrameOrder:	0
ByteOrder:	0
WordOrder:	0
DWordOrder:	0
Function:	7
Read:	2
Write:	0
Type:	bit
Size:	0
FrameOrder:	0
ByteOrder:	0
WordOrder:	0
DWordOrder:	0
[End]
	!ModiconModbus.DefaultSlaveAddress   	!ModiconModbus.EnableCMSAddressing    	%ModiconModbus.EnableGenSOERegGrouping   	)ModiconModbus.EnableReconnectAfterTimeout    	#ModiconModbus.EnCustomizeMaxPDUSize    	ModiconModbus.MaxPDUSize�   	ModiconModbus.ModbusMode    	ModiconModbus.Olderaddr   	(ModiconModbus.ShowOperationsInTagBrowser    	ModiconModbus.SwapAddressDelay    	$ModiconModbus.UseDefaultSlaveAddress    	!ModiconModbus.UserTypesConfigFile	��// USER DEFINED TYPES SAMPLE CONFIG FILE

// The samples below illustrate how to create user defined structs, using the driver built-in types (note the built-in 
// types must be entered with the same keywords used in the Data combobox of the operations).
// The new user types can afterwards be used in the same way as the other built-in types in the Data combobox.

/* Sample types entirely commented by default

struct TYPE1 // TYPE 1 - declares struct with elements with no name, and no timestamp
{
  int16;
  word;
  dword;
  int32;
}

// TYPE2 declares named elements, and includes a timestamp of GenTime type.  The named elements can then be
// loaded to the user application using E3 Tag Browser.

// NOTE: the timestamp value will not be returned on a block element, but rather returned on the timestamp property
// of the block type tag. The order in which the timestamp appears within the structure  is related  to  the  order
// in which this field appears within the data area of the received protocol frame (usually the first field).

struct TYPE2
{ 
  timestamp = GenTime; // this time field will be returned in the block's timestamp field
  GenTime timeField; // this time field will be returned in the block's first element
  dword dwordField;
}

struct TYPE3 // this type has a timestamp of type UTC32 and some named elements
{
  DefaultAddress = 0x101;
  timestamp = UTC32;
  float Va;
  float Vb;
  float Vc;
  float Ia;
  float Ib;
  float Ic;  
}

*/	!ModiconModbus.UseSwapAddressDelay    	 ModiconModbus.WaitSilenceOnError     
	DatabasesODBC databases        AlarmesConfigura��o do alarme       
alarms.dat   d       
Aplica��esRemotasLista de Aplica��es Remotas!          6�@
    
 
output.txt
   
   
   
   
   
   
   
   ���     ���       X�   
WatcherObjetos do Watcher"       Steeplechase%Interface com o Software Steeplechase#       � .\

OPCServersOPC Server List$         �   