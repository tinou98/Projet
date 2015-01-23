;/////////////////////////////////////////////////////////////////////////////////
;// Code Generator: BoostC Compiler - http://www.sourceboost.com
;// Version       : 7.03
;// License Type  : Full License
;// Limitations   : PIC18 max code size:Unlimited, max RAM banks:Unlimited, Non commercial use only
;/////////////////////////////////////////////////////////////////////////////////

	include "P18F4455.inc"
__HEAPSTART                      EQU	0x00000034 ; Start address of heap 
__HEAPEND                        EQU	0x000007FF ; End address of heap 
gbl_status                       EQU	0x00000FD8 ; bytes:1
gbl_prodl                        EQU	0x00000FF3 ; bytes:1
gbl_prodh                        EQU	0x00000FF4 ; bytes:1
gbl_16_LSR                       EQU	0x00000005 ; bytes:4
gbl_float_detect_tininess        EQU	0x0000001B ; bytes:1
gbl_float_rounding_mode          EQU	0x0000001C ; bytes:1
gbl_float_exception_flags        EQU	0x0000001D ; bytes:1
gbl_17_gbl_aSig                  EQU	0x00000009 ; bytes:4
gbl_17_gbl_bSig                  EQU	0x0000000D ; bytes:4
gbl_17_gbl_zSig                  EQU	0x00000011 ; bytes:4
gbl_17_gbl_aExp                  EQU	0x0000001E ; bytes:1
gbl_17_gbl_bExp                  EQU	0x0000001F ; bytes:1
gbl_17_gbl_zExp                  EQU	0x00000019 ; bytes:2
gbl_17_gbl_aSign                 EQU	0x00000020 ; bytes:1
gbl_17_gbl_bSign                 EQU	0x00000021 ; bytes:1
gbl_17_gbl_zSign                 EQU	0x00000022 ; bytes:1
gbl_17_gbl_zSigZero              EQU	0x00000023 ; bytes:1
gbl_17_gbl_ret                   EQU	0x00000015 ; bytes:4
gbl_sppdata                      EQU	0x00000F62 ; bytes:1
gbl_sppcfg                       EQU	0x00000F63 ; bytes:1
gbl_sppeps                       EQU	0x00000F64 ; bytes:1
gbl_sppcon                       EQU	0x00000F65 ; bytes:1
gbl_ufrm                         EQU	0x00000F66 ; bytes:1
gbl_ufrml                        EQU	0x00000F66 ; bytes:1
gbl_ufrmh                        EQU	0x00000F67 ; bytes:1
gbl_uir                          EQU	0x00000F68 ; bytes:1
gbl_uie                          EQU	0x00000F69 ; bytes:1
gbl_ueir                         EQU	0x00000F6A ; bytes:1
gbl_ueie                         EQU	0x00000F6B ; bytes:1
gbl_ustat                        EQU	0x00000F6C ; bytes:1
gbl_ucon                         EQU	0x00000F6D ; bytes:1
gbl_uaddr                        EQU	0x00000F6E ; bytes:1
gbl_ucfg                         EQU	0x00000F6F ; bytes:1
gbl_uep0                         EQU	0x00000F70 ; bytes:1
gbl_uep1                         EQU	0x00000F71 ; bytes:1
gbl_uep2                         EQU	0x00000F72 ; bytes:1
gbl_uep3                         EQU	0x00000F73 ; bytes:1
gbl_uep4                         EQU	0x00000F74 ; bytes:1
gbl_uep5                         EQU	0x00000F75 ; bytes:1
gbl_uep6                         EQU	0x00000F76 ; bytes:1
gbl_uep7                         EQU	0x00000F77 ; bytes:1
gbl_uep8                         EQU	0x00000F78 ; bytes:1
gbl_uep9                         EQU	0x00000F79 ; bytes:1
gbl_uep10                        EQU	0x00000F7A ; bytes:1
gbl_uep11                        EQU	0x00000F7B ; bytes:1
gbl_uep12                        EQU	0x00000F7C ; bytes:1
gbl_uep13                        EQU	0x00000F7D ; bytes:1
gbl_uep14                        EQU	0x00000F7E ; bytes:1
gbl_uep15                        EQU	0x00000F7F ; bytes:1
gbl_porta                        EQU	0x00000F80 ; bytes:1
gbl_portb                        EQU	0x00000F81 ; bytes:1
gbl_portc                        EQU	0x00000F82 ; bytes:1
gbl_portd                        EQU	0x00000F83 ; bytes:1
gbl_porte                        EQU	0x00000F84 ; bytes:1
gbl_lata                         EQU	0x00000F89 ; bytes:1
gbl_latb                         EQU	0x00000F8A ; bytes:1
gbl_latc                         EQU	0x00000F8B ; bytes:1
gbl_latd                         EQU	0x00000F8C ; bytes:1
gbl_late                         EQU	0x00000F8D ; bytes:1
gbl_ddra                         EQU	0x00000F92 ; bytes:1
gbl_trisa                        EQU	0x00000F92 ; bytes:1
gbl_ddrb                         EQU	0x00000F93 ; bytes:1
gbl_trisb                        EQU	0x00000F93 ; bytes:1
gbl_ddrc                         EQU	0x00000F94 ; bytes:1
gbl_trisc                        EQU	0x00000F94 ; bytes:1
gbl_ddrd                         EQU	0x00000F95 ; bytes:1
gbl_trisd                        EQU	0x00000F95 ; bytes:1
gbl_ddre                         EQU	0x00000F96 ; bytes:1
gbl_trise                        EQU	0x00000F96 ; bytes:1
gbl_osctune                      EQU	0x00000F9B ; bytes:1
gbl_pie1                         EQU	0x00000F9D ; bytes:1
gbl_pir1                         EQU	0x00000F9E ; bytes:1
gbl_ipr1                         EQU	0x00000F9F ; bytes:1
gbl_pie2                         EQU	0x00000FA0 ; bytes:1
gbl_pir2                         EQU	0x00000FA1 ; bytes:1
gbl_ipr2                         EQU	0x00000FA2 ; bytes:1
gbl_eecon1                       EQU	0x00000FA6 ; bytes:1
gbl_eecon2                       EQU	0x00000FA7 ; bytes:1
gbl_eedata                       EQU	0x00000FA8 ; bytes:1
gbl_eeadr                        EQU	0x00000FA9 ; bytes:1
gbl_rcsta                        EQU	0x00000FAB ; bytes:1
gbl_txsta                        EQU	0x00000FAC ; bytes:1
gbl_txreg                        EQU	0x00000FAD ; bytes:1
gbl_rcreg                        EQU	0x00000FAE ; bytes:1
gbl_spbrg                        EQU	0x00000FAF ; bytes:1
gbl_spbrgh                       EQU	0x00000FB0 ; bytes:1
gbl_t3con                        EQU	0x00000FB1 ; bytes:1
gbl_tmr3l                        EQU	0x00000FB2 ; bytes:1
gbl_tmr3h                        EQU	0x00000FB3 ; bytes:1
gbl_cmcon                        EQU	0x00000FB4 ; bytes:1
gbl_cvrcon                       EQU	0x00000FB5 ; bytes:1
gbl_ccp1as                       EQU	0x00000FB6 ; bytes:1
gbl_eccp1as                      EQU	0x00000FB6 ; bytes:1
gbl_ccp1del                      EQU	0x00000FB7 ; bytes:1
gbl_eccp1del                     EQU	0x00000FB7 ; bytes:1
gbl_baudcon                      EQU	0x00000FB8 ; bytes:1
gbl_ccp2con                      EQU	0x00000FBA ; bytes:1
gbl_ccpr2                        EQU	0x00000FBB ; bytes:1
gbl_ccpr2l                       EQU	0x00000FBB ; bytes:1
gbl_ccpr2h                       EQU	0x00000FBC ; bytes:1
gbl_ccp1con                      EQU	0x00000FBD ; bytes:1
gbl_eccp1con                     EQU	0x00000FBD ; bytes:1
gbl_ccpr1                        EQU	0x00000FBE ; bytes:1
gbl_ccpr1l                       EQU	0x00000FBE ; bytes:1
gbl_ccpr1h                       EQU	0x00000FBF ; bytes:1
gbl_adcon2                       EQU	0x00000FC0 ; bytes:1
gbl_adcon1                       EQU	0x00000FC1 ; bytes:1
gbl_adcon0                       EQU	0x00000FC2 ; bytes:1
gbl_adres                        EQU	0x00000FC3 ; bytes:1
gbl_adresl                       EQU	0x00000FC3 ; bytes:1
gbl_adresh                       EQU	0x00000FC4 ; bytes:1
gbl_sspcon2                      EQU	0x00000FC5 ; bytes:1
gbl_sspcon1                      EQU	0x00000FC6 ; bytes:1
gbl_sspstat                      EQU	0x00000FC7 ; bytes:1
gbl_sspadd                       EQU	0x00000FC8 ; bytes:1
gbl_sspbuf                       EQU	0x00000FC9 ; bytes:1
gbl_t2con                        EQU	0x00000FCA ; bytes:1
gbl_pr2                          EQU	0x00000FCB ; bytes:1
gbl_tmr2                         EQU	0x00000FCC ; bytes:1
gbl_t1con                        EQU	0x00000FCD ; bytes:1
gbl_tmr1l                        EQU	0x00000FCE ; bytes:1
gbl_tmr1h                        EQU	0x00000FCF ; bytes:1
gbl_rcon                         EQU	0x00000FD0 ; bytes:1
gbl_wdtcon                       EQU	0x00000FD1 ; bytes:1
gbl_hlvdcon                      EQU	0x00000FD2 ; bytes:1
gbl_lvdcon                       EQU	0x00000FD2 ; bytes:1
gbl_osccon                       EQU	0x00000FD3 ; bytes:1
gbl_t0con                        EQU	0x00000FD5 ; bytes:1
gbl_tmr0l                        EQU	0x00000FD6 ; bytes:1
gbl_tmr0h                        EQU	0x00000FD7 ; bytes:1
gbl_fsr2l                        EQU	0x00000FD9 ; bytes:1
gbl_fsr2h                        EQU	0x00000FDA ; bytes:1
gbl_plusw2                       EQU	0x00000FDB ; bytes:1
gbl_preinc2                      EQU	0x00000FDC ; bytes:1
gbl_postdec2                     EQU	0x00000FDD ; bytes:1
gbl_postinc2                     EQU	0x00000FDE ; bytes:1
gbl_indf2                        EQU	0x00000FDF ; bytes:1
gbl_bsr                          EQU	0x00000FE0 ; bytes:1
gbl_fsr1l                        EQU	0x00000FE1 ; bytes:1
gbl_fsr1h                        EQU	0x00000FE2 ; bytes:1
gbl_plusw1                       EQU	0x00000FE3 ; bytes:1
gbl_preinc1                      EQU	0x00000FE4 ; bytes:1
gbl_postdec1                     EQU	0x00000FE5 ; bytes:1
gbl_postinc1                     EQU	0x00000FE6 ; bytes:1
gbl_indf1                        EQU	0x00000FE7 ; bytes:1
gbl_wreg                         EQU	0x00000FE8 ; bytes:1
gbl_fsr0l                        EQU	0x00000FE9 ; bytes:1
gbl_fsr0h                        EQU	0x00000FEA ; bytes:1
gbl_plusw0                       EQU	0x00000FEB ; bytes:1
gbl_preinc0                      EQU	0x00000FEC ; bytes:1
gbl_postdec0                     EQU	0x00000FED ; bytes:1
gbl_postinc0                     EQU	0x00000FEE ; bytes:1
gbl_indf0                        EQU	0x00000FEF ; bytes:1
gbl_intcon3                      EQU	0x00000FF0 ; bytes:1
gbl_intcon2                      EQU	0x00000FF1 ; bytes:1
gbl_intcon                       EQU	0x00000FF2 ; bytes:1
gbl_prod                         EQU	0x00000FF3 ; bytes:1
gbl_tablat                       EQU	0x00000FF5 ; bytes:1
gbl_tblptr                       EQU	0x00000FF6 ; bytes:1
gbl_tblptrl                      EQU	0x00000FF6 ; bytes:1
gbl_tblptrh                      EQU	0x00000FF7 ; bytes:1
gbl_tblptru                      EQU	0x00000FF8 ; bytes:1
gbl_pc                           EQU	0x00000FF9 ; bytes:1
gbl_pcl                          EQU	0x00000FF9 ; bytes:1
gbl_pclath                       EQU	0x00000FFA ; bytes:1
gbl_pclatu                       EQU	0x00000FFB ; bytes:1
gbl_stkptr                       EQU	0x00000FFC ; bytes:1
gbl_tos                          EQU	0x00000FFD ; bytes:1
gbl_tosl                         EQU	0x00000FFD ; bytes:1
gbl_tosh                         EQU	0x00000FFE ; bytes:1
gbl_tosu                         EQU	0x00000FFF ; bytes:1
gbl_FCV_ISTROU                   EQU	0x00000024 ; bytes:1
gbl_FCV_BATTLEVELOK              EQU	0x00000025 ; bytes:1
gbl_FCV_FALSE                    EQU	0x00000026 ; bytes:1
gbl_FCV_TRUE                     EQU	0x00000027 ; bytes:1
gbl_FCLV_LOOP1                   EQU	0x00000028 ; bytes:1
gbl_FCLV_LOOP2                   EQU	0x00000029 ; bytes:1
FCM_initLe_0003D_1_FCL_I         EQU	0x0000002A ; bytes:1
FCM_showBa_0003E_1_FCL_BATLEVEL  EQU	0x0000002A ; bytes:1
CompTempVarRet2191               EQU	0x0000002E ; bytes:1
CompTempVar2183                  EQU	0x0000002B ; bytes:1
CompTempVar2184                  EQU	0x0000002B ; bytes:1
CompTempVar2185                  EQU	0x0000002B ; bytes:1
CompTempVar2186                  EQU	0x0000002B ; bytes:1
CompTempVar2187                  EQU	0x0000002B ; bytes:1
CompTempVar2188                  EQU	0x0000002B ; bytes:1
CompTempVar2189                  EQU	0x0000002B ; bytes:1
CompTempVar2190                  EQU	0x0000002B ; bytes:1
FCM_isBatt_0003F_arg_FCL_PRCT    EQU	0x0000002A ; bytes:1
CompTempVarRet2192               EQU	0x0000002D ; bytes:1
FCM_isBatt_0003F_1_FCL_BATTLEVEL EQU	0x0000002B ; bytes:1
FCM_isBatt_0003F_1_FCR_RETVAL    EQU	0x0000002C ; bytes:1
FCM_getBat_00000_1_FCR_RETVAL    EQU	0x0000002D ; bytes:1
CompTempVarRet2193               EQU	0x0000002E ; bytes:1
FCM_getTro_00041_arg_FCL_TIMEOUT EQU	0x0000002A ; bytes:2
CompTempVarRet2194               EQU	0x00000030 ; bytes:1
FCM_getTro_00041_1_FCL_T         EQU	0x0000002C ; bytes:2
FCM_getTro_00041_1_FCL_CAPT      EQU	0x0000002E ; bytes:1
FCM_getTro_00041_1_FCR_RETVAL    EQU	0x0000002F ; bytes:1
CompTempVar2195                  EQU	0x00000030 ; bytes:1
CompTempVar2196                  EQU	0x00000031 ; bytes:1
CompTempVar2197                  EQU	0x00000032 ; bytes:1
CompTempVar2198                  EQU	0x00000033 ; bytes:1
CompTempVar2201                  EQU	0x00000033 ; bytes:1
CompTempVar2202                  EQU	0x00000033 ; bytes:1
FCD_ADC0_S_00042_1_old_tris      EQU	0x0000002E ; bytes:1
FCD_ADC0_S_00042_1_cnt           EQU	0x0000002F ; bytes:1
FCD_PWM0_E_00047_arg_nIdx        EQU	0x0000002A ; bytes:1
FCD_PWM0_D_00048_arg_nIdx        EQU	0x0000002A ; bytes:1
FCD_PWM0_S_00049_arg_nIdx        EQU	0x0000002A ; bytes:1
FCD_PWM0_S_00049_arg_nDuty       EQU	0x0000002B ; bytes:1
delay_ms_00000_arg_del           EQU	0x00000033 ; bytes:1
delay_s_00000_arg_del            EQU	0x0000002A ; bytes:1
Int1Context                      EQU	0x00000001 ; bytes:4
	ORG 0x00000800
	GOTO	_startup
	ORG 0x00000808
	GOTO	interrupt
	ORG 0x0000080C
