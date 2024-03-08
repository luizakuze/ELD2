.flow.rpt
no diretorio output


--> fitter pode demorar, fazer somente se realmente precisar


Flow report for hamming_distance
Fri Mar  8 09:49:30 2024
Quartus Prime Version 20.1.1 Build 720 11/11/2020 SJ Standard Edition


---------------------
; Table of Contents ;
---------------------
  1. Legal Notice
  2. Flow Summary
  3. Flow Settings
  4. Flow Non-Default Global Settings
  5. Flow Elapsed Time
  6. Flow OS Summary
  7. Flow Log
  8. Flow Messages
  9. Flow Suppressed Messages



----------------
; Legal Notice ;
----------------
Copyright (C) 2020  Intel Corporation. All rights reserved.
Your use of Intel Corporation's design tools, logic functions 
and other software and tools, and any partner logic 
functions, and any output files from any of the foregoing 
(including device programming or simulation files), and any 
associated documentation or information are expressly subject 
to the terms and conditions of the Intel Program License 
Subscription Agreement, the Intel Quartus Prime License Agreement,
the Intel FPGA IP License Agreement, or other applicable license
agreement, including, without limitation, that your use is for
the sole purpose of programming logic devices manufactured by
Intel and sold by Intel or its authorized distributors.  Please
refer to the applicable agreement for further details, at
https://fpgasoftware.intel.com/eula.



+--------------------------------------------------------------------------------------+
; Flow Summary                                                                         ;
+------------------------------------+-------------------------------------------------+
; Flow Status                        ; Successful - Fri Mar  8 09:49:30 2024           ;
; Quartus Prime Version              ; 20.1.1 Build 720 11/11/2020 SJ Standard Edition ;
; Revision Name                      ; hamming_distance                                ;
; Top-level Entity Name              ; hamming_distance                                ;
; Family                             ; Cyclone IV E                                    ;
; Device                             ; EP4CE6E22C7                                     ;
; Timing Models                      ; Final                                           ;
; Total logic elements               ; 9 / 6,272 ( < 1 % )                             ;
;     Total combinational functions  ; 9 / 6,272 ( < 1 % )                             ;
;     Dedicated logic registers      ; 0 / 6,272 ( 0 % )                               ;
; Total registers                    ; 0                                               ;
; Total pins                         ; 13 / 92 ( 14 % )                                ;
; Total virtual pins                 ; 0                                               ;
; Total memory bits                  ; 0 / 276,480 ( 0 % )                             ;
; Embedded Multiplier 9-bit elements ; 0 / 30 ( 0 % )                                  ;
; Total PLLs                         ; 0 / 2 ( 0 % )                                   ;
+------------------------------------+-------------------------------------------------+


+-----------------------------------------+
; Flow Settings                           ;
+-------------------+---------------------+
; Option            ; Setting             ;
+-------------------+---------------------+
; Start date & time ; 03/08/2024 09:48:59 ;
; Main task         ; Compilation         ;
; Revision Name     ; hamming_distance    ;
+-------------------+---------------------+


+------------------------------------------------------------------------------------------------------------------------------------------------+
; Flow Non-Default Global Settings                                                                                                               ;
+-------------------------------------+----------------------------------------+---------------+-------------+-----------------------------------+
; Assignment Name                     ; Value                                  ; Default Value ; Entity Name ; Section Id                        ;
+-------------------------------------+----------------------------------------+---------------+-------------+-----------------------------------+
; COMPILER_SIGNATURE_ID               ; 99781912920174.170990213920778         ; --            ; --          ; --                                ;
; EDA_GENERATE_FUNCTIONAL_NETLIST     ; Off                                    ; --            ; --          ; eda_board_design_timing           ;
; EDA_GENERATE_FUNCTIONAL_NETLIST     ; Off                                    ; --            ; --          ; eda_board_design_boundary_scan    ;
; EDA_GENERATE_FUNCTIONAL_NETLIST     ; Off                                    ; --            ; --          ; eda_board_design_signal_integrity ;
; EDA_GENERATE_FUNCTIONAL_NETLIST     ; Off                                    ; --            ; --          ; eda_board_design_symbol           ;
; EDA_OUTPUT_DATA_FORMAT              ; Vhdl                                   ; --            ; --          ; eda_simulation                    ;
; EDA_SIMULATION_TOOL                 ; ModelSim-Altera (VHDL)                 ; <None>        ; --          ; --                                ;
; EDA_TIME_SCALE                      ; 1 ps                                   ; --            ; --          ; eda_simulation                    ;
; MAX_CORE_JUNCTION_TEMP              ; 85                                     ; --            ; --          ; --                                ;
; MIN_CORE_JUNCTION_TEMP              ; 0                                      ; --            ; --          ; --                                ;
; NOMINAL_CORE_SUPPLY_VOLTAGE         ; 1.2V                                   ; --            ; --          ; --                                ;
; PARTITION_COLOR                     ; -- (Not supported for targeted family) ; --            ; --          ; Top                               ;
; PARTITION_FITTER_PRESERVATION_LEVEL ; -- (Not supported for targeted family) ; --            ; --          ; Top                               ;
; PARTITION_NETLIST_TYPE              ; -- (Not supported for targeted family) ; --            ; --          ; Top                               ;
; POWER_BOARD_THERMAL_MODEL           ; None (CONSERVATIVE)                    ; --            ; --          ; --                                ;
; POWER_PRESET_COOLING_SOLUTION       ; 23 MM HEAT SINK WITH 200 LFPM AIRFLOW  ; --            ; --          ; --                                ;
; PROJECT_OUTPUT_DIRECTORY            ; output_files                           ; --            ; --          ; --                                ;
+-------------------------------------+----------------------------------------+---------------+-------------+-----------------------------------+


