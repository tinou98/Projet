;/////////////////////////////////////////////////////////////////////////////////
;// Code Generator: BoostC Compiler - http://www.sourceboost.com
;// Version       : 7.03
;// License Type  : Full License
;// Limitations   : PIC18 max code size:Unlimited, max RAM banks:Unlimited, Non commercial use only
;/////////////////////////////////////////////////////////////////////////////////

	include "P18F4455.inc"
__HEAPSTART                      EQU	0x0000003C ; Start address of heap 
__HEAPEND                        EQU	0x000007FF ; End address of heap 
gbl_status                       EQU	0x00000FD8 ; bytes:1
gbl_prodl                        EQU	0x00000FF3 ; bytes:1
gbl_prodh                        EQU	0x00000FF4 ; bytes:1
gbl_16_LSR                       EQU	0x0000000D ; bytes:4
gbl_float_detect_tininess        EQU	0x00000023 ; bytes:1
gbl_float_rounding_mode          EQU	0x00000024 ; bytes:1
gbl_float_exception_flags        EQU	0x00000025 ; bytes:1
gbl_17_gbl_aSig                  EQU	0x00000011 ; bytes:4
gbl_17_gbl_bSig                  EQU	0x00000015 ; bytes:4
gbl_17_gbl_zSig                  EQU	0x00000019 ; bytes:4
gbl_17_gbl_aExp                  EQU	0x00000026 ; bytes:1
gbl_17_gbl_bExp                  EQU	0x00000027 ; bytes:1
gbl_17_gbl_zExp                  EQU	0x00000021 ; bytes:2
gbl_17_gbl_aSign                 EQU	0x00000028 ; bytes:1
gbl_17_gbl_bSign                 EQU	0x00000029 ; bytes:1
gbl_17_gbl_zSign                 EQU	0x0000002A ; bytes:1
gbl_17_gbl_zSigZero              EQU	0x0000002B ; bytes:1
gbl_17_gbl_ret                   EQU	0x0000001D ; bytes:4
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
gbl_FCV_STOP                     EQU	0x0000002C ; bytes:1
gbl_FCV_LEFT                     EQU	0x0000002D ; bytes:1
gbl_FCV_RIGHT                    EQU	0x0000002E ; bytes:1
gbl_FCV_DROIT                    EQU	0x0000002F ; bytes:1
gbl_FCV_ARRIERE                  EQU	0x00000030 ; bytes:1
gbl_FCV_AVANT                    EQU	0x00000031 ; bytes:1
gbl_FCV_TRUE                     EQU	0x00000032 ; bytes:1
gbl_FCV_FALSE                    EQU	0x00000033 ; bytes:1
gbl_Stepper_263108_pattern       EQU	0x00000005 ; bytes:8
gbl_Stepper_263108_phase         EQU	0x00000034 ; bytes:1
gbl_Stepper_263108_enabled       EQU	0x00000035 ; bytes:1
CompTempVarRet2201               EQU	0x0000003A ; bytes:1
FCM_getTro_00042_arg_FCL_NB      EQU	0x00000036 ; bytes:1
FCM_getTro_00042_1_FCL_VAL       EQU	0x00000037 ; bytes:1
FCM_getTro_00042_1_FCL_TRIG      EQU	0x00000038 ; bytes:1
FCM_getTro_00042_1_FCR_RETVAL    EQU	0x00000039 ; bytes:1
CompTempVarRet2290               EQU	0x0000003A ; bytes:1
CompTempVarRet2291               EQU	0x0000003A ; bytes:1
FCD_ADC2_S_00050_1_old_tris      EQU	0x0000003A ; bytes:1
FCD_ADC2_S_00050_1_cnt           EQU	0x0000003B ; bytes:1
FCD_ADC3_S_00055_1_old_tris      EQU	0x0000003A ; bytes:1
FCD_ADC3_S_00055_1_cnt           EQU	0x0000003B ; bytes:1
FCD_Steppe_0005A_1_pattern_now   EQU	0x00000036 ; bytes:1
delay_ms_00000_arg_del           EQU	0x00000036 ; bytes:1
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
FCD_ADC3_S_00055
; { FCD_ADC3_SampleADC ; function begin
	MOVLW 0x03
	MOVWF gbl_adcon2
	MOVLW 0x05
	MOVWF gbl_adcon1
	MOVF gbl_trisb, W
	MOVWF FCD_ADC3_S_00055_1_old_tris
	MOVLW 0x10
	IORWF gbl_trisb, W
	MOVWF gbl_trisb
	MOVLW 0x25
	MOVWF gbl_adcon0
	CLRF FCD_ADC3_S_00055_1_cnt
label3
	MOVLW 0x28
	CPFSLT FCD_ADC3_S_00055_1_cnt
	BRA	label4
	INCF FCD_ADC3_S_00055_1_cnt, F
	BRA	label3
label4
	MOVLW 0x02
	IORWF gbl_adcon0, W
	MOVWF gbl_adcon0
label5
	BTFSC gbl_adcon0,1
	BRA	label5
	MOVF FCD_ADC3_S_00055_1_old_tris, W
	MOVWF gbl_trisb
	MOVLW 0x0F
	MOVWF gbl_adcon1
	CLRF gbl_adcon0
	RETURN
; } FCD_ADC3_SampleADC function end

	ORG 0x000008C8
