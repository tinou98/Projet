//************************************************************************************
//**  
//**  File name:     P:\SI\Projet\FlowCode\BattLevel.c
//**  Generated by:  Flowcode v4.5.18.74
//**  Date:          Friday, January 30, 2015 11:31:57
//**  Licence:       10 User
//**  Registered to: LYCEE-STMARC38-02
//**  
//**  
//**     POUR UN USAGE NON COMMERCIAL 
//**  
//**  http://www.matrixmultimedia.com
//************************************************************************************


#define MX_PIC

//D�finir pour microcontr�leur
#define P18F4455
#define MX_EE
#define MX_EE_TYPE3
#define MX_EE_SIZE 256
#define MX_SPI
#define MX_SPI_BCB
#define MX_SPI_SDI 0
#define MX_SPI_SDO 7
#define MX_SPI_SCK 1
#define MX_UART
#define MX_UART_C
#define MX_UART_TX 6
#define MX_UART_RX 7
#define MX_I2C
#define MX_MI2C
#define MX_I2C_B
#define MX_I2C_SDA 0
#define MX_I2C_SCL 1
#define MX_PWM
#define MX_PWM_CNT 2
#define MX_PWM_TRIS1 trisc
#define MX_PWM_1 2
#define MX_PWM_TRIS2 trisc
#define MX_PWM_2 1
#define MX_PWM_TRIS2a trisb
#define MX_PWM_2a 3
#define MX_USB_TYPE1

//Fonctions
#define MX_CLK_SPEED 48000000
#ifdef _BOOSTC
#include <system.h>
#endif
#ifdef HI_TECH_C
#include <pic18.h>
#endif

//Donn�es de Configuration
#ifdef _BOOSTC
#pragma DATA 0x300000, 0x20
#endif
#ifdef _HI_TECH_C
%C__CONFIG(%A, %V);
#endif
#ifdef _BOOSTC
#pragma DATA 0x300001, 0xe
#endif
#ifdef _HI_TECH_C
%C__CONFIG(%A, %V);
#endif
#ifdef _BOOSTC
#pragma DATA 0x300002, 0x3e
#endif
#ifdef _HI_TECH_C
%C__CONFIG(%A, %V);
#endif
#ifdef _BOOSTC
#pragma DATA 0x300003, 0x1e
#endif
#ifdef _HI_TECH_C
%C__CONFIG(%A, %V);
#endif
#ifdef _BOOSTC
#pragma DATA 0x300004, 0x0
#endif
#ifdef _HI_TECH_C
%C__CONFIG(%A, %V);
#endif
#ifdef _BOOSTC
#pragma DATA 0x300005, 0x81
#endif
#ifdef _HI_TECH_C
%C__CONFIG(%A, %V);
#endif
#ifdef _BOOSTC
#pragma DATA 0x300006, 0x81
#endif
#ifdef _HI_TECH_C
%C__CONFIG(%A, %V);
#endif
#ifdef _BOOSTC
#pragma DATA 0x300007, 0x0
#endif
#ifdef _HI_TECH_C
%C__CONFIG(%A, %V);
#endif
#ifdef _BOOSTC
#pragma DATA 0x300008, 0xf
#endif
#ifdef _HI_TECH_C
%C__CONFIG(%A, %V);
#endif
#ifdef _BOOSTC
#pragma DATA 0x300009, 0x80
#endif
#ifdef _HI_TECH_C
%C__CONFIG(%A, %V);
#endif
#ifdef _BOOSTC
#pragma DATA 0x30000a, 0xf
#endif
#ifdef _HI_TECH_C
%C__CONFIG(%A, %V);
#endif
#ifdef _BOOSTC
#pragma DATA 0x30000b, 0xa0
#endif
#ifdef _HI_TECH_C
%C__CONFIG(%A, %V);
#endif
#ifdef _BOOSTC
#pragma DATA 0x30000c, 0xf
#endif
#ifdef _HI_TECH_C
%C__CONFIG(%A, %V);
#endif
#ifdef _BOOSTC
#pragma DATA 0x30000d, 0x0
#endif
#ifdef _HI_TECH_C
%C__CONFIG(%A, %V);
#endif

//Fonctions internes
#include "C:\Program Files\Matrix Multimedia\Flowcode V4\FCD\internals.h"

