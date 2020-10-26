USE example;

UPDATE msgs SET msgtext = "The subject is lying!", msgid = 4 WHERE msgtext is NULL;
SELECT * FROM msgs;
UPDATE msgs SET msgid = msgid + 1;
SELECT * FROM msgs;