delay_ms_00000
; { delay_ms ; function begin
	MOVF delay_ms_00000_arg_del, F
	NOP
	BNZ	label1
	RETURN
label1
	MOVLW 0xFF
label2
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	ADDLW 0xFF
	BTFSS STATUS,Z
	BRA	label2
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	DECFSZ delay_ms_00000_arg_del, F
	BRA	label1
	RETURN
; } delay_ms function end

	ORG 0x00000890
delay_s_00000
; { delay_s ; function begin
label3
	MOVLW 0xFA
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0xFA
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0xFA
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0xFA
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	DECFSZ delay_s_00000_arg_del, F
	BRA	label3
	RETURN
; } delay_s function end

	ORG 0x000008B6
FCD_ADC0_S_00042
; { FCD_ADC0_SampleADC ; function begin
	MOVLW 0x03
	MOVWF gbl_adcon2
	MOVLW 0x0E
	MOVWF gbl_adcon1
	MOVF gbl_trisa, W
	MOVWF FCD_ADC0_S_00042_1_old_tris
	MOVLW 0x01
	IORWF gbl_trisa, W
	MOVWF gbl_trisa
	MOVLW 0x01
	MOVWF gbl_adcon0
	CLRF FCD_ADC0_S_00042_1_cnt
label4
	MOVLW 0x28
	CPFSLT FCD_ADC0_S_00042_1_cnt
	BRA	label5
	INCF FCD_ADC0_S_00042_1_cnt, F
	BRA	label4
label5
	MOVLW 0x02
	IORWF gbl_adcon0, W
	MOVWF gbl_adcon0
label6
	BTFSC gbl_adcon0,1
	BRA	label6
	MOVF FCD_ADC0_S_00042_1_old_tris, W
	MOVWF gbl_trisa
	MOVLW 0x0F
	MOVWF gbl_adcon1
	CLRF gbl_adcon0
	RETURN
; } FCD_ADC0_SampleADC function end

	ORG 0x000008EE