//D�clarations de fonction Macro
void FCM_initLed();
void FCM_showBattLevel();
char FCM_isBattLevelOK(char FCL_PRCT);
char FCM_getBat();
char FCM_getTrou(short FCL_TIMEOUT);
void FCM_move(char FCL_VITESSE, char FCL_SENS, char FCL_DEGRE);


//D�clarations de Variable
char FCV_STOP;
char FCV__1;
char FCV__2;
char FCV_LEFT;
char FCV_RIGHT;
char FCV__3;
char FCV_DROIT;
char FCV_ARRIERE;
char FCV_ISTROU;
char FCV_BATTLEVELOK;
char FCV_AVANT;
char FCV_TRUE;
char FCV_FALSE;

char FCLV_LOOP1;
char FCLV_LOOP2;


//D�finitions suppl�mentaires
#define MOTEUR_AVANCE 1

//Impl�mentations Macro

void FCM_initLed()
{
	
	//D�finitions des variables locales
	char FCL_I;

	//Calcul
	//Calcul:
	//  initLed.i = 1
	FCL_I = 1;
	

	//Boucle
	//Boucle: Boucle 8 fois
	for (FCLV_LOOP1=0; FCLV_LOOP1<8; FCLV_LOOP1++)
	{
		//Sortie
		//Sortie: initLed.i -> PORTD
		trisd = 0x00;
		portd = FCL_I;


		//Pause
		//Pause: 100 ms
		delay_ms(100);


		//Sortie
		//Sortie: 0 -> PORTD
		trisd = 0x00;
		portd = 0;


		//Calcul
		//Calcul:
		//  initLed.i = initLed.i * 2
		FCL_I = FCL_I * 2;
		

	}


	//Calcul
	//Calcul:
	//  initLed.i = 128
	FCL_I = 128;
	

	//Boucle
	//Boucle: Boucle 8 fois
	for (FCLV_LOOP2=0; FCLV_LOOP2<8; FCLV_LOOP2++)
	{
		//Sortie
		//Sortie: initLed.i -> PORTD
		trisd = 0x00;
		portd = FCL_I;


		//Pause
		//Pause: 100 ms
		delay_ms(100);


		//Sortie
		//Sortie: 0 -> PORTD
		trisd = 0x00;
		portd = 0;


		//Calcul
		//Calcul:
		//  initLed.i = initLed.i / 2
		FCL_I = FCL_I / 2;
		

	}


}

