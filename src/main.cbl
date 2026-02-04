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
           05 WS-Disp-Paid PIC $$$$,$$9.99 VALUE 0.
      *    Amount Owed (for display)
           05 WS-Disp-Owed PIC $$$$,$$9.99 VALUE 0.
      *    Change left over (for display)
           05 WS-Disp-Change PIC $$$$,$$9.99 VALUE 0.

      *Error fields
       01  WS-Error-Values.
           05 WS-Error-Msg PIC X(25) VALUE 'Unspecified Error'.
           05 WS-Error-Code PIC ZZ9 VALUE 0.

       SCREEN SECTION.
       COPY "InputScreen.cpy".
       COPY "ProcessingScreen.cpy".
       COPY "OutputScreen.cpy".
       COPY "ErrorScreen.cpy".
      D COPY "DebugScreen.cpy".

       PROCEDURE DIVISION.
           INITIALISE WS-Card-Data.
           INITIALISE WS-Calc-Finances WITH FILLER.
           INITIALISE WS-Disp-Finances WITH FILLER.
           INITIALISE WS-Error-Values WITH FILLER.

      *    Input
           DISPLAY SC-Input-Screen.
           ACCEPT SC-Input-Screen.

      *    Processing
           DISPLAY SC-Processing-Screen.

           IF WS-Owed > WS-Paid THEN
               MOVE "Insufficient Funds" TO WS-Error-Msg.
               MOVE 101 TO WS-Error-Code.

               CONTINUE AFTER 2 SECONDS.

               DISPLAY SC-Error-Screen.
               ACCEPT OMITTED.

               STOP RUN RETURNING 1.

           COMPUTE WS-Change = WS-Owed - WS-Paid.

           MOVE WS-Change TO WS-Disp-Change.
           MOVE WS-Owed TO WS-Disp-Owed.
           MOVE WS-Paid TO WS-Disp-Paid.

           CONTINUE AFTER 2 SECONDS. *> Allows user to see processing screen

           DISPLAY
      *    Display the normal output screen
              SC-Output-Screen 
      *    Overwrite it with the debug screen if compiled with "build-debug.cmd"
      D       SC-Debug-Screen 
           END-DISPLAY.

           ACCEPT OMITTED.

      *    Stop program
           STOP RUN.
       END PROGRAM CobCash.
