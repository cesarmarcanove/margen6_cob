      ******************************************************************
      * Author: Cesar Marcano
      * Date: Agosto 11 del 2022
      * Purpose: Uso Educativo
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MARGEN5.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 cost PIC S9(10)V99.
       77 sell PIC S9(10)V99.

       77 mar PIC S9(10)V99.
       77 dif PIC 9(10)V99.
       77 ajus PIC S9(10)V99.
       77 resto1 PIC S9(10)V99.
       77 resto2 PIC S9(10)V99.
      * Numero 100
       77 cien PIC 9(3) VALUE 100.

       77 divt1 PIC 9(10)V99.
       77 divt2 PIC 9(10)V99.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
      * Numero 100

            DISPLAY " "
            DISPLAY " Ingrese el precio anterior (COST) : "
            ACCEPT cost.
            DISPLAY " Ingrese el precio actual (SELL) : "
            ACCEPT sell.
      * Cálculo NRO 1: margen de ganancia
            SUBTRACT sell FROM cost GIVING resto1.
            DIVIDE resto1 BY sell GIVING divt1.
            MULTIPLY divt1 BY cien GIVING mar.
      * Calculo NRO 2: margen porcentual
            SUBTRACT sell FROM cost GIVING resto2.
            DIVIDE resto2 BY cost GIVING divt2.
            MULTIPLY divt2 BY cien GIVING ajus.
      * Calculo NRO 3: Diferencia
            SUBTRACT sell FROM cost GIVING dif.

      *  RESULTADOS
            DISPLAY " "
            DISPLAY " El margen de ganancia es de: " mar  " % ".
            DISPLAY "  El margen porcentual es de: " ajus " % ".
            DISPLAY "         La diferencia es de: " dif " Bs.".
            STOP RUN.
      * Pausar Pantalla, equivalentes a "PAUSE", "WAIT", "SLEEP"
            CALL "sleep" USING BY VALUE 120.
            STOP RUN.
       END PROGRAM MARGEN5.