FCD_ADC2_S_00050
; { FCD_ADC2_SampleADC ; function begin
	MOVLW 0x03
	MOVWF gbl_adcon2
	MOVLW 0x05
	MOVWF gbl_adcon1
	MOVF gbl_trisb, W
	MOVWF FCD_ADC2_S_00050_1_old_tris
	MOVLW 0x10
	IORWF gbl_trisb, W
	MOVWF gbl_trisb
	MOVLW 0x25
	MOVWF gbl_adcon0
	CLRF FCD_ADC2_S_00050_1_cnt
label6
	MOVLW 0x28
	CPFSLT FCD_ADC2_S_00050_1_cnt
	BRA	label7
	INCF FCD_ADC2_S_00050_1_cnt, F
	BRA	label6
label7
	MOVLW 0x02
	IORWF gbl_adcon0, W
	MOVWF gbl_adcon0
label8
	BTFSC gbl_adcon0,1
	BRA	label8
	MOVF FCD_ADC2_S_00050_1_old_tris, W
	MOVWF gbl_trisb
	MOVLW 0x0F
	MOVWF gbl_adcon1
	CLRF gbl_adcon0
	RETURN
; } FCD_ADC2_SampleADC function end

	ORG 0x00000900
FCD_ADC3_R_00047
; { FCD_ADC3_ReadAsByte ; function begin
	CALL FCD_ADC3_S_00055
	MOVF gbl_adresh, W
	MOVWF CompTempVarRet2291
	RETURN
; } FCD_ADC3_ReadAsByte function end

	ORG 0x0000090A
FCD_ADC2_R_00046
; { FCD_ADC2_ReadAsByte ; function begin
	CALL FCD_ADC2_S_00050
	MOVF gbl_adresh, W
	MOVWF CompTempVarRet2290
	RETURN
; } FCD_ADC2_ReadAsByte function end

	ORG 0x00000914
FCM_getTro_00042
; { FCM_getTrouState ; function begin
	MOVLW 0xE1
	MOVWF FCM_getTro_00042_1_FCL_TRIG
	MOVF FCM_getTro_00042_1_FCL_VAL, F
	BNZ	label15
	CLRF FCM_getTro_00042_1_FCR_RETVAL
	CALL FCD_ADC2_R_00046
	MOVF CompTempVarRet2290, W
	MOVWF FCM_getTro_00042_1_FCL_VAL
	MOVF FCM_getTro_00042_1_FCL_VAL, W
	CPFSGT FCM_getTro_00042_1_FCL_TRIG
	BRA	label9
	BRA	label10
label9
	MOVF gbl_FCV_TRUE, W
	MOVWF FCM_getTro_00042_1_FCR_RETVAL
	BRA	label11
label10
	MOVF gbl_FCV_FALSE, W
	MOVWF FCM_getTro_00042_1_FCR_RETVAL
label11
	MOVF FCM_getTro_00042_1_FCR_RETVAL, F
	BCF STATUS,C
	RLCF FCM_getTro_00042_1_FCR_RETVAL, F
	CALL FCD_ADC3_R_00047
	MOVF CompTempVarRet2291, W
	MOVWF FCM_getTro_00042_1_FCL_VAL
	MOVF FCM_getTro_00042_1_FCL_VAL, W
	CPFSGT FCM_getTro_00042_1_FCL_TRIG
	BRA	label12
	BRA	label13
label12
	MOVF gbl_FCV_TRUE, W
	IORWF FCM_getTro_00042_1_FCR_RETVAL, W
	MOVWF FCM_getTro_00042_1_FCR_RETVAL
	BRA	label14
label13
	MOVF gbl_FCV_FALSE, W
	IORWF FCM_getTro_00042_1_FCR_RETVAL, W
	MOVWF FCM_getTro_00042_1_FCR_RETVAL
label14
	MOVF FCM_getTro_00042_1_FCR_RETVAL, F
	BCF STATUS,C
	RRCF FCM_getTro_00042_1_FCR_RETVAL, F
	BRA	label21
label15
	DECF FCM_getTro_00042_arg_FCL_NB, W
	BZ	label16
	MOVLW 0x02
	CPFSEQ FCM_getTro_00042_arg_FCL_NB
	BRA	label18
	BRA	label17
label16
	CALL FCD_ADC2_R_00046
	MOVF CompTempVarRet2290, W
	MOVWF FCM_getTro_00042_1_FCL_VAL
	BRA	label18
label17
	CALL FCD_ADC3_R_00047
	MOVF CompTempVarRet2291, W
	MOVWF FCM_getTro_00042_1_FCL_VAL
label18
	MOVF FCM_getTro_00042_1_FCL_VAL, W
	CPFSGT FCM_getTro_00042_1_FCL_TRIG
	BRA	label19
	BRA	label20
label19
	MOVF gbl_FCV_TRUE, W
	MOVWF FCM_getTro_00042_1_FCR_RETVAL
	BRA	label21
label20
	MOVF gbl_FCV_FALSE, W
	MOVWF FCM_getTro_00042_1_FCR_RETVAL
label21
	MOVF FCM_getTro_00042_1_FCR_RETVAL, W
	MOVWF CompTempVarRet2201
	RETURN
; } FCM_getTrouState function end

	ORG 0x0000099A
