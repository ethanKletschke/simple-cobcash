       01  SC-Item-Screen
           BACKGROUND-COLOUR 7  *> White
           FOREGROUND-COLOUR 0. *> Black

           05 BLANK SCREEN.

           05 LINE 2 COL 3 VALUE "Items".
           05 LINE 3 COL 3 VALUE "-----".

           05 LINE 5 COL 3 VALUE "Item".
           05 LINE 5 COL + 20 VALUE "Price".
           05 LINE 6 COL 3 VALUE "------------------------------------".

           05 LINE 8 COL 3 USING WS-Items(1).
           05 LINE 8 COL + 20 USING WS-Prices(1).