void FCM_showBattLevel()
{
	
	//D�finitions des variables locales
	char FCL_BATLEVEL;

	//Appel d'une Macro
	//Appel d'une Macro: showBattLevel.batLevel=getBat
	FCL_BATLEVEL = FCM_getBat();


	//D�cision
	//D�cision: showBattLevel.batLevel > 0?
	if (FCL_BATLEVEL > 0)
	{
		//Sortie
		//Sortie: 1 -> D0
		trisd = trisd & 0xfe;
		if (1)
			portd = (portd & 0xfe) | 0x01;
		else
			portd = portd & 0xfe;


	} else {
		//Sortie
		//Sortie: 0 -> D0
		trisd = trisd & 0xfe;
		if (0)
			portd = (portd & 0xfe) | 0x01;
		else
			portd = portd & 0xfe;


	}


	//D�cision
	//D�cision: showBattLevel.batLevel > 36?
	if (FCL_BATLEVEL > 36)
	{
		//Sortie
		//Sortie: 1 -> D1
		trisd = trisd & 0xfd;
		if (1)
			portd = (portd & 0xfd) | 0x02;
		else
			portd = portd & 0xfd;


	} else {
		//Sortie
		//Sortie: 0 -> D1
		trisd = trisd & 0xfd;
		if (0)
			portd = (portd & 0xfd) | 0x02;
		else
			portd = portd & 0xfd;


	}


	//D�cision
	//D�cision: showBattLevel.batLevel > 72?
	if (FCL_BATLEVEL > 72)
	{
		//Sortie
		//Sortie: 1 -> D2
		trisd = trisd & 0xfb;
		if (1)
			portd = (portd & 0xfb) | 0x04;
		else
			portd = portd & 0xfb;


	} else {
		//Sortie
		//Sortie: 0 -> D2
		trisd = trisd & 0xfb;
		if (0)
			portd = (portd & 0xfb) | 0x04;
		else
			portd = portd & 0xfb;


	}


	//D�cision
	//D�cision: showBattLevel.batLevel > 108?
	if (FCL_BATLEVEL > 108)
	{
		//Sortie
		//Sortie: 1 -> D3
		trisd = trisd & 0xf7;
		if (1)
			portd = (portd & 0xf7) | 0x08;
		else
			portd = portd & 0xf7;


	} else {
		//Sortie
		//Sortie: 0 -> D3
		trisd = trisd & 0xf7;
		if (0)
			portd = (portd & 0xf7) | 0x08;
		else
			portd = portd & 0xf7;


	}


	//D�cision
	//D�cision: showBattLevel.batLevel > 145?
	if (FCL_BATLEVEL > 145)
	{
		//Sortie
		//Sortie: 1 -> D4
		trisd = trisd & 0xef;
		if (1)
			portd = (portd & 0xef) | 0x10;
		else
			portd = portd & 0xef;


	} else {
		//Sortie
		//Sortie: 0 -> D4
		trisd = trisd & 0xef;
		if (0)
			portd = (portd & 0xef) | 0x10;
		else
			portd = portd & 0xef;


	}


	//D�cision
	//D�cision: showBattLevel.batLevel > 181?
	if (FCL_BATLEVEL > 181)
	{
		//Sortie
		//Sortie: 1 -> D5
		trisd = trisd & 0xdf;
		if (1)
			portd = (portd & 0xdf) | 0x20;
		else
			portd = portd & 0xdf;


	} else {
		//Sortie
		//Sortie: 0 -> D5
		trisd = trisd & 0xdf;
		if (0)
			portd = (portd & 0xdf) | 0x20;
		else
			portd = portd & 0xdf;


	}


	//D�cision
	//D�cision: showBattLevel.batLevel > 217?
	if (FCL_BATLEVEL > 217)
	{
		//Sortie
		//Sortie: 1 -> D6
		trisd = trisd & 0xbf;
		if (1)
			portd = (portd & 0xbf) | 0x40;
		else
			portd = portd & 0xbf;


	} else {
		//Sortie
		//Sortie: 0 -> D6
		trisd = trisd & 0xbf;
		if (0)
			portd = (portd & 0xbf) | 0x40;
		else
			portd = portd & 0xbf;


	}


	//D�cision
	//D�cision: showBattLevel.batLevel > 254?
	if (FCL_BATLEVEL > 254)
	{
		//Sortie
		//Sortie: 1 -> D7
		trisd = trisd & 0x7f;
		if (1)
			portd = (portd & 0x7f) | 0x80;
		else
			portd = portd & 0x7f;


	} else {
		//Sortie
		//Sortie: 0 -> D7
		trisd = trisd & 0x7f;
		if (0)
			portd = (portd & 0x7f) | 0x80;
		else
			portd = portd & 0x7f;


	}


}

char FCM_isBattLevelOK(char FCL_PRCT)
{
	
	//D�finitions des variables locales
	char FCL_BATTLEVEL;

	char FCR_RETVAL;

	//Appel d'une Macro
	//Appel d'une Macro: isBattLevelOK.battLevel=getBat
	FCL_BATTLEVEL = FCM_getBat();


	//D�cision
	//D�cision: isBattLevelOK.battLevel >= isBattLevelOK.prct?
	if (FCL_BATTLEVEL >= FCL_PRCT)
	{
		//Calcul
		//Calcul:
		//  isBattLevelOK.Return = true
		FCR_RETVAL = FCV_TRUE;
		

	} else {
		//Calcul
		//Calcul:
		//  isBattLevelOK.Return = false
		FCR_RETVAL = FCV_FALSE;
		

	}


	return (FCR_RETVAL);
}

char FCM_getBat()
{
	
	char FCR_RETVAL;

	//Appel de la Routine Composant
	//Appel de la Routine Composant: getBat.Return=ADC(0)::ReadAsByte
	FCR_RETVAL = FCD_ADC0_ReadAsByte();


	return (FCR_RETVAL);
}

