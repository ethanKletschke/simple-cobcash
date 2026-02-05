       IDENTIFICATION DIVISION.
       PROGRAM-ID. CobCash.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT Receipt-File ASSIGN TO "Receipt.txt"
           ORGANISATION SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD  Receipt-File
           REPORT IS Receipt-Report.

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
      *Today's date, for use in the REPORT section.
       01  WS-Date PIC 9999/99/99.
      *Miscellaneous data item for report formatting
       01  WS-Equals-Divider.
           05 FILLER PIC X(45) VALUE ALL "=".
      *Error fields
       01  WS-Error-Values.
           05 WS-Error-Msg PIC X(25) VALUE "Unspecified Error".
           05 WS-Error-Code PIC ZZ9 VALUE 0.

       REPORT SECTION.
       RD  Receipt-Report
           CONTROLS ARE FINAL
           PAGE LIMIT IS 11 LINES
               HEADING 1
               FIRST DETAIL 5
               LAST DETAIL 10.
       01  TYPE IS PAGE HEADING.
           05 LINE PLUS 1.
               10 COL 1 VALUE "CobCash Receipt".
               10 COL 25 PIC 9999/99/99 SOURCE WS-Date.
           05 LINE PLUS 2.
               10 COL 1 PIC X(45) SOURCE WS-Equals-Divider.

       01  TYPE CONTROL FOOTING FINAL.
           05 LINE PLUS 1.
              10 COL 1 VALUE "Cardholder Name:".
              10 COL 25 PIC X(45) SOURCE WS-Holder-Name.
           05 LINE PLUS 1.
              10 COL 1 VALUE "Amt. Owed:".
              10 COL 25 PIC $ZZZ,ZZ9.99 SOURCE WS-Owed.
           05 LINE PLUS 1.
              10 COL 1 VALUE "Amt. Paid:".
              10 COL 25 PIC $ZZZ,ZZ9.99 SOURCE WS-Paid.
           05 LINE PLUS 1.
              10 COL 1 VALUE "Change:".
              10 COL 25 PIC $ZZZ,ZZ9.99 SOURCE WS-Change.
           05 LINE PLUS 2.
              10 COL 1 VALUE "Thank you for your patronage!".

       SCREEN SECTION.
       COPY "InputScreen.cpy".
       COPY "ProcessingScreen.cpy".
       COPY "OutputScreen.cpy".
       COPY "ErrorScreen.cpy".
      D COPY "DebugScreen.cpy".

       PROCEDURE DIVISION.
           INITIALISE WS-Card-Data.
           INITIALISE WS-Date.

           MOVE FUNCTION CURRENT-DATE(1:8)
               TO WS-Date.

           OPEN OUTPUT Receipt-File.
           INITIATE Receipt-Report.

      *    Input
           DISPLAY SC-Input-Screen.
           ACCEPT SC-Input-Screen.

      *    Processing
           DISPLAY SC-Processing-Screen.

           IF WS-Owed > WS-Paid THEN
               MOVE "Insufficient Funds" TO WS-Error-Msg
               MOVE 101 TO WS-Error-Code

               CONTINUE AFTER 2 SECONDS

               DISPLAY SC-Error-Screen
               ACCEPT OMITTED

               TERMINATE Receipt-Report
               CLOSE Receipt-File

               STOP RUN RETURNING 1
           END-IF.

           COMPUTE WS-Change = WS-Paid - WS-Owed.

           MOVE WS-Change TO WS-Disp-Change.
           MOVE WS-Owed TO WS-Disp-Owed.
           MOVE WS-Paid TO WS-Disp-Paid.

           CONTINUE AFTER 2 SECONDS. *> Allows user to see processing screen

           GENERATE Receipt-Report.
           TERMINATE Receipt-Report.

           CLOSE Receipt-File.

           DISPLAY
      *    Display the normal output screen
              SC-Output-Screen 
      *    Overwrite it with the debug screen if compiled with "build-debug.cmd"
      D       SC-Debug-Screen 
           END-DISPLAY.

      *    Press enter to continue
           ACCEPT OMITTED.

      *    Stop program
           STOP RUN.
       END PROGRAM CobCash.
