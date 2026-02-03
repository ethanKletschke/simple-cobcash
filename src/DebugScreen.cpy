      *Screen for debug output
       01  SC-Debug-Screen.
           05 BLANK SCREEN.
           05 LINE 2 COL 3 VALUE "Debug Screen. Press Enter to Exit.".

      *    Headers for the table
           05 LINE 4 COL 5 VALUE "Variable".
           05 LINE 5 COL 5 VALUE "________".

           05 LINE 4 COL 25 VALUE "Value".
           05 LINE 5 COL 25 VALUE "________".

      *    Table data
           05 LINE 6 COL 5 VALUE "WS-Holder-Name". 
           05 LINE 6 COL 25 PIC X(45) USING WS-Holder-Name.

           05 LINE 7 COL 5 VALUE "WS-PIN".
           05 LINE 7 COL 25 PIC 9(5) USING WS-PIN.

           05 LINE 8 COL 5 VALUE "WS-Paid".
           05 LINE 8 COL 25 PIC 99999V99 USING WS-Paid.

           05 LINE 9 COL 5 VALUE "WS-Disp-Paid".
           05 LINE 9 COL 25 PIC $$$,$$9.99 USING WS-Disp-Paid.

           05 LINE 10 COL 5 VALUE "WS-Owed". 
           05 LINE 10 COL 25 PIC 99999V99 USING WS-Owed.

           05 LINE 11 COL 5 VALUE "WS-Disp-Owed".
           05 LINE 11 COL 25 PIC $$$,$$9.99 USING WS-Disp-Owed. 

           05 LINE 12 COL 5 VALUE "WS-Change".
           05 LINE 12 COL 25 PIC 99999V99 USING WS-Change.

           05 LINE 13 COL 5 VALUE "WS-Disp-Change".
           05 LINE 13 COL 25 PIC $$$,$$9.99 USING WS-Disp-Change.