FCD_ADC0_R_00040
; { FCD_ADC0_ReadAsByte ; function begin
	CALL FCD_ADC0_S_00042
	MOVF gbl_adresh, W
	MOVWF CompTempVarRet2193
	RETURN
; } FCD_ADC0_ReadAsByte function end

	ORG 0x000008F8
FCM_getBat_00000
; { FCM_getBat ; function begin
	CALL FCD_ADC0_R_00040
	MOVF CompTempVarRet2193, W
	MOVWF FCM_getBat_00000_1_FCR_RETVAL
	MOVF FCM_getBat_00000_1_FCR_RETVAL, W
	MOVWF CompTempVarRet2191
	RETURN
; } FCM_getBat function end

	ORG 0x00000906
FCM_showBa_0003E
; { FCM_showBattLevel ; function begin
	CALL FCM_getBat_00000
	MOVF CompTempVarRet2191, W
	MOVWF FCM_showBa_0003E_1_FCL_BATLEVEL
	MOVLW 0x00
	CPFSGT FCM_showBa_0003E_1_FCL_BATLEVEL
	BRA	label7
	MOVLW 0xFE
	ANDWF gbl_trisd, W
	MOVWF gbl_trisd
	MOVLW 0xFE
	ANDWF gbl_portd, W
	MOVWF CompTempVar2183
	MOVLW 0x01
	IORWF CompTempVar2183, W
	MOVWF gbl_portd
	BRA	label8
label7
	MOVLW 0xFE
	ANDWF gbl_trisd, W
	MOVWF gbl_trisd
	MOVLW 0xFE
	ANDWF gbl_portd, W
	MOVWF gbl_portd
label8
	MOVLW 0x24
	CPFSGT FCM_showBa_0003E_1_FCL_BATLEVEL
	BRA	label9
	MOVLW 0xFD
	ANDWF gbl_trisd, W
	MOVWF gbl_trisd
	MOVLW 0xFD
	ANDWF gbl_portd, W
	MOVWF CompTempVar2184
	MOVLW 0x02
	IORWF CompTempVar2184, W
	MOVWF gbl_portd
	BRA	label10
label9
	MOVLW 0xFD
	ANDWF gbl_trisd, W
	MOVWF gbl_trisd
	MOVLW 0xFD
	ANDWF gbl_portd, W
	MOVWF gbl_portd
label10
	MOVLW 0x48
	CPFSGT FCM_showBa_0003E_1_FCL_BATLEVEL
	BRA	label11
	MOVLW 0xFB
	ANDWF gbl_trisd, W
	MOVWF gbl_trisd
	MOVLW 0xFB
	ANDWF gbl_portd, W
	MOVWF CompTempVar2185
	MOVLW 0x04
	IORWF CompTempVar2185, W
	MOVWF gbl_portd
	BRA	label12
label11
	MOVLW 0xFB
	ANDWF gbl_trisd, W
	MOVWF gbl_trisd
	MOVLW 0xFB
	ANDWF gbl_portd, W
	MOVWF gbl_portd
label12
	MOVLW 0x6C
	CPFSGT FCM_showBa_0003E_1_FCL_BATLEVEL
	BRA	label13
	MOVLW 0xF7
	ANDWF gbl_trisd, W
	MOVWF gbl_trisd
	MOVLW 0xF7
	ANDWF gbl_portd, W
	MOVWF CompTempVar2186
	MOVLW 0x08
	IORWF CompTempVar2186, W
	MOVWF gbl_portd
	BRA	label14
label13
	MOVLW 0xF7
	ANDWF gbl_trisd, W
	MOVWF gbl_trisd
	MOVLW 0xF7
	ANDWF gbl_portd, W
	MOVWF gbl_portd
label14
	MOVLW 0x91
	CPFSGT FCM_showBa_0003E_1_FCL_BATLEVEL
	BRA	label15
	MOVLW 0xEF
	ANDWF gbl_trisd, W
	MOVWF gbl_trisd
	MOVLW 0xEF
	ANDWF gbl_portd, W
	MOVWF CompTempVar2187
	MOVLW 0x10
	IORWF CompTempVar2187, W
	MOVWF gbl_portd
	BRA	label16
label15
	MOVLW 0xEF
	ANDWF gbl_trisd, W
	MOVWF gbl_trisd
	MOVLW 0xEF
	ANDWF gbl_portd, W
	MOVWF gbl_portd
label16
	MOVLW 0xB5
	CPFSGT FCM_showBa_0003E_1_FCL_BATLEVEL
	BRA	label17
	MOVLW 0xDF
	ANDWF gbl_trisd, W
	MOVWF gbl_trisd
	MOVLW 0xDF
	ANDWF gbl_portd, W
	MOVWF CompTempVar2188
	MOVLW 0x20
	IORWF CompTempVar2188, W
	MOVWF gbl_portd
	BRA	label18
label17
	MOVLW 0xDF
	ANDWF gbl_trisd, W
	MOVWF gbl_trisd
	MOVLW 0xDF
	ANDWF gbl_portd, W
	MOVWF gbl_portd
label18
	MOVLW 0xD9
	CPFSGT FCM_showBa_0003E_1_FCL_BATLEVEL
	BRA	label19
	MOVLW 0xBF
	ANDWF gbl_trisd, W
	MOVWF gbl_trisd
	MOVLW 0xBF
	ANDWF gbl_portd, W
	MOVWF CompTempVar2189
	MOVLW 0x40
	IORWF CompTempVar2189, W
	MOVWF gbl_portd
	BRA	label20
label19
	MOVLW 0xBF
	ANDWF gbl_trisd, W
	MOVWF gbl_trisd
	MOVLW 0xBF
	ANDWF gbl_portd, W
	MOVWF gbl_portd
label20
	MOVLW 0xFE
	CPFSGT FCM_showBa_0003E_1_FCL_BATLEVEL
	BRA	label21
	MOVLW 0x7F
	ANDWF gbl_trisd, W
	MOVWF gbl_trisd
	MOVLW 0x7F
	ANDWF gbl_portd, W
	MOVWF CompTempVar2190
	MOVLW 0x80
	IORWF CompTempVar2190, W
	MOVWF gbl_portd
	RETURN
label21
	MOVLW 0x7F
	ANDWF gbl_trisd, W
	MOVWF gbl_trisd
	MOVLW 0x7F
	ANDWF gbl_portd, W
	MOVWF gbl_portd
	RETURN
; } FCM_showBattLevel function end

	ORG 0x00000A40
