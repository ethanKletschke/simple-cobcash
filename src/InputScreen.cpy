      *Screen for user input (the "EFT transaction")
       01  SC-Input-Screen
           BACKGROUND-COLOUR 7  *> White
           FOREGROUND-COLOUR 0. *> Black
      *    Clears the terminal screen.
           05 BLANK SCREEN.
      *    Screen heading
           05 LINE 2 COL 3 VALUE 'Funds Transfer'.
           05 LINE 3 COL 3 VALUE '--------------'.
           05 LINE 6 COL 3 VALUE 'Cardholder Name: '.
      *    Cardholder Name input
           05 LINE 6 COL PLUS 1 PIC X(45) USING WS-Holder-Name
              REVERSE-VIDEO *> Reverses the colours of the input field
              REQUIRED. *> Can't continue without filling this field in.
           05 LINE 7 COL 3 VALUE 'PIN: '.
      *    Card PIN number input
           05 LINE 7 COLUMN PLUS 1 PIC 9(5) USING WS-PIN
              REVERSE-VIDEO
              REQUIRED
              SECURE. *> Display input as asterisks
           05 LINE 8 COL 3 VALUE '======================================
      -    '================================'.
           *> TODO -> Finish input screen