char FCM_getTrou(short FCL_TIMEOUT)
{
	
	//D�finitions des variables locales
	short FCL_T;
	char FCL_CAPT;

	char FCR_RETVAL;

	//Calcul
	//Calcul:
	//  getTrou.Return = false
	//  getTrou.t = 0
	FCR_RETVAL = FCV_FALSE;
	FCL_T = 0;
	

	//Boucle
	//Boucle: Tant que getTrou.t < getTrou.timeout && getTrou.Return == false
	while (1)
	{
		//Entr�e
		//Entr�e: C0 -> getTrou.capt
		trisc = trisc | 0x01;
		FCL_CAPT = ((portc & 0x01) == 0x01);


		//D�cision
		//D�cision: getTrou.capt?
		if (FCL_CAPT)
		{
			//Calcul
			//Calcul:
			//  getTrou.Return = true
			FCR_RETVAL = FCV_TRUE;
			

		}


		//Calcul
		//Calcul:
		//  getTrou.t = getTrou.t + 25
		FCL_T = FCL_T + 25;
		

		//Pause
		//Pause: 25 ms
		delay_ms(25);


		if ((FCL_T < FCL_TIMEOUT && FCR_RETVAL == FCV_FALSE) == 0) break;
	}


	return (FCR_RETVAL);
}