FCD_Steppe_0005C
; { FCD_Stepper0_EnableMotor ; function begin
	MOVLW 0x01
	MOVWF gbl_Stepper_263108_enabled
	BCF gbl_trisd,0
	BCF gbl_portd,0
	BCF gbl_trisd,1
	BCF gbl_portd,1
	BCF gbl_trisd,2
	BCF gbl_portd,2
	BCF gbl_trisd,7
	BCF gbl_portd,7
	RETURN
; } FCD_Stepper0_EnableMotor function end

	ORG 0x000009B0
FCD_Steppe_0005A
; { FCD_Stepper0_IncrementStep ; function begin
	MOVF gbl_Stepper_263108_enabled, F
	BTFSC STATUS,Z
	RETURN
	INCF gbl_Stepper_263108_phase, W
	MOVWF gbl_Stepper_263108_phase
	MOVLW 0x07
	ANDWF gbl_Stepper_263108_phase, F
	LFSR 0x00, gbl_Stepper_263108_pattern
	MOVF FSR0L, W
	MOVF gbl_Stepper_263108_phase, W
	ADDWF FSR0L, F
	MOVF INDF0, W
	MOVWF FCD_Steppe_0005A_1_pattern_now
	BTFSS FCD_Steppe_0005A_1_pattern_now,0
	BRA	label22
	BSF gbl_portd,0
	BRA	label23
label22
	BCF gbl_portd,0
label23
	BTFSS FCD_Steppe_0005A_1_pattern_now,1
	BRA	label24
	BSF gbl_portd,1
	BRA	label25
label24
	BCF gbl_portd,1
label25
	BTFSS FCD_Steppe_0005A_1_pattern_now,2
	BRA	label26
	BSF gbl_portd,2
	BRA	label27
label26
	BCF gbl_portd,2
label27
	BTFSS FCD_Steppe_0005A_1_pattern_now,3
	BRA	label28
	BSF gbl_portd,7
	RETURN
label28
	BCF gbl_portd,7
	RETURN
; } FCD_Stepper0_IncrementStep function end

	ORG 0x000009F6
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
	CLRF gbl_FCV_STOP
	MOVLW 0x01
	MOVWF gbl_FCV_AVANT
	MOVLW 0x02
	MOVWF gbl_FCV_ARRIERE
	CLRF gbl_FCV_DROIT
	MOVLW 0xA6
	MOVWF gbl_FCV_LEFT
	MOVLW 0x5A
	MOVWF gbl_FCV_RIGHT
	MOVF gbl_FCV_TRUE, F
	BZ	label30
	CALL FCD_Steppe_0005C
label29
	CALL FCD_Steppe_0005A
	MOVLW 0x32
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	BRA	label29
label30
	CLRF FCM_getTro_00042_arg_FCL_NB
	CALL FCM_getTro_00042
	BRA	label30
; } main function end

	ORG 0x00000A38
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
	MOVLW 0x09
	MOVWF gbl_Stepper_263108_pattern
	MOVLW 0x01
	MOVWF gbl_Stepper_263108_pattern+D'1'
	MOVLW 0x05
	MOVWF gbl_Stepper_263108_pattern+D'2'
	MOVLW 0x04
	MOVWF gbl_Stepper_263108_pattern+D'3'
	MOVLW 0x06
	MOVWF gbl_Stepper_263108_pattern+D'4'
	MOVLW 0x02
	MOVWF gbl_Stepper_263108_pattern+D'5'
	MOVLW 0x0A
	MOVWF gbl_Stepper_263108_pattern+D'6'
	MOVLW 0x08
	MOVWF gbl_Stepper_263108_pattern+D'7'
	CLRF gbl_Stepper_263108_phase
	CLRF gbl_Stepper_263108_enabled
	GOTO	main
	ORG 0x00000AA6
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