+--------------------------------------------------------------------------------------------------------------------------+
; Flow Elapsed Time                                                                                                        ;
+----------------------+--------------+-------------------------+---------------------+------------------------------------+
; Module Name          ; Elapsed Time ; Average Processors Used ; Peak Virtual Memory ; Total CPU Time (on all processors) ;
+----------------------+--------------+-------------------------+---------------------+------------------------------------+
; Analysis & Synthesis ; 00:00:08     ; 1.0                     ; 456 MB              ; 00:00:21                           ;
; Fitter               ; 00:00:04     ; 1.0                     ; 1245 MB             ; 00:00:04                           ;
; Assembler            ; 00:00:01     ; 1.0                     ; 345 MB              ; 00:00:01                           ;
; Timing Analyzer      ; 00:00:01     ; 1.0                     ; 492 MB              ; 00:00:01                           ;
; EDA Netlist Writer   ; 00:00:02     ; 1.0                     ; 590 MB              ; 00:00:00                           ;
; Total                ; 00:00:16     ; --                      ; --                  ; 00:00:27                           ;
+----------------------+--------------+-------------------------+---------------------+------------------------------------+


+---------------------------------------------------------------------------------------------+
; Flow OS Summary                                                                             ;
+----------------------+---------------------+------------------+------------+----------------+
; Module Name          ; Machine Hostname    ; OS Name          ; OS Version ; Processor type ;
+----------------------+---------------------+------------------+------------+----------------+
; Analysis & Synthesis ; TELE-Matlab-Quartus ; Debian GNU/Linux ; 10         ; x86_64         ;
; Fitter               ; TELE-Matlab-Quartus ; Debian GNU/Linux ; 10         ; x86_64         ;
; Assembler            ; TELE-Matlab-Quartus ; Debian GNU/Linux ; 10         ; x86_64         ;
; Timing Analyzer      ; TELE-Matlab-Quartus ; Debian GNU/Linux ; 10         ; x86_64         ;
; EDA Netlist Writer   ; TELE-Matlab-Quartus ; Debian GNU/Linux ; 10         ; x86_64         ;
+----------------------+---------------------+------------------+------------+----------------+


------------
; Flow Log ;
------------
quartus_map --read_settings_files=on --write_settings_files=off hamming_distance -c hamming_distance
quartus_fit --read_settings_files=off --write_settings_files=off hamming_distance -c hamming_distance
quartus_asm --read_settings_files=off --write_settings_files=off hamming_distance -c hamming_distance
quartus_sta hamming_distance -c hamming_distance
quartus_eda --read_settings_files=off --write_settings_files=off hamming_distance -c hamming_distance





















num processors warning -> n foi definido processadores
no exact... localizacao pinos -> 

Critical Warning (169085): No exact pin location assignment(s) for 14 pins of 14 total pins. For the list of pins please refer to the I/O Assignment Warnings table in the fitter report.




Critical Warning (332012): Synopsys Design Constraints File file not found: 'Ckt74161.sdc'. A Synopsys Design Constraints File is required by the Timing Analyzer to get proper timing constraints. Without it, the Compiler will not properly optimize the design.
forma de falar p compilador q quer fazer um restricao de tempo



no mesmo evem ter a mesma tensao

qsf -> pinos trocados 