void FCM_move(char FCL_VITESSE, char FCL_SENS, char FCL_DEGRE)
{
	
	//D�finitions des variables locales
	char FCL_VITMOTD;
	char FCL_VITMOTG;

	//D�cision
	//D�cision: move.vitesse == stop?
	if (FCL_VITESSE == FCV_STOP)
	{
		//Appel de la Routine Composant
		//Appel de la Routine Composant: PWM(0)::Disable(1)
		FCD_PWM0_Disable(1);


		//Appel de la Routine Composant
		//Appel de la Routine Composant: PWM(0)::Disable(2)
		FCD_PWM0_Disable(2);


	} else {
		//Appel de la Routine Composant
		//Appel de la Routine Composant: PWM(0)::Enable(1)
		FCD_PWM0_Enable(1);


		//Appel de la Routine Composant
		//Appel de la Routine Composant: PWM(0)::Enable(2)
		FCD_PWM0_Enable(2);


		//D�cision
		//D�cision: move.degre == droit?
		if (FCL_DEGRE == FCV_DROIT)
		{
			//D�cision
			//D�cision: move.sens == avant?
			if (FCL_SENS == FCV_AVANT)
			{
				//Sortie
				//Sortie: 0 -> C6
				trisc = trisc & 0xbf;
				if (0)
					portc = (portc & 0xbf) | 0x40;
				else
					portc = portc & 0xbf;


				//Sortie
				//Sortie: 0 -> C7
				trisc = trisc & 0x7f;
				if (0)
					portc = (portc & 0x7f) | 0x80;
				else
					portc = portc & 0x7f;


			} else {
				//Sortie
				//Sortie: 1 -> C6
				trisc = trisc & 0xbf;
				if (1)
					portc = (portc & 0xbf) | 0x40;
				else
					portc = portc & 0xbf;


				//Sortie
				//Sortie: 1 -> C7
				trisc = trisc & 0x7f;
				if (1)
					portc = (portc & 0x7f) | 0x80;
				else
					portc = portc & 0x7f;


			}


			//Calcul
			//Calcul:
			//  move.vitMotG = move.vitesse
			//  move.vitMotD = move.vitesse
			FCL_VITMOTG = FCL_VITESSE;
			FCL_VITMOTD = FCL_VITESSE;
			

		} else {
			//D�cision
			//D�cision: move.degre > 45 && move.degre <= 90?
			if (FCL_DEGRE > 45 && FCL_DEGRE <= 90)
			{
				//D�cision
				//D�cision: move.sens == avant?
				if (FCL_SENS == FCV_AVANT)
				{
					//Sortie
					//Sortie: 0 -> C6
					trisc = trisc & 0xbf;
					if (0)
						portc = (portc & 0xbf) | 0x40;
					else
						portc = portc & 0xbf;


					//Sortie
					//Sortie: 1 -> C7
					trisc = trisc & 0x7f;
					if (1)
						portc = (portc & 0x7f) | 0x80;
					else
						portc = portc & 0x7f;


				} else {
					//Sortie
					//Sortie: 0 -> C6
					trisc = trisc & 0xbf;
					if (0)
						portc = (portc & 0xbf) | 0x40;
					else
						portc = portc & 0xbf;


					//Sortie
					//Sortie: 1 -> C7
					trisc = trisc & 0x7f;
					if (1)
						portc = (portc & 0x7f) | 0x80;
					else
						portc = portc & 0x7f;


				}


				//Calcul
				//Calcul:
				//  move.vitMotG = move.vitesse * (45-move.degre-45)/45
				//  move.vitMotD = move.vitesse
				FCL_VITMOTG = FCL_VITESSE * (45-FCL_DEGRE-45)/45;
				FCL_VITMOTD = FCL_VITESSE;
				

			} else {
				//D�cision
				//D�cision: move.degre <= 45?
				if (FCL_DEGRE <= 45)
				{
					//D�cision
					//D�cision: move.sens == avant?
					if (FCL_SENS == FCV_AVANT)
					{
						//Sortie
						//Sortie: 0 -> C6
						trisc = trisc & 0xbf;
						if (0)
							portc = (portc & 0xbf) | 0x40;
						else
							portc = portc & 0xbf;


						//Sortie
						//Sortie: 0 -> C7
						trisc = trisc & 0x7f;
						if (0)
							portc = (portc & 0x7f) | 0x80;
						else
							portc = portc & 0x7f;


					} else {
						//Sortie
						//Sortie: 1 -> C6
						trisc = trisc & 0xbf;
						if (1)
							portc = (portc & 0xbf) | 0x40;
						else
							portc = portc & 0xbf;


						//Sortie
						//Sortie: 1 -> C7
						trisc = trisc & 0x7f;
						if (1)
							portc = (portc & 0x7f) | 0x80;
						else
							portc = portc & 0x7f;


					}


					//Calcul
					//Calcul:
					//  move.vitMotG = move.vitesse * (45 - move.degre)/45
					//  move.vitMotD = move.vitesse
					FCL_VITMOTG = FCL_VITESSE * (45 - FCL_DEGRE)/45;
					FCL_VITMOTD = FCL_VITESSE;
					

				} else {
					//D�cision
					//D�cision: move.degre >= 165 && move.degre < 210?
					if (FCL_DEGRE >= 165 && FCL_DEGRE < 210)
					{
						//D�cision
						//D�cision: move.sens == avant?
						if (FCL_SENS == FCV_AVANT)
						{
							//Sortie
							//Sortie: 1 -> C6
							trisc = trisc & 0xbf;
							if (1)
								portc = (portc & 0xbf) | 0x40;
							else
								portc = portc & 0xbf;


							//Sortie
							//Sortie: 0 -> C7
							trisc = trisc & 0x7f;
							if (0)
								portc = (portc & 0x7f) | 0x80;
							else
								portc = portc & 0x7f;


						} else {
							//Sortie
							//Sortie: 1 -> C6
							trisc = trisc & 0xbf;
							if (1)
								portc = (portc & 0xbf) | 0x40;
							else
								portc = portc & 0xbf;


							//Sortie
							//Sortie: 0 -> C7
							trisc = trisc & 0x7f;
							if (0)
								portc = (portc & 0x7f) | 0x80;
							else
								portc = portc & 0x7f;


						}


						//Calcul
						//Calcul:
						//  move.vitMotD = move.vitesse * (45 + move.degre + 210)/45
						//  move.vitMotG = move.vitesse
						FCL_VITMOTD = FCL_VITESSE * (45 + FCL_DEGRE + 210)/45;
						FCL_VITMOTG = FCL_VITESSE;
						

					} else {
						//D�cision
						//D�cision: move.degre >= 210?
						if (FCL_DEGRE >= 210)
						{
							//D�cision
							//D�cision: move.sens == avant?
							if (FCL_SENS == FCV_AVANT)
							{
								//Sortie
								//Sortie: 0 -> C6
								trisc = trisc & 0xbf;
								if (0)
									portc = (portc & 0xbf) | 0x40;
								else
									portc = portc & 0xbf;


								//Sortie
								//Sortie: 0 -> C7
								trisc = trisc & 0x7f;
								if (0)
									portc = (portc & 0x7f) | 0x80;
								else
									portc = portc & 0x7f;


							} else {
								//Sortie
								//Sortie: 1 -> C6
								trisc = trisc & 0xbf;
								if (1)
									portc = (portc & 0xbf) | 0x40;
								else
									portc = portc & 0xbf;


								//Sortie
								//Sortie: 1 -> C7
								trisc = trisc & 0x7f;
								if (1)
									portc = (portc & 0x7f) | 0x80;
								else
									portc = portc & 0x7f;


							}


							//Calcul
							//Calcul:
							//  move.vitMotD = move.vitesse * (45 + move.degre + 255)/45
							//  move.vitMotG = move.vitesse
							FCL_VITMOTD = FCL_VITESSE * (45 + FCL_DEGRE + 255)/45;
							FCL_VITMOTG = FCL_VITESSE;
							

						}


					}


				}


			}


		}


		//Appel de la Routine Composant
		//Appel de la Routine Composant: PWM(0)::SetDutyCycle(1, move.vitMotG)
		FCD_PWM0_SetDutyCycle(1, FCL_VITMOTG);


		//Appel de la Routine Composant
		//Appel de la Routine Composant: PWM(0)::SetDutyCycle(2, move.vitMotD)
		FCD_PWM0_SetDutyCycle(2, FCL_VITMOTD);


	}


}