FCM_isBatt_0003F
; { FCM_isBattLevelOK ; function begin
	CALL FCM_getBat_00000
	MOVF CompTempVarRet2191, W
	MOVWF FCM_isBatt_0003F_1_FCL_BATTLEVEL
	MOVF FCM_isBatt_0003F_1_FCL_BATTLEVEL, W
	CPFSGT FCM_isBatt_0003F_arg_FCL_PRCT
	BRA	label22
	BRA	label23
label22
	MOVF gbl_FCV_TRUE, W
	MOVWF FCM_isBatt_0003F_1_FCR_RETVAL
	BRA	label24
label23
	MOVF gbl_FCV_FALSE, W
	MOVWF FCM_isBatt_0003F_1_FCR_RETVAL
label24
	MOVF FCM_isBatt_0003F_1_FCR_RETVAL, W
	MOVWF CompTempVarRet2192
	RETURN
; } FCM_isBattLevelOK function end

	ORG 0x00000A60
FCM_initLe_0003D
; { FCM_initLed ; function begin
	MOVLW 0x01
	MOVWF FCM_initLe_0003D_1_FCL_I
	CLRF gbl_FCLV_LOOP1
label25
	MOVLW 0x08
	CPFSLT gbl_FCLV_LOOP1
	BRA	label26
	CLRF gbl_trisd
	MOVF FCM_initLe_0003D_1_FCL_I, W
	MOVWF gbl_portd
	MOVLW 0x64
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	CLRF gbl_trisd
	CLRF gbl_portd
	MOVF FCM_initLe_0003D_1_FCL_I, F
	BCF STATUS,C
	RLCF FCM_initLe_0003D_1_FCL_I, F
	INCF gbl_FCLV_LOOP1, F
	BRA	label25
label26
	MOVLW 0x80
	MOVWF FCM_initLe_0003D_1_FCL_I
	CLRF gbl_FCLV_LOOP2
label27
	MOVLW 0x08
	CPFSLT gbl_FCLV_LOOP2
	RETURN
	CLRF gbl_trisd
	MOVF FCM_initLe_0003D_1_FCL_I, W
	MOVWF gbl_portd
	MOVLW 0x64
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	CLRF gbl_trisd
	CLRF gbl_portd
	MOVF FCM_initLe_0003D_1_FCL_I, F
	BCF STATUS,C
	RRCF FCM_initLe_0003D_1_FCL_I, F
	INCF gbl_FCLV_LOOP2, F
	BRA	label27
; } FCM_initLed function end

	ORG 0x00000AB0
