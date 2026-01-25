       IDENTIFICATION DIVISION.
       PROGRAM-ID. CobCash.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
      *Data about the card.
       01  WS-Card-Data.
      *    The cardholder name
           05 WS-Holder-Name PIC X(45).
      *    Card PIN
           05 WS-PIN PIC X(4).
      *Plain numeric fields for calculating and storing financial data.
       01  WS-Calc-Finances.
      *    Amount Paid (for calculations)
           05 WS-Paid PIC 99999V99.
      *    Amount owed (for calculations)
           05 WS-Owed PIC 99999V99.
      *    Change left over (for calculations)
           05 WS-Change PIC 99999v99.
      *Edited numeric fields for displaying financial data.
       01  WS-Disp-Finances.
      *    Amount Paid (for display)
           05 WS-Disp-Paid PIC $$$,$$9.99.
      *    Amount Owed (for display)
           05 WS-Disp-Owed PIC $$$,$$9.99.
      *    Change left over (for display)
           05 WS-Disp-Change PIC $$$,$$9.99.

       PROCEDURE DIVISION.
      *    Placeholder logic
           MOVE 'Ethan K.' TO WS-Holder-Name.
           MOVE 1234 TO WS-PIN.

           MOVE 12345.67 TO WS-Owed.
           MOVE 12346.00 TO WS-Paid.

           COMPUTE WS-Change = WS-Owed - WS-Paid.

           MOVE WS-Owed TO WS-Disp-Owed.
           MOVE WS-Paid TO WS-Disp-Paid.
           MOVE WS-Change TO WS-Disp-Change.

           DISPLAY WS-Disp-Owed.
           DISPLAY WS-Disp-Paid.
           DISPLAY WS-Disp-Change.

           STOP RUN.
       END PROGRAM CobCash.