//Impl�mentations suppl�mentaires


void main()
{
	
	//Initialisation
	adcon1 = 0x0F;
	ucfg = 0x08;
cr_bit(pie2, USBIE);


	//Code d'initialisation d'Interruption
	


	//Calcul
	//Calcul:
	//  true = 1
	//  false = 0
	//  stop = 0
	//  avant = 1
	//  arriere = 2
	//  droit = 0
	//  left = -90
	//  right = 90
	FCV_TRUE = 1;
	FCV_FALSE = 0;
	FCV_STOP = 0;
	FCV_AVANT = 1;
	FCV_ARRIERE = 2;
	FCV_DROIT = 0;
	FCV_LEFT = -90;
	FCV_RIGHT = 90;
	

	//Boucle
	//Boucle: Tant que 1
	while (1)
	{
		//Sortie
		//Sortie: 1 -> C0
		trisc = trisc & 0xfe;
		if (1)
			portc = (portc & 0xfe) | 0x01;
		else
			portc = portc & 0xfe;


	}


	//Appel d'une Macro
	//Appel d'une Macro: move(_1, _2, _3)
	FCM_move(FCV__1, FCV__2, FCV__3);


	//Appel d'une Macro
	//Appel d'une Macro: initLed
	FCM_initLed();


	//Boucle
	//Boucle: Tant que 1
	while (1)
	{
		//Appel d'une Macro
		//Appel d'une Macro: showBattLevel
		FCM_showBattLevel();


		//Appel d'une Macro
		//Appel d'une Macro: battLevelOk=isBattLevelOK(128)
		FCV_BATTLEVELOK = FCM_isBattLevelOK(128);


		//D�cision
		//D�cision: battLevelOk?
		if (FCV_BATTLEVELOK)
		{
			//Commentaire:
			//C'est parti !!!


			//Appel d'une Macro
			//Appel d'une Macro: move(255, avant, droit)
			FCM_move(255, FCV_AVANT, FCV_DROIT);


			//Appel d'une Macro
			//Appel d'une Macro: isTrou=getTrou(1000)
			FCV_ISTROU = FCM_getTrou(1000);


			//D�cision
			//D�cision: isTrou?
			if (FCV_ISTROU)
			{
				//Commentaire:
				//On recule ...


				//Appel d'une Macro
				//Appel d'une Macro: move(255, arriere, droit)
				FCM_move(255, FCV_ARRIERE, FCV_DROIT);


				//Pause
				//Pause: 5 s
				delay_s(5);


				//Commentaire:
				//Stop


				//Appel d'une Macro
				//Appel d'une Macro: move(0, 0, 0)
				FCM_move(0, 0, 0);


				//Pause
				//Pause: 10 s
				delay_s(10);


			}


		} else {
			//Commentaire:
			//Nope :(


			//Appel d'une Macro
			//Appel d'une Macro: move(stop, 0, 0)
			FCM_move(FCV_STOP, 0, 0);


		}


	}


	mainendloop: goto mainendloop;
}

void MX_INTERRUPT_MACRO(void)
{
}



