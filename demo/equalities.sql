USE example;
SELECT msgid FROM msgs WHERE msgid = 1;
SELECT msgid FROM msgs WHERE msgtext IS NOT NULL;
SELECT msgid FROM msgs WHERE msgtext = "It is me";
SELECT msgid FROM msgs WHERE msgid BETWEEN 1 and 3;
SELECT msgs.subject, msgs.msgtext FROM msgs JOIN is_public ON msgs.msgid = is_public.msgid;
SELECT * FROM msgs WHERE msgid + 10 < 50;