       01  SC-Item-Screen
           BACKGROUND-COLOUR 7  *> White
           FOREGROUND-COLOUR 0. *> Black

           05 BLANK SCREEN.

           05 LINE 2 COL 3 VALUE "Items".
           05 LINE 3 COL 3 VALUE "-----".

           05 LINE 5 COL 3 VALUE "Item".
           05 LINE 5 COL PLUS 15 VALUE "Price".
           05 LINE 5 COL PLUS 10 VALUE "Quantity".

           05 LINE 6 COL 3 VALUE "------------------------------------".

           05 LINE 8 COL 3 PIC X(20) USING WS-Items(1)
              REVERSE-VIDEO
              REQUIRED.
           05 LINE 8 COL PLUS 15 PIC 999999V99 USING WS-Prices(1).
           05 LINE 8 COL PLUS 10 PIC 999 USING WS-Quantities(1).

           05 LINE 9 COL 3 PIC X(20) USING WS-Items(2).
           05 LINE 9 COL PLUS 15 PIC 999999V99 USING WS-Prices(2).
           05 LINE 9 COL PLUS 10 PIC 999 USING WS-Quantities(2).

           05 LINE 10 COL 3 PIC X(20) USING WS-Items(3).
           05 LINE 10 COL PLUS 15 PIC 999999V99 USING WS-Prices(3).
           05 LINE 10 COL PLUS 10 PIC 999 USING WS-Quantities(3).

           05 LINE 11 COL 3 PIC X(20) USING WS-Items(4).
           05 LINE 11 COL PLUS 15 PIC 999999V99 USING WS-Prices(4).
           05 LINE 11 COL PLUS 10 PIC 999 USING WS-Quantities(4).

           05 LINE 12 COL 3 PIC X(20) USING WS-Items(5).
           05 LINE 12 COL PLUS 15 PIC 999999V99 USING WS-Prices(5).
           05 LINE 12 COL PLUS 10 PIC 999 USING WS-Quantities(5).