FCM_getTro_00041
; { FCM_getTrou ; function begin
	MOVF gbl_FCV_FALSE, W
	MOVWF FCM_getTro_00041_1_FCR_RETVAL
	CLRF FCM_getTro_00041_1_FCL_T
	CLRF FCM_getTro_00041_1_FCL_T+D'1'
label28
	MOVLW 0x01
	IORWF gbl_trisc, W
	MOVWF gbl_trisc
	MOVLW 0x01
	ANDWF gbl_portc, W
	MOVWF CompTempVar2198
	CLRF FCM_getTro_00041_1_FCL_CAPT
	DECF CompTempVar2198, W
	BTFSC STATUS,Z
	INCF FCM_getTro_00041_1_FCL_CAPT, F
	MOVF FCM_getTro_00041_1_FCL_CAPT, F
	BZ	label29
	MOVF gbl_FCV_TRUE, W
	MOVWF FCM_getTro_00041_1_FCR_RETVAL
label29
	CLRF CompTempVar2201
	MOVLW 0x19
	ADDWF FCM_getTro_00041_1_FCL_T, F
	MOVF FCM_getTro_00041_1_FCL_T+D'1', W
	ADDWFC CompTempVar2201, F
	MOVF CompTempVar2201, W
	MOVWF FCM_getTro_00041_1_FCL_T+D'1'
	MOVLW 0x19
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	CLRF CompTempVar2196
	MOVF FCM_getTro_00041_1_FCL_T+D'1', W
	XORLW 0x80
	MOVWF CompTempVar2202
	MOVF FCM_getTro_00041_arg_FCL_TIMEOUT+D'1', W
	XORLW 0x80
	SUBWF CompTempVar2202, W
	CPFSEQ CompTempVar2196
	BRA	label30
	MOVF FCM_getTro_00041_arg_FCL_TIMEOUT, W
	CPFSLT FCM_getTro_00041_1_FCL_T
	BRA	label30
	BRA	label31
label30
	BTFSS STATUS,C
label31
	BTG CompTempVar2196,0
	CLRF CompTempVar2195
	MOVF gbl_FCV_FALSE, W
	CPFSEQ FCM_getTro_00041_1_FCR_RETVAL
	BRA	label32
	INCF CompTempVar2195, F
label32
	CLRF CompTempVar2197
	MOVF CompTempVar2195, F
	BTFSS STATUS,Z
	MOVF CompTempVar2196, F
	BTFSS STATUS,Z
	INCF CompTempVar2197, F
	MOVF CompTempVar2197, F
	BNZ	label28
	MOVF FCM_getTro_00041_1_FCR_RETVAL, W
	MOVWF CompTempVarRet2194
	RETURN
; } FCM_getTrou function end

	ORG 0x00000B28
