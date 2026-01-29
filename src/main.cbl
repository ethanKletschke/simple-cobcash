       IDENTIFICATION DIVISION.
       PROGRAM-ID. CobCash.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
      *Data about the card.
       01  WS-Card-Data.
      *    The cardholder name
           05 WS-Holder-Name PIC X(45).
      *    Card PIN
           05 WS-PIN PIC 9(5).
      *Plain numeric fields for calculating and storing financial data.
       01  WS-Calc-Finances.
      *    Amount Paid (for calculations)
           05 WS-Paid PIC 99999V99 VALUE 0.
      *    Amount owed (for calculations)
           05 WS-Owed PIC 99999V99 VALUE 0.
      *    Change left over (for calculations)
           05 WS-Change PIC 99999V99 VALUE 0.
      *Edited numeric fields for displaying financial data.
       01  WS-Disp-Finances.
      *    Amount Paid (for display)
           05 WS-Disp-Paid PIC $$$,$$9.99 VALUE 0.
      *    Amount Owed (for display)
           05 WS-Disp-Owed PIC $$$,$$9.99 VALUE 0.
      *    Change left over (for display)
           05 WS-Disp-Change PIC $$$,$$9.99 VALUE 0.

       SCREEN SECTION.
       COPY "InputScreen.cpy".
      *> TODO -> Finish output screen
       COPY "ProcessingScreen.cpy".
      *COPY "OutputScreen.cpy".
       COPY "DebugScreen.cpy".

       PROCEDURE DIVISION.
           DISPLAY SC-Input-Screen.
           ACCEPT SC-Input-Screen.

           DISPLAY SC-Processing-Screen.
           CONTINUE AFTER 2 SECONDS.

           DISPLAY SC-Debug-Screen.
           ACCEPT OMITTED.
           STOP RUN.
       END PROGRAM CobCash.