FCD_PWM0_S_00049
; { FCD_PWM0_SetDutyCycle ; function begin
	DECF FCD_PWM0_S_00049_arg_nIdx, W
	BNZ	label33
	MOVF FCD_PWM0_S_00049_arg_nDuty, W
	MOVWF gbl_ccpr1l
label33
	MOVLW 0x02
	CPFSEQ FCD_PWM0_S_00049_arg_nIdx
	RETURN
	MOVF FCD_PWM0_S_00049_arg_nDuty, W
	MOVWF gbl_ccpr2l
	RETURN
; } FCD_PWM0_SetDutyCycle function end

	ORG 0x00000B3C
FCD_PWM0_E_00047
; { FCD_PWM0_Enable ; function begin
	SETF gbl_pr2
	MOVLW 0x04
	MOVWF gbl_t2con
	DECF FCD_PWM0_E_00047_arg_nIdx, W
	BNZ	label34
	MOVLW 0x0C
	MOVWF gbl_ccp1con
	BCF gbl_trisc,2
label34
	MOVLW 0x02
	CPFSEQ FCD_PWM0_E_00047_arg_nIdx
	RETURN
	MOVLW 0x0C
	MOVWF gbl_ccp2con
	BCF gbl_trisc,1
	RETURN
; } FCD_PWM0_Enable function end

	ORG 0x00000B5A
FCD_PWM0_D_00048
; { FCD_PWM0_Disable ; function begin
	DECF FCD_PWM0_D_00048_arg_nIdx, W
	BTFSC STATUS,Z
	CLRF gbl_ccp1con
	MOVLW 0x02
	CPFSEQ FCD_PWM0_D_00048_arg_nIdx
	RETURN
	CLRF gbl_ccp2con
	RETURN
; } FCD_PWM0_Disable function end

	ORG 0x00000B6A
main
; { main ; function begin
	MOVLW 0x0F
	MOVWF gbl_adcon1
	MOVLW 0x08
	MOVWF gbl_ucfg
	BCF gbl_pie2,5
	MOVLW 0x01
	MOVWF gbl_FCV_TRUE
	CLRF gbl_FCV_FALSE
	CALL FCM_initLe_0003D
label35
	CALL FCM_showBa_0003E
	MOVLW 0x80
	MOVWF FCM_isBatt_0003F_arg_FCL_PRCT
	CALL FCM_isBatt_0003F
	MOVF CompTempVarRet2192, W
	MOVWF gbl_FCV_BATTLEVELOK
	MOVF gbl_FCV_BATTLEVELOK, F
	BZ	label36
	MOVLW 0x01
	MOVWF FCD_PWM0_E_00047_arg_nIdx
	CALL FCD_PWM0_E_00047
	MOVLW 0x02
	MOVWF FCD_PWM0_E_00047_arg_nIdx
	CALL FCD_PWM0_E_00047
	MOVLW 0x01
	MOVWF FCD_PWM0_S_00049_arg_nIdx
	MOVLW 0x80
	MOVWF FCD_PWM0_S_00049_arg_nDuty
	CALL FCD_PWM0_S_00049
	MOVLW 0x02
	MOVWF FCD_PWM0_S_00049_arg_nIdx
	MOVLW 0x80
	MOVWF FCD_PWM0_S_00049_arg_nDuty
	CALL FCD_PWM0_S_00049
	MOVLW 0xE8
	MOVWF FCM_getTro_00041_arg_FCL_TIMEOUT
	MOVLW 0x03
	MOVWF FCM_getTro_00041_arg_FCL_TIMEOUT+D'1'
	CALL FCM_getTro_00041
	MOVF CompTempVarRet2194, W
	MOVWF gbl_FCV_ISTROU
	MOVF gbl_FCV_ISTROU, F
	BZ	label35
	MOVLW 0x01
	MOVWF FCD_PWM0_D_00048_arg_nIdx
	CALL FCD_PWM0_D_00048
	MOVLW 0x02
	MOVWF FCD_PWM0_D_00048_arg_nIdx
	CALL FCD_PWM0_D_00048
	SETF delay_s_00000_arg_del
	CALL delay_s_00000
	SETF delay_s_00000_arg_del
	CALL delay_s_00000
	SETF delay_s_00000_arg_del
	CALL delay_s_00000
	MOVLW 0xEB
	MOVWF delay_s_00000_arg_del
	CALL delay_s_00000
	BRA	label35
label36
	MOVLW 0x01
	MOVWF FCD_PWM0_D_00048_arg_nIdx
	CALL FCD_PWM0_D_00048
	MOVLW 0x02
	MOVWF FCD_PWM0_D_00048_arg_nIdx
	CALL FCD_PWM0_D_00048
	BRA	label35
; } main function end

	ORG 0x00000C0C
_startup
	MOVLW 0xD5
	MOVWF gbl_16_LSR
	MOVLW 0xC4
	MOVWF gbl_16_LSR+D'1'
	MOVLW 0xBB
	MOVWF gbl_16_LSR+D'2'
	MOVLW 0xDC
	MOVWF gbl_16_LSR+D'3'
	CLRF gbl_17_gbl_aSig
	CLRF gbl_17_gbl_aSig+D'1'
	CLRF gbl_17_gbl_aSig+D'2'
	CLRF gbl_17_gbl_aSig+D'3'
	CLRF gbl_17_gbl_bSig
	CLRF gbl_17_gbl_bSig+D'1'
	CLRF gbl_17_gbl_bSig+D'2'
	CLRF gbl_17_gbl_bSig+D'3'
	CLRF gbl_17_gbl_zSig
	CLRF gbl_17_gbl_zSig+D'1'
	CLRF gbl_17_gbl_zSig+D'2'
	CLRF gbl_17_gbl_zSig+D'3'
	CLRF gbl_17_gbl_aExp
	CLRF gbl_17_gbl_bExp
	CLRF gbl_17_gbl_zExp
	CLRF gbl_17_gbl_zExp+D'1'
	CLRF gbl_17_gbl_aSign
	CLRF gbl_17_gbl_bSign
	CLRF gbl_17_gbl_zSign
	CLRF gbl_17_gbl_zSigZero
	CLRF gbl_17_gbl_ret
	CLRF gbl_17_gbl_ret+D'1'
	CLRF gbl_17_gbl_ret+D'2'
	CLRF gbl_17_gbl_ret+D'3'
	CLRF gbl_float_rounding_mode
	CLRF gbl_float_exception_flags
	CLRF gbl_float_detect_tininess
	GOTO	main
	ORG 0x00000C56
interrupt
; { interrupt ; function begin
	MOVFF FSR0H,  Int1Context
	MOVFF FSR0L,  Int1Context+D'1'
	MOVFF PRODH,  Int1Context+D'2'
	MOVFF PRODL,  Int1Context+D'3'
	MOVFF Int1Context+D'3',  PRODL
	MOVFF Int1Context+D'2',  PRODH
	MOVFF Int1Context+D'1',  FSR0L
	MOVFF Int1Context,  FSR0H
	RETFIE 1
; } interrupt function end

	ORG 0x00300000
	DW 0x0E20
	DW 0x1E3E
	DW 0x8100
	DW 0x0081
	DW 0x800F
	DW 0xA00F
	DW 0x000F
	END